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
** ---------------------------------------------------------------- 
** HELP
** ---------------------------------------------------------------- 
*/

/*
** ---------------------
** ABOUT & CREDITS
** ---------------------
*/

function warquest_help_about_form() {

	/* output */
	global $page;
	global $output;
	
	$output->title = t('HELP_ABOUT_SUBTITLE');
	
	$page .= '<div class="subparagraph">'.t('HELP_ABOUT_SUBTITLE').'</div>';
	
	$page .= '<div class="box">';
	
	$page .= '<div class="right">';
	$page .= warquest_image('other/info.png', 'width="64" heigth="64"');
	$page .= '</div>';
	
	$page .= '<span class="subparagraph2">'.t('HELP_BACKGROUND_TITLE').'</span><br/>';
	$page .= t('HELP_BACKGROUND').'<br/>';	
	$page .= '<br/>';	
		
	$page .= '<span class="subparagraph2">'.t('HELP_BROWSERS_TITLE').'</span><br/>';
	$page .= '- Microsoft Internet Explorer 10.x and higher<br/>';
	$page .= '- Mozilla Firefox 3.x and higher<br/>';
	$page .= '- Apple Safari 5.x and higher<br/>';
	$page .= '- Opera 11.x and higher<br/>';
	$page .= '- Google Chrome 10.x and higher<br/>';
	$page .= '<br/>';	

	$page .= '<span class="subparagraph2">'.t('HELP_DISCLAIMER_TITLE').'</span><br/>';
	$page .= t('HELP_DISCLAIMER');

	$page .= '</div>';	
	
	$page .= '<div class="subparagraph">'.t('HELP_CREDITS_TITLE').'</div>';
	
	$page .= '<div class="box">';
	
	$page .= '<div class="right">';
	$page .= warquest_image('other/info.png', 'width="64" heigth="64"');
	$page .= '</div>';

	$page .= t('HELP_CREDITS');
	$page .= '<br/><br/>';
	
	$page .= '<span class="subparagraph2">'.t('HELP_CREDITS_ARCHITECT').'</span><br/>';
	$page .= 'admin<br/>';
	$page .= '<br/>';
	
	$page .= '<span class="subparagraph2">'.t('HELP_CREDITS_DEVELOPERS').'</span><br/>';
	$page .= 'admin<br/>';
	$page .= '<br/>';
	
	$page .= '<span class="subparagraph2">'.t('HELP_CREDITS_GRAPHICS').'</span><br/>';
	$page .= 'admin, Google, wikipedia.org, about.com<br/>';
	$page .= '<br/>';
		
	$page .= '<span class="subparagraph2">'.t('HELP_CREDITS_TRANSLATORS').'</span><br/>';
	$page .= '<b>(Dutch)</b> admin, SuperT<br/>';
	$page .= '<b>(English)</b> admin, suave, Aston, Mongoose, ZennCore, K4BOOM<br/>';
	$page .= '<b>(German)</b> TestBoy<br/>';
	$page .= '<b>(Italian)</b> ZennCore<br/>';
	$page .= '<b>(Romanian)</b> Prepa<br/>';
	$page .= '<b>(Spanish)</b> Algarrobo<br/>';
	$page .= '<br/>';
	
	$page .= '<span class="subparagraph2">'.t('HELP_CREDITS_TESTERS').'</span><br/>';
	$page .= 'admin, SuperT, b.b.b., Sander, Mister Ono, Mongoose<br/>';
	$page .= '<br/>';	

	$page .= '<span class="subparagraph2">'.t('HELP_CREDITS_OTHER').'</span><br/>';
	$page .= t('HELP_CREDITS_OTHER_NOTE');
	$page .= '<br/>';
		
	$page .= '</div>';		

	warquest_sound('about.mp3' ,1);	
}

/*
** ---------------------
** STATISTICS
** ---------------------
*/

function warquest_help_graphs($first, $last) {
			
	include "graph.php";
			
	$query  = 'select DATE_FORMAT(date,"%e-%m") as day_nr, players, requests, logins, fights, missions, gold, casino ';
	$query .= 'from statistics where date between "'.date("Y-m-d", $first).'" ';
	$query .= ' and "'.date("Y-m-d", $last).'" order by date asc';
			
	$result = warquest_db_query($query);	
	
	$players = array();
	$requests = array();
	$logins = array();
	$fights = array();
	$missions = array();
	$gold = array();
	$casino = array();

	$count = 0;
	while ($data=warquest_db_fetch_object($result)) {	
		
		if ($count++>0) {
			$players[$data->day_nr]=$data->players-$tmp1;
			$requests[$data->day_nr]=$data->requests-$tmp2;
			$fights[$data->day_nr]=$data->fights-$tmp3;
			$logins[$data->day_nr]=$data->logins;
			$missions[$data->day_nr]=$data->missions-$tmp4;	
			$gold[$data->day_nr]=$data->gold;	
			$casino[$data->day_nr]=$data->casino-$tmp6;	
		}
		
		$tmp1=$data->players;
		$tmp2=$data->requests;
		$tmp3=$data->fights;
		$tmp4=$data->missions;
		$tmp5=$data->gold;
		$tmp6=$data->casino;
	}
	
	/* New Players Graph */
	$graph1 = new PHPGraphLib(490,320, 'graph/newplayers.png');
	$graph1->addData($players);

	$graph1->setBars(false);
	$graph1->setLine(true);
	$graph1->setDataPoints(true);
	$graph1->setDataValues(true);
	$graph1->setLegend(false);
	$graph1->setXValues(true);
	$graph1->setYValues(true);
	$graph1->setGrid(true);
	
	$graph1->setBackgroundColor("black");
	$graph1->setGridColor('gray');
	$graph1->setupXAxis(12, 'gray');
	$graph1->setupYAxis(12, 'gray');
	$graph1->setTextColor('white');
	$graph1->setLineColor('yellow');
	$graph1->setDataValueColor('yellow');
	$graph1->setDataPointColor('yellow');
		
	$graph1->createGraph();
	
	/* Request Graph */
	
	$graph2 = new PHPGraphLib(490,320, 'graph/requests.png');
	$graph2->addData($requests);

	$graph2->setBars(false);
	$graph2->setLine(true);
	$graph2->setDataPoints(true);
	$graph2->setDataValues(true);
	$graph2->setLegend(false);
	$graph2->setXValues(true);
	$graph2->setYValues(true);
	$graph2->setGrid(true);
	
	$graph2->setBackgroundColor("black");
	$graph2->setGridColor('gray');
	$graph2->setupXAxis(12, 'gray');
	$graph2->setupYAxis(12, 'gray');
	$graph2->setTextColor('white');
	$graph2->setLineColor('yellow');
	$graph2->setDataValueColor('yellow');
	$graph2->setDataPointColor('yellow');
		
	$graph2->createGraph();
	
	/* Logins graph */
	
	$graph3 = new PHPGraphLib(490,320, 'graph/logins.png');
	$graph3->addData($logins);

	$graph3->setBars(false);
	$graph3->setLine(true);
	$graph3->setDataPoints(true);
	$graph3->setDataValues(true);
	$graph3->setLegend(false);
	$graph3->setXValues(true);
	$graph3->setYValues(true);
	$graph3->setGrid(true);
	
	$graph3->setBackgroundColor("black");
	$graph3->setGridColor('gray');
	$graph3->setupXAxis(12, 'gray');
	$graph3->setupYAxis(12, 'gray');
	$graph3->setTextColor('white');
	$graph3->setLineColor('yellow');
	$graph3->setDataValueColor('yellow');
	$graph3->setDataPointColor('yellow');
		
	$graph3->createGraph();
	
	/* Fights graph */
	
	$graph4 = new PHPGraphLib(490,320, 'graph/fights.png');
	$graph4->addData($fights);

	$graph4->setBars(false);
	$graph4->setLine(true);
	$graph4->setDataPoints(true);
	$graph4->setDataValues(true);
	$graph4->setLegend(false);
	$graph4->setXValues(true);
	$graph4->setYValues(true);
	$graph4->setGrid(true);
	
	$graph4->setBackgroundColor("black");
	$graph4->setGridColor('gray');
	$graph4->setupXAxis(12, 'gray');
	$graph4->setupYAxis(12, 'gray');
	$graph4->setTextColor('white');
	$graph4->setLineColor('yellow');
	$graph4->setDataValueColor('yellow');
	$graph4->setDataPointColor('yellow');
		
	$graph4->createGraph();
	
	/* Missions graph */
	
	$graph5 = new PHPGraphLib(490,320, 'graph/missions.png');
	$graph5->addData($missions);

	$graph5->setBars(false);
	$graph5->setLine(true);
	$graph5->setDataPoints(true);
	$graph5->setDataValues(true);
	$graph5->setLegend(false);
	$graph5->setXValues(true);
	$graph5->setYValues(true);
	$graph5->setGrid(true);
	
	$graph5->setBackgroundColor("black");
	$graph5->setGridColor('gray');
	$graph5->setupXAxis(12, 'gray');
	$graph5->setupYAxis(12, 'gray');
	$graph5->setTextColor('white');
	$graph5->setLineColor('yellow');
	$graph5->setDataValueColor('yellow');
	$graph5->setDataPointColor('yellow');
		
	$graph5->createGraph();
			
	/* Casino played graph */
	
	$graph6 = new PHPGraphLib(490,320, 'graph/casino.png');
	$graph6->addData($casino);

	$graph6->setBars(false);
	$graph6->setLine(true);
	$graph6->setDataPoints(true);
	$graph6->setDataValues(true);
	$graph6->setLegend(false);
	$graph6->setXValues(true);
	$graph6->setYValues(true);
	$graph6->setGrid(true);
	
	$graph6->setBackgroundColor("black");
	$graph6->setGridColor('gray');
	$graph6->setupXAxis(12, 'gray');
	$graph6->setupYAxis(12, 'gray');
	$graph6->setTextColor('white');
	$graph6->setLineColor('yellow');
	$graph6->setDataValueColor('yellow');
	$graph6->setDataPointColor('yellow');
	
	$graph6->createGraph();
	
	
	/* Gold graph */
	
	$graph7 = new PHPGraphLib(490,320, 'graph/gold.png');
	$graph7->addData($gold);

	$graph7->setBars(false);
	$graph7->setLine(true);
	$graph7->setDataPoints(true);
	$graph7->setDataValues(true);
	$graph7->setLegend(false);
	$graph7->setXValues(true);
	$graph7->setYValues(true);
	$graph7->setGrid(true);
	
	$graph7->setBackgroundColor("black");
	$graph7->setGridColor('gray');
	$graph7->setupXAxis(12, 'gray');
	$graph7->setupYAxis(12, 'gray');
	$graph7->setTextColor('white');
	$graph7->setLineColor('yellow');
	$graph7->setDataValueColor('yellow');
	$graph7->setDataPointColor('yellow');
	
	$graph7->createGraph();
}


function warquest_help_stats_form() {

	/* input */
	global $offset;
	
	$limit = 31;
	$total = warquest_db_statistics_count();
	
	/* output */
	global $page;
	global $output;
		
	warquest_cron_statistics(1);
	
	$first = mktime(0,0,0,date("m"),date("d")-($offset+31),date("Y"));
	$last = mktime(0,0,0,date("m"),date("d")-($offset),date("Y"));
	
	warquest_help_graphs($first,$last);
	
	$output->title = t('HELP_STATS_TITLE');
	
	$page .= '<div class="subparagraph">'.$output->title.'</div>';
	
	$page .= '<div class="box">';
	
	$page .= warquest_page_control_reverse($offset, $limit, $total, 2);
	
	$page .= '<br/>';
	$page .= '<center>'.t('HELP_STATS_REQUESTS').' - Year '.date("Y",$first).'</center>';	
	$page .= '<img src="graph/requests.png" />';	
	$page .= '<br/>';
				
	$page .= '<br/>';
	$page .= '<center>'.t('HELP_STATS_ONLINE').' - Year '.date("Y",$first).'</center>';	
	$page .= '<img src="graph/logins.png" />';	
	$page .= '<br/>';
		
	$page .= '<br/>';
	$page .= '<center>'.t('HELP_STATS_PLAYERS').' - Year '.date("Y",$first).'</center>';	
	$page .= '<img src="graph/newplayers.png" />';	
	$page .= '<br/>';
	
	$page .= '<br/>';
	$page .= '<center>'.t('HELP_STATS_FIGHTS').' - Year '.date("Y",$first).'</center>';	
	$page .= '<img src="graph/fights.png" />';	
	$page .= '<br/>';
	
	$page .= '<br/>';
	$page .= '<center>'.t('HELP_STATS_MISSIONS').' - Year '.date("Y",$first).'</center>';	
	$page .= '<img src="graph/missions.png" />';	
	$page .= '<br/>';
	
	$page .= '<br/>';
	$page .= '<center>'.t('HELP_STATS_CASINO').' - Year '.date("Y",$first).'</center>';	
	$page .= '<img src="graph/casino.png" />';	
	$page .= '<br/>';
		
	$page .= '<br/>';
	$page .= '<center>'.t('HELP_STATS_GOLD').' - Year '.date("Y",$first).'</center>';	
	$page .= '<img src="graph/gold.png" />';	
	$page .= '<br/>';
	
	$page .= warquest_page_control_reverse($offset, $limit, $total, 0);
	
	//$page .= '<br/>';
	
	$page .= '</div >';	
	
	$page .= '<div class="note">';
	$page .= t('HELP_STATS_NOTE');
	$page .= '</div>';
	
	warquest_sound('stats.mp3', 1);	
}

/*
** ---------------------
** DONATE
** ---------------------
*/

/**
 * Shop paypal button
 */
function warquest_paypal($gold, $price, $key) {

	global $config;
	global $player;

	$tag = 'WarQuest - '.$player->name.' ['.$player->pid.']';
	
	$page =	'<form action="https://www.paypal.com/cgi-bin/webscr" method="post">';	  
	$page .=	'<input type="hidden" name="cmd" value="_s-xclick">';
	$page .=	'<input type="hidden" name="item_name" value="'.$tag.'">';
	$page .=	'<input type="hidden" name="hosted_button_id" value="'.$config['paypal_buy_key'.$key].'">';
	$page .=	'<input type="image" src="https://www.paypalobjects.com/en_US/i/btn/btn_buynow_LG.gif" border="0" name="submit" alt="">';
	$page .=	'<img alt="" border="0" src="https://www.paypalobjects.com/en_US/i/scr/pixel.gif" width="1" height="1">';
	$page .=	'</form>';
	
	return $page;
}

	
/** 
 * Gift shop form
 */
function warquest_giftshop_form() {

	/* input */
	global $mid;
	global $sid;
	global $id;
	global $player;
	global $config;
	
	/* output */
	global $page;
	
	$page .=	'</form>';	
		
	$page .= '<div class="subparagraph">';	
	$page .= t('GIFT_SHOP_TITLE');
	$page .= '</div>';
												
	$gold = array(1000,2500,5500,12000,25000);
	$price = array(1.95, 4.95, 9.95, 19.95, 39.95);

	$page .= '<div class="box rows">';	

	$page .= '<table class="shop">';

	for($i=1; $i<6; $i++) {
	
		if ($i>1) {
			$page .= '<tr>';
			$page .= '<td colspan="2" class="bar">&nbsp;</td>';
			$page .= '</tr>';			
		}
			
		$page .= '<tr>';
		$page .= '<td>';
		$page .= warquest_image('gold/gold'.$i.'.jpg', 'width="225" height="160"');
		$page .= '</td>';
		$page .= '<td width="300" align="center">';
		$page .= gold_format($gold[$i-1]);
		$page .= '<br/>';
		$page .= stock_format($price[$i-1]).' '.t("GENERAL_USD");
		$page .= '<br/>'; 
		$page .= '<br/>';
		$page .= warquest_paypal($gold[$i-1], $price[$i-1], $i);	
		$page .= '</td>';		
		$page .= '</tr>';
	}
	
	$page .= '</table>';
	$page .= '</div>';
	
	$page .= t('GIFT_SHOP_NOTE');
}

/** 
 * Show Donate / Gif shop form 
 */
function warquest_help_donate_form() {

	/* input */
	global $config;
	
	/* output */
	global $page;
	global $output;
	global $player;
	
	$output->title = t('HELP_DONATE_TITLE1');
	
	$page .= '<div class="subparagraph">'.t('HELP_DONATE_TITLE1').'</div>';
	
	$page .= '<div class="box">';
	
	$page .= '<div class="right">';
	$page .= warquest_image('other/info.png', 'width="64" heigth="64"');
	$page .= '</div>';
	
	$page .= '<span class="subparagraph2">'.t('HELP_SUBTITLE_DONATE1').'</span><br/>';
	$page .= t('HELP_DONATE1').'<br/>';
	$page .= '<br/>';
	
	$page .= '<span class="subparagraph2">'.t('HELP_SUBTITLE_DONATE2' ).'</span><br/>';
	$page .= t('HELP_DONATE2', gold_format($config["gold_dollar_ratio"])).'<br/>';
	$page .= '<br/>';
	
	$page .= '<span class="subparagraph2">'.t('HELP_SUBTITLE_DONATE3').'</span><br/>';
	$page .= t('HELP_DONATE3').'<br/>';
	$page .= '<br/>';
	
	$page .=	'</form>';
		
	$page .=	'<center>';

	$tag = 'WarQuest - '.$player->name.' ['.$player->pid.']';
	$page .=	'<form action="https://www.paypal.com/cgi-bin/webscr" method="post">';
	   
	$page .=	'<input type="hidden" name="cmd" value="_s-xclick">';
	$page .=	'<input type="hidden" name="item_name" value="'.$tag.'">';
	$page .=	'<input type="hidden" name="hosted_button_id" value="'.$config['paypal_donate_key'].'">';
	$page .=	'<input type="image" src="https://www.paypalobjects.com/en_US/i/btn/btn_donateCC_LG.gif" border="0" name="submit" alt="">';
	$page .=	'<img alt="" border="0" src="https://www.paypalobjects.com/nl_NL/i/scr/pixel.gif" width="1" height="1">';
	$page .=	'</form>';
	
	$page .=	'</center>';

	$page .= '<span class="subparagraph2">'.t('HELP_SUBTITLE_DONATE4').'</span><br/>';
	$link = warquest_link('mid='.MENU_HOME.'&sid='.PAGE_COMMENT.'&eid='.EVENT_HOME_COMMENT_EDIT.'&oid='.$config["adminPid"], t('LINK_HERE'));
	$page .= t('HELP_DONATE4', $link);
	$page .= '<br/>';
	
	$page .= '</div>';	
	
	warquest_giftshop_form();
	
	warquest_sound('donate.mp3', 1);	
}

/*
** ---------------------
** AWARDS
** ---------------------
*/

function warquest_help_awards_form() {

	/* output */
	global $page;
	global $output;
	
	$output->title = t('HELP_AWARDS_SUBTITLE');	
	$page .= '<div class="subparagraph">'.t('HELP_AWARDS_SUBTITLE').'</div>';
	
	$page .= '<br/>';
	
	$page .= t('HELP_AWARDS_TEXT').'<br/>';
	
	$page .= '<br/>';
	
	$page .= '<div class="subparagraph">';
	$page .= t('HELP_BATTLE_AWARDS').'<br/>';
	$page .= '</div>';
	
	$page .= '<div class="box rows">';

	$page .= '<table>';

	$page .= '<tr>';
	
	$page .= '<th width="250">';
	$page .= t('GENERAL_WON');
	$page .= '</th>';

	$page .= '<th width="150">';
	$page .= t('GENERAL_AWARD');
	$page .= '</th>';
		
	$page .= '<th width="100">';
	$page .= t('GENERAL_EP');
	$page .= '</th>';
		
	$page .= '</tr>';
		
	$query =  'select id, won, ep from battle_award order by id';  
	$result = warquest_db_query($query);
	
	$count = 0;
	while ($data = warquest_db_fetch_object($result)) {
	
		$page .= '<tr>';
		$page .= '<td>';
		
		$page .= number_format($data->won,0,",",".").' '.t('GENERAL_BATTLE_AWARD_WON');

		$page .= '</td>';

		$page .= '<td>';
		$page .= warquest_battle_award_image($data->id, $data->won);
		$page .= '</td>';
		
		$page .= '<td>';
		$page .= '+'.$data->ep;
		$page .= '</td>';
		
		$page .= '</tr>';
	}
	$page .= '</table>';	
	$page .= '</div>';		
		
	/* ---------------------------------------- */
	
	$page .= '<div class="subparagraph">';
	$page .= t('HELP_MISSION_AWARDS').'<br/>';
	$page .= '</div>';
	
	$page .= '<div class="box rows">';
		
	$page .= '<table>';

	$page .= '<tr>';
	
	$page .= '<th width="250">';
	$page .= t('GENERAL_WON');
	$page .= '</th>';

	$page .= '<th width="150">';
	$page .= t('GENERAL_AWARD');
	$page .= '</th>';
		
	$page .= '<th width="100">';
	$page .= t('GENERAL_EP');
	$page .= '</th>';
		
	$page .= '</tr>';
		
	$query =  'select id, won, ep from mission_award order by id';  
	$result = warquest_db_query($query);
	
	$count = 0;
	while ($data = warquest_db_fetch_object($result)) {
	
		$page .= '<tr>';
		$page .= '<td>';
		
		$page .= number_format($data->won,0,",",".").' '.t('GENERAL_MISSION_AWARD_WON');

		$page .= '</td>';

		$page .= '<td>';
		$page .= warquest_mission_award_image($data->id, $data->won);
		$page .= '</td>';
		
		$page .= '<td>';
		$page .= '+'.$data->ep;
		$page .= '</td>';
		
		$page .= '</tr>';
	}
	$page .= '</table>';	
	$page .= '</div>';	
	
	/* ---------------------------------------- */
		
	$page .= '<div class="subparagraph">';
	$page .= t('HELP_BOUNTY_AWARDS').'<br/>';
	$page .= '</div>';
		
	$page .= '<div class="box rows">';
		
	$page .= '<table>';

	$page .= '<tr>';
	
	$page .= '<th width="250">';
	$page .= t('GENERAL_AMOUNT');
	$page .= '</th>';

	$page .= '<th width="150">';
	$page .= t('GENERAL_AWARD');
	$page .= '</th>';
		
	$page .= '<th width="100">';
	$page .= t('GENERAL_EP');
	$page .= '</th>';
		
	$page .= '</tr>';
		
	/* Get level data */
	$query =  'select id, amount, ep from bounty_award order by id';  
	$result = warquest_db_query($query);
	
	$count = 0;
	while ($data = warquest_db_fetch_object($result)) {
	
		$page .= '<tr>';
		$page .= '<td>';
		
		$page .= number_format($data->amount,0,",",".").' '.t('GENERAL_BOUNTY_AWARD_WON');

		$page .= '</td>';

		$page .= '<td>';
		$page .= warquest_bounty_award_image($data->id, $data->amount);
		$page .= '</td>';
		
		$page .= '<td>';
		$page .= '+'.$data->ep;
		$page .= '</td>';
		
		$page .= '</tr>';
	}
	$page .= '</table>';	
	$page .= '</div>';	
	
	
	/* ---------------------------------------- */
	
	$page .= '<div class="subparagraph">';
	$page .= t('HELP_REBEL_AWARDS').'<br/>';
	$page .= '</div>';
	
	$page .= '<div class="box rows">';
		
	$page .= '<table>';

	$page .= '<tr>';
	
	$page .= '<th width="250">';
	$page .= t('GENERAL_AMOUNT');
	$page .= '</th>';

	$page .= '<th width="150">';
	$page .= t('GENERAL_AWARD');
	$page .= '</th>';
		
	$page .= '<th width="100">';
	$page .= t('GENERAL_EP');
	$page .= '</th>';
		
	$page .= '</tr>';
		
	/* Get level data */
	$query =  'select id, amount, ep from rebel_award order by id';  
	$result = warquest_db_query($query);
	
	$count = 0;
	while ($data = warquest_db_fetch_object($result)) {
	
		$page .= '<tr>';
		$page .= '<td>';
		
		$page .= number_format($data->amount,0,",",".").' '.t('GENERAL_REBEL_AWARD_WON');

		$page .= '</td>';

		$page .= '<td>';
		$page .= warquest_rebel_award_image($data->id, $data->amount);
		$page .= '</td>';
		
		$page .= '<td>';
		$page .= '+'.$data->ep;
		$page .= '</td>';
		
		$page .= '</tr>';
	}
	$page .= '</table>';	
	$page .= '</div>';	

	warquest_sound('awards.mp3', 1);				
}

/*
** ---------------------
** RANKS
** ---------------------
*/

function warquest_help_ranks_form() {

	/* input */
	global $config;

	/* output */
	global $page;
	global $output;
	
	$output->title = t('HELP_RANKS_SUBTITLE');
	
	$page .= '<div class="subparagraph">'.t('HELP_RANKS_SUBTITLE').'</div>';
	
	$page .= '<div class="box rows">';
	
	$page .= t('HELP_RANKS').'<br/>';
	
	$page .= '<table>';
	
	$rank = "";
	
	$count = 0;
	for ($tmp=0; $tmp<=$config["max_level"]; $tmp++) {
	
		if ($rank != warquest_rank($tmp)) {
		
			$count++;
		
			$rank = warquest_rank($tmp);
		
			$page .= '<tr>';
			
			$page .= '<td width="150">';
			$page .= t('GENERAL_LEVEL').' '.$tmp;
			$page .= '</td>';
			
			$page .= '<td width="200">';
			$page .= $rank;
			$page .= '</td>';
			
			$page .= '<td width="150">';
			$page .= warquest_rank_image($tmp);
			$page .= '</td>';
			
			$page .= '</tr>';
			
			if ($count < 23) {
				$page .= '<tr>';
				$page .= '<td colspan="3" class="bar">&nbsp;</td>';
				$page .= '</tr>';	
			}
		}
	}
	
	$page .= '</table>';
		
	$page .= '</div>';	
	
	warquest_sound('rank.mp3', 1);	
}

/*
** ---------------------
** LEVELS
** ---------------------
*/

function warquest_help_levels_feature($lid) {

	/* input */
	global $config;
	
	$page="";

	$query  = 'select a.uid, a.gold, a.defense, a.attack, a.upkeep from unit a ';
	$query .= 'left join unit_group b on a.ugid=b.ugid ';
	$query .= 'where a.lid='.$lid.' and b.type!=6';
	$result = warquest_db_query($query);
			
	while ($data=warquest_db_fetch_object($result)) {
		$page .= warquest_unit_image($data, 0, 1, 55, 40).' ';
	}
		
	$query = 'select ugid, bid, income, gold, energy, defense, maintenance, discount from building where lid='.$lid;
	$result = warquest_db_query($query);
		
	while ($data=warquest_db_fetch_object($result)) { 				
		$page .= warquest_building_image($data, 0, 1, 55, 40).' ';			
	}
	
	$query = 'select mid from mission where lid='.$lid;
	$result = warquest_db_query($query);
		
	while ($data=warquest_db_fetch_object($result)) { 
		$page .= warquest_mission_image($data, 55, 40).' ';
	}
	
	if ($lid==$config["casino_unlock_level_1"]) {
		$page .= warquest_casino_image(1, 55, 40);	
	}

	if ($lid==$config["casino_unlock_level_2"]) {
		$page .= warquest_casino_image(2, 55, 40);	
	}
	
	if ($lid==$config["casino_unlock_level_3"]) {
		$page .= warquest_casino_image(3, 55, 40);	
	}
	
	if ($lid==$config["casino_unlock_level_4"]) {
		$page .= warquest_casino_image(4, 55, 40);	
	}
	
	if ($lid==$config["casino_unlock_level_5"]) {
		$page .= warquest_casino_image(5, 55, 40);	
	}
	
	if (strlen($page)==0) {
		
		$page .= warquest_image("other/box.png", ' width="55" height="40" ');	
	}
	
	return $page;
}
		
function warquest_help_levels_form() {

	/* input */
	global $config;
	global $offset;

	/* output */
	global $page;
	global $output;
	
	$output->title = t('HELP_LEVEL_SUBTITLE');
	
	$page .= '<div class="subparagraph">'.$output->title.'</div>';
	$page .= '<div class="box">';
	$page .= t('HELP_LEVEL').'<br/><br/>';
		
	$limit = 50;	
	$total = $config['max_level']+1;	

	/* Get level data */
	$query =  'select lid, experience from level where lid<='.$config['max_level'].' order by lid ';  
	$query .= 'limit '.$offset.','.$limit;
	$result = warquest_db_query($query);
	
	$page .= warquest_page_control($offset, $limit, $total, 1);
	
	$page .= '<table>';
	
	$page .= '<tr>';
		
	$page .= '<th width="45">';
	$page .= t('GENERAL_LEVEL');
	$page .= '</th>';
		
	$page .= '<th width="140">';
	$page .= t('HELP_LEVEL_EXPERIENCE');
	$page .= '</th>';
		
	$page .= '<th width="320">';
	$page .= t('HELP_LEVEL_FEATURES');
	$page .= '</th>';
	
	$page .= '</tr>';
	
	
	$tmp=0;
	if ($offset>0) {
		$level = warquest_db_level($offset-1);
		$tmp = $level->experience;
	}
	while ($data = warquest_db_fetch_object($result)) {
					
		$page .= '<tr>';
		
		$page .= '<td>';
		$page .= $data->lid;
		$page .= '</td>';
		
		$page .= '<td>';
		$page .= experience_format($tmp).'-'.experience_format($data->experience-1);
		$tmp = $data->experience;
		$page .= '</td>';
	
		$page .= '<td>';
		$page .= warquest_help_levels_feature($data->lid);
		$page .= '</td>';
	
		$page .= '</tr>';
	}
	
	$page .= '</table>';
	
	$page .= warquest_page_control($offset, $limit, $total, 0);
		
	$page .= '</div>';	
	
	warquest_sound('levels.mp3', 1);				
}


/*
** ---------------------
** RELEASE NOTES
** ---------------------
*/

function warquest_help_notes_form() {

	/* input */
	global $notes;
	global $offset;
	
	/* output */
	global $page;
	global $output;
	
	$limit = 5;
	$total = count($notes); 
		
	if ($offset==$total) {
		$offset=$total-$limit;
	}
	
	$output->title = t('HELP_NOTES_SUBTITLE1');
	
	$page .= '<div class="subparagraph">'.t('HELP_NOTES_SUBTITLE2').'</div>';
		
	$page .= '<div class="box">';
	
	$page .= '<div class="right">';
	$page .= warquest_image('other/info.png', 'width="64" heigth="64"');
	$page .= '</div>';
	
	$page .= warquest_page_control_reverse($offset, $limit, $total, 2);
	
	for ($i=($total-$offset); $i>($total-$offset-$limit); $i--) {
	
		if ($i>0) {
			$page .= warquest_parse_smilies($notes[$i]);
		}
	}
	
	$page .= warquest_page_control_reverse($offset, $limit, $total, 0);
	
	$page .= '</div>';		
	
	warquest_sound('notes.mp3', 1);	
}


/*
** ---------------------
** INSTRUCTIONS
** ---------------------
*/

function warquest_help_general_form() {

	/* input */
	global $config;
		
	/* output */
	global $page;
	global $output;
	
	$output->title = t('HELP_GENERAL_SUBTITLE');
	
	$page .= '<div class="subparagraph">'.t('HELP_GENERAL_SUBTITLE').'</div>';
	
	$page .= '<div class="box">';
	
	$page .= '<div class="right">';
	$page .= warquest_image('other/help.png', 'width="64" heigth="64"');
	$page .= '</div>';

	$page .= '<span class="subparagraph2">'.t('HELP_INTRO_TITLE').'</span><br/>';	
	$page .= t('HELP_INTRO');	
	$page .= '<br/>';
	
	$page .= '<br/>';
	$page .= '<span class="subparagraph2">'.t('HELP_EXP_TITLE').'</span><br/>';
	$page .= t('HELP_EXP');
	$page .= '<br/>';
	
	$page .= '<br/>';
	$page .= '<span class="subparagraph2">'.t('HELP_HEALTH_TITLE').'</span><br/>';
	$page .= t('HELP_HEALTH');
	$page .= '<br/>';
	
	$page .= '<br/>';
	$page .= '<span class="subparagraph2">'.t('HELP_ENERGY_TITLE').'</span><br/>';
	$page .= t('HELP_ENERGY');
	$page .= '<br/>';
		
	$page .= '<br/>';
	$page .= '<span class="subparagraph2">'.t('HELP_AMMO_TITLE').'</span><br/>';
	$page .= t('HELP_AMMO');
	$page .= '<br/>';

	$page .= '<br/>';
	$page .= '<span class="subparagraph2">'.t('HELP_MISSION_TITLE').'</span><br/>';
	$page .= t('HELP_MISSION');
	$page .= '<br/>';

	$page .= '<br/>';
	$page .= '<span class="subparagraph2">'.t('HELP_BATTLE_TITLE').'</span><br/>';
	$page .= t('HELP_BATTLE');
	$page .= '<br/>';

	$page .= '<br/>';
	$page .= '<span class="subparagraph2">'.t('HELP_ATTACK_FORCE_TITLE').'</span><br/>';
	$page .= t('HELP_ATTACK_FORCE');
	$page .= '<br/>';

	$page .= '<br/>';
	$page .= '<span class="subparagraph2">'.t('HELP_GOLD_TITLE').'</span><br/>';
	$page .= t('HELP_GOLD');
	$page .= '<br/>';
	
	$page .= '<br/>';
	$page .= '<span class="subparagraph2">'.t('HELP_BOUNTY_TITLE').'</span><br/>';
	$page .= t('HELP_BOUNTY');
	$page .= '<br/>';
	
	$page .= '<br/>';
	$page .= '<span class="subparagraph2">'.t('HELP_CLAN_WAR_TITLE').'</span><br/>';
	$page .= t('HELP_CLAN_WAR');
	$page .= '<br/>';
	
	$page .= '<br/>';
	$page .= '<span class="subparagraph2">'.t('HELP_UNITS_TITLE').'</span><br/>';
	$page .= t('HELP_UNITS');
	$page .= '<br/>';

	$page .= '<br/>';
	$page .= '<span class="subparagraph2">'.t('HELP_UNITS_CONDITION_TITLE').'</span><br/>';
	$page .= t('HELP_UNITS_CONDITION');
	$page .= '<br/>';
	
	$page .= '<br/>';
	$page .= '<span class="subparagraph2">'.t('HELP_BUILDINGS_TITLE').'</span><br/>';
	$page .= t('HELP_BUILDINGS');
	$page .= '<br/>';

	$page .= '<br/>';
	$page .= '<span class="subparagraph2">'.t('HELP_BUILDINGS_CONDITION_TITLE').'</span><br/>';
	$page .= t('HELP_BUILDINGS_CONDITION');
	$page .= '<br/>';
	
	$page .= '<br/>';
	$page .= '<span class="subparagraph2">'.t('HELP_BANKS_TITLE').'</span><br/>';
	$page .= t('HELP_BANKS');
	$page .= '<br/>';

	$page .= '<br/>';
	$page .= '<span class="subparagraph2">'.t('HELP_ALLIANCE_TITLE').'</span><br/>';
	$page .= t('HELP_ALLIANCE');
	$page .= '<br/>';

	$page .= '<br/>';
	$page .= '<span class="subparagraph2">'.t('HELP_SKILL_POINTS_TITLE').'</span><br/>';
	$page .= t('HELP_SKILL_POINTS');
	$page .= '<br/>';

	$page .= '<br/>';
	$page .= '<span class="subparagraph2">'.t('HELP_WORLDMAP_TITLE').'</span><br/>';
	$page .= t('HELP_WORLDMAP');
	$page .= '<br/>';
	
	$page .= '<br/>';
	$page .= '<span class="subparagraph2">'.t('HELP_REBELLION_CONDITION_TITLE').'</span><br/>';
	$page .= t('HELP_REBELLION_CONDITION');
	$page .= '<br/>';
	
	$page .= '<br/>';
	$page .= '<span class="subparagraph2">'.t('HELP_SHORTCUTS_TITLE').'</span><br/>';
	$page .= t('HELP_SHORTCUTS');
	$page .= '<br/>';
	
	$page .= '<br/>';
	$page .= '<span class="subparagraph2">'.t('HELP_TACTICS_TITLE').'</span><br/>';
	$page .= t('HELP_TACTICS');
	$page .= '<br/>';

	$page .= '<br/>';
	$page .= '<span class="subparagraph2">'.t('HELP_FORUM_TITLE').'</span><br/>';
	$page .= t('HELP_FORUM');
	$page .= '<br/>';
	
	$page .= '<br/>';
	$page .= '<span class="subparagraph2">'.t('HELP_GRAVATAR_TITLE').'</span><br/>';
	$page .= t('HELP_GRAVATAR');
	$page .= '<br/>';
			
	$page .= '</div>';	
	
	warquest_sound('instructions.mp3', 1);	
}

/*
** ---------------------
** HANDLER
** ---------------------
*/

/**
 * Help handler
 */
function warquest_help() {

	/* input */
	global $sid;
	global $eid;
		
	/* Event Handler */
	switch ($eid) {		
					
		case EVENT_SWITCH_PLANET: 
			warquest_switch_planet_do();
			break;
			
	}
		
	/* Page handler */
	switch ($sid) {
		
		case PAGE_INSTRUCTIONS: 
			warquest_help_general_form();
			break;
									
		case PAGE_RELEASENOTES:
			warquest_help_notes_form();
			break;
	
		case PAGE_RANKS:
			warquest_help_ranks_form();
			break;
			
		case PAGE_AWARDS:
			warquest_help_awards_form();
			break;
			
		case PAGE_LEVELS:
			warquest_help_levels_form();
			break;	
			
		case PAGE_STATS:
			warquest_help_stats_form();
			break;	

		case PAGE_DONATE:
			warquest_help_donate_form();
			break;	
			
		case PAGE_ABOUT:
			warquest_help_about_form();
			break;			
	}	
}

/*
** ---------------------
** THE END
** ---------------------
*/

?>