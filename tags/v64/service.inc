<?php

/* 
**  ========
**  WARQUEST
**  ========
**
**  Created by wplaat
**
**  For more information visit the following website.
**  Website : www.plaatsoft.nl 
**
**  Or send an email to the following address.
**  Email   : info@plaatsoft.nl
**
**  All copyrights reserved (c) 2008-2014 PlaatSoft
*/

/*
** ---------
** POST
** ---------
*/

$eid = warquest_post('eid', 0);
if ($eid==0) {
	$eid = warquest_get('eid', 0);
}

$id = warquest_post('id', 0);
if ($id==0) {
	$id = warquest_get('id', 0);
}

/*
** ---------
** UTILS
** ---------
*/

function xml_encode($array, $root, $indent=false, $i=0) {

	if(!$i) {
		$data = '<?xml version="1.0" encoding="utf-8"?>'.($indent?"\r\n":'').'<'.$root.'>'.($indent?"\r\n":'');	
	} else {
		$data = '';
	}
	foreach($array as $k=>$v) {
		if(is_numeric($k)) {
          $k = 'item';
      }
      $data .= ($indent?str_repeat("\t", $i):'').'<'.$k.'>';
      if(is_array($v)) {
         $data .= ($indent?"\r\n":'').xml_encode($v, $indent, ($i+1)).($indent?str_repeat("\t", $i):'');
      } else {
         $data .= $v;
      }
      $data .= '</'.$k.'>'.($indent?"\r\n":'');
   }
   if(!$i) {
      $data .= '</'.$root.'>';
   }
   return $data;
}


/*
** ---------
** ACTIONS
** ---------
*/

/**
 * Get sector data
 */
function warquest_get_sector_event() {

	global $id;
	
	$query  = 'select a.x, a.y, a.cid, a.damage, ';
	$query .= '(select b.name from clan b where b.cid=a.cid ) as name ';
	$query .= 'from sector a where a.planet='.$id;	
	
	$result = warquest_db_query($query);
		
	$cell = array();
		
	while ($data = warquest_db_fetch_object($result)) {		
		
		if (isset($data->name)) {
		
			$cell[] = array(
				'x' 		=> $data->x,
				'y' 		=> $data->y,
				'cid' 	=> $data->cid,
				'damage' => $data->damage,
				'name' 	=> $data->name );
		} 
	}	
	
	header("Content-type: application/json; charset=utf-8");
	
	echo json_encode($cell);
}

/**
 * Get clan data
 */
function warquest_get_clan_event() {

	global $id;
	
	$data = warquest_db_clan($id);
	
	if ( !isset($data->cid)) {		
	
		$data = array();	
	}
	
	header("Content-type: application/json; charset=utf-8");
	
	echo json_encode($data);
}

/** 
 * Proces facebook like event 
 */
function warquest_fb_like_event() {

	global $id;
	
	$player = warquest_db_player($id);
	
	if ( isset($player->pid) && (warquest_db_bonus($player->pid, BONUS_FACEBOOK_LIKE)==0) ) {
	
		warquest_db_bonus_insert($player->pid, BONUS_FACEBOOK_LIKE);
	
		$player->gold += 500;
		warquest_db_player_update($player);
		
		$log = $player->name.' ['.$player->pid.'] facebook like bonus - 500 gold added';
		warquest_info($log);
	}
}

/**
 * Get player data
 */
function warquest_get_player_event() {

	global $id;
		
	$data = warquest_db_player($id);

	if ( isset($data->pid)) {	

		$data->money_date = warquest_xml_date($data->money_date);
		$data->energy_date = warquest_xml_date($data->energy_date);
		$data->health_date = warquest_xml_date($data->health_date);
		$data->ammo_date = warquest_xml_date($data->ammo_date);
		
		$data->last_battle = warquest_xml_date($data->last_battle);
		$data->bonus_date = warquest_xml_date($data->bonus_date);
		$data->request_date = warquest_xml_date($data->request_date);
		$data->restore_health = warquest_xml_date($data->restore_health);
		$data->restore_energy = warquest_xml_date($data->restore_energy);
		$data->restore_ammo = warquest_xml_date($data->restore_ammo);
		$data->cease_fire_date = warquest_xml_date($data->cease_fire_date);
		$data->holiday_date = warquest_xml_date($data->holiday_date);
				
	} else {
	
		$data = array();	
	} 
	
	$xml = xml_encode($data, "player", false);
	
	/* Validate XML against XSD */
	$dom = new DOMDocument();
	$dom->loadXML($xml);
	if (!$dom->schemaValidate('service\warquest.xsd') ){
		echo "XSD Validation Error";		
	} else {
		header("Content-type: text/xml; charset=utf-8");			
		echo $xml;
	}
}

/*
** ---------
** HANDLER
** ---------
*/

function warquest_service() {

	global $eid;
		
	/* Update request counter */
	warquest_db_player_login_counter(1);
	
	/* Event handler */
	switch ($eid) {
		
		case EVENT_GET_SECTOR: 	
			warquest_get_sector_event();
			break;
			
		case EVENT_GET_CLAN: 	
			warquest_get_clan_event();
			break;
			
		case EVENT_FB_LIKE: 	
			warquest_fb_like_event();
			break;

		case EVENT_GET_PLAYER:
			warquest_get_player_event();
			break;
	}
}

/*
** ---------
** THE END
** ---------
*/

?>