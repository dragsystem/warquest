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
**  All copyrights reserved (c) 2008-2013 PlaatSoft
*/

/*
** ------------------
** ACTIONS
** ------------------
*/

function warquest_trade_do() {
	
	/* input */
	global $uid;
	global $mid;
	global $sid;
	global $config;
	global $skill;
	global $amount;
	
	/* output */
	global $player;
	global $popup;
	
		
	if ($amount > $skill->trade_points) {
				
		$message = t('HOME_TRADE_NO_POINTS', $amount);
		$popup .= warquest_box_icon("warning", $message);
		
	} else if (($uid==1) && ($skill->health_timer>=$config['max_health_reduction'])) {
	
		$message = t('HOME_TRADE_HEALTH_TIMER_TO_LARGE');
		$popup .= warquest_box_icon("warning", $message);
		
	} else if (($uid==2) && ($skill->energy_timer>=$config['max_energy_reduction'])) {
		
		$message = t('HOME_TRADE_ENERGY_TIMER_TO_LARGE');
		$popup .= warquest_box_icon("warning", $message);
		
	} else if (($uid==3) && ($skill->ammo_timer>=$config['max_ammo_reduction'])) {
		
		$message = t('HOME_TRADE_AMMO_TIMER_TO_LARGE');
		$popup .= warquest_box_icon("warning", $message);
		
	} else {
		
		$skill->trade_points -= $amount;
		
		switch ($uid) {
		
			case 1: 	$skill->health_timer+=$amount;
						$max = $config['max_health_reduction'] - $skill->health_timer; 
						break;
						
			case 2: 	$skill->energy_timer+=$amount;
						$max = $config['max_energy_reduction'] - $skill->energy_timer; 
						break;
						
			case 3: 	$skill->ammo_timer+=$amount;
						$max = $config['max_ammo_reduction'] - $skill->ammo_timer; 
						break;
						
			case 4:  $player->money += (10000000000 * $amount);
						$max = $skill->trade_points;
						break;
						
			case 5:	$skill->skill_points += (2 * $amount);
						$max = $skill->trade_points;
						break;
		}
		warquest_db_skill_update($skill);	
				
		$message = t('HOME_TRADE_SUCCESFULL');
		$link = warquest_link('mid='.$mid.'&sid='.$sid.'&eid=20&uid='.$uid, t('HOME_TRADE_IN'), "trade");
		
		if ($max > $skill->trade_points) {
			$max = $skill->trade_points;
		}
		
		if ($skill->trade_points>0) {
			$link .= '<br/><br/>'.t('GENERAL_AMOUNT').'<br/>';		
			$link .= warquest_amount_selected($max);
		}
		
		$popup .= warquest_box_icon("info", $message, $link);
	}
}

/*
** ------------------
** UI
** ------------------
*/

function warquest_trade_form() {

	/* input */
	global $mid;
	global $sid;
	global $config;
	global $player;
	global $skill;

	/* output */ 
	global $page;
	global $title;
	
	$title = t('HOME_TRADE_TITLE1');
	
	$page .= '<div class="subparagraph">'.t('HOME_TRADE_TITLE2', $skill->trade_points).'</div>';
			
	$page .= '<div class="box">';
	
	$page .= '<br/>';	
	
	$page .= '<table>';
			
	/* -------------------------------------------------------------------- */
	
	$page .= '<tr>';
	$page .= '<td width="170">';	
	$page .= warquest_image("trade/trade1.jpg",' width="155" height="120" ');
	$page .= '</td>';
	
	$page .= '<td width="330" valign="top" >';
	
	$page .= '<div class="right">';
	$page .= warquest_link('mid='.$mid.'&sid='.$sid.'&eid=20&uid=1', t('HOME_TRADE_IN'), "trade1");
	$page .= '</div>';
		
	$page .= '<div class="subparagraph">';
	$page .= '<b>'.t('HOME_TRADE1').'</b>';
	$page .= '</div>';
		
	$page .= '<i>'.t('HOME_TRADE1_NOTE').'</i>';
	$page .= '<br/><br/>';	
			
	$tmp = $config["init_health_timer"] - ($skill->health_timer * 5);	
	$page .= t('HOME_TRADE_CONDITION').': '.level_format($tmp);
	$page .= t('AGO_SECS');	
	$page .= '<br/>';

	$tmp = $config['init_health_timer']-($config['max_health_reduction']*5);
	$page .= t('HOME_TRADE_MINIMAL').': '.level_format($tmp);
	$page .= t('AGO_SECS');	
	$page .= '<br/>';
	
	$page .= '</td>';
	$page .= '</tr>';	
		
	$page .= '<tr>';
	$page .= '<td colspan="2"><hr></td>';
	$page .= '</tr>';

	/* -------------------------------------------------------------------- */
	
	$page .= '<tr>';
	$page .= '<td width="170">';	
	$page .= warquest_image("trade/trade2.jpg",' width="155" height="120" ');
	$page .= '</td>';
	
	$page .= '<td width="330" valign="top" >';
	
	$page .= '<div class="right">';
	$page .= warquest_link('mid='.$mid.'&sid='.$sid.'&eid=20&uid=2', t('HOME_TRADE_IN'), "trade2");
	$page .= '</div>';
		
	$page .= '<div class="subparagraph">';
	$page .= '<b>'.t('HOME_TRADE2').'</b>';
	$page .= '</div>';
		
	$page .= '<i>'.t('HOME_TRADE2_NOTE').'</i>';
	$page .= '<br/><br/>';	
	
	$tmp = $config["init_energy_timer"] - ($skill->energy_timer * 5); 		
	$page .= t('HOME_TRADE_CONDITION').': '.level_format($tmp);
	$page .= t('AGO_SECS');	
	$page .= '<br/>';
	
	$tmp = $config['init_energy_timer']-($config['max_energy_reduction']*5);
	$page .= t('HOME_TRADE_MINIMAL').': '.level_format($tmp);
	$page .= t('AGO_SECS');	
	$page .= '<br/>';
	
	$page .= '</td>';
	$page .= '</tr>';	
		
	$page .= '<tr>';
	$page .= '<td colspan="2"><hr></td>';
	$page .= '</tr>';

	/* -------------------------------------------------------------------- */
	
	$page .= '<tr>';
	$page .= '<td width="170">';	
	$page .= warquest_image("trade/trade3.jpg",' width="155" height="120" ');
	$page .= '</td>';
	
	$page .= '<td width="330" valign="top" >';
	
	$page .= '<div class="right">';
	$page .= warquest_link('mid='.$mid.'&sid='.$sid.'&eid=20&uid=3', t('HOME_TRADE_IN'), "trade3");
	$page .= '</div>';
		
	$page .= '<div class="subparagraph">';
	$page .= '<b>'.t('HOME_TRADE3').'</b>';
	$page .= '</div>';
		
	$page .= '<i>'.t('HOME_TRADE3_NOTE').'</i>';
	$page .= '<br/><br/>';	
	
	$tmp = $config["init_ammo_timer"] - ($skill->ammo_timer * 5);		
	$page .= t('HOME_TRADE_CONDITION').': '.level_format($tmp);	
	$page .= t('AGO_SECS');	
	$page .= '<br/>';
	
	$tmp = $config['init_ammo_timer']-($config['max_ammo_reduction']*5);
	$page .= t('HOME_TRADE_MINIMAL').': '.level_format($tmp);
	$page .= t('AGO_SECS');	
	$page .= '<br/>';
	
	$page .= '</td>';
	$page .= '</tr>';

	$page .= '<tr>';
	$page .= '<td colspan="2"><hr></td>';
	$page .= '</tr>';		
	
	/* -------------------------------------------------------------------- */
	
	$page .= '<tr>';
	$page .= '<td width="170">';	
	$page .= warquest_image("trade/trade4.jpg",' width="155" height="120" ');
	$page .= '</td>';
	
	$page .= '<td width="330" valign="top" >';
	
	$page .= '<div class="right">';
	$page .= warquest_link('mid='.$mid.'&sid='.$sid.'&eid=20&uid=4', t('HOME_TRADE_IN'), "trade4");
	$page .= '</div>';
		
	$page .= '<div class="subparagraph">';
	$page .= '<b>'.t('HOME_TRADE4').'</b>';
	$page .= '</div>';
		
	$page .= '<i>'.t('HOME_TRADE4_NOTE', money_format1(10000000000)).'</i>';
	$page .= '<br/><br/>';		
	$page .= t('HOME_TRADE_CONDITION').': '.money_format1($player->money).' '.t('GENERAL_DOLLAR');
			
	$page .= '</td>';
	$page .= '</tr>';	
		
	$page .= '<tr>';
	$page .= '<td colspan="2"><hr></td>';
	$page .= '</tr>';
	
		/* -------------------------------------------------------------------- */
	
	$page .= '<tr>';
	$page .= '<td width="170">';	
	$page .= warquest_image("trade/trade5.jpg",' width="155" height="120" ');
	$page .= '</td>';
	
	$page .= '<td width="330" valign="top" >';
	
	$page .= '<div class="right">';
	$page .= warquest_link('mid='.$mid.'&sid='.$sid.'&eid=20&uid=5', t('HOME_TRADE_IN'), "trade5");
	$page .= '</div>';
		
	$page .= '<div class="subparagraph">';
	$page .= '<b>'.t('HOME_TRADE5').'</b>';
	$page .= '</div>';
		
	$page .= '<i>'.t('HOME_TRADE5_NOTE').'</i>';
	$page .= '<br/><br/>';	
	$page .= t('HOME_TRADE_CONDITION').': '.level_format($skill->skill_points).' '.t('HOME_TRADE_SKILL_POINTS');
		
	$page .= '</td>';
	$page .= '</tr>';
					
	/* -------------------------------------------------------------------- */
	
	$page .= '</table>';	
	$page .= '</div>';
	
	$page .= '<p>';
	$page .= '<div class="note">'.t('HOME_TRADE_NOTE').'</div>';
	$page .=  '</p>';
}

/*
** ------------------
** HANDLER
** ------------------
*/

function warquest_trade_event() {
	
	/* input	*/
	global $eid;
				
	switch ($eid) {
										
		case 20:
			warquest_trade_do();
			break;					
	}	
}



?>