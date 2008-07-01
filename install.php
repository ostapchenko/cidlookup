<?php

global $db;
global $amp_conf;

if (! function_exists("out")) {
	function out($text) {
		echo $text."<br />";
	}
}

if (! function_exists("outn")) {
	function outn($text) {
		echo $text;
	}
}

$autoincrement = (($amp_conf["AMPDBENGINE"] == "sqlite") || ($amp_conf["AMPDBENGINE"] == "sqlite3")) ? "AUTOINCREMENT":"AUTO_INCREMENT";

// create the tables
$sql = "CREATE TABLE IF NOT EXISTS cidlookup (
	cidlookup_id INTEGER NOT NULL PRIMARY KEY $autoincrement,
	description varchar(50) NOT NULL,
	sourcetype varchar(100) NOT NULL,
	cache tinyint(1) NOT NULL default '0',
	deptname varchar(30) default NULL,
	http_host varchar(30) default NULL,
	http_port varchar(30) default NULL,
	http_username varchar(30) default NULL,
	http_password varchar(30) default NULL,
	http_path varchar(100) default NULL,
	http_query varchar(100) default NULL,
	mysql_host varchar(60) default NULL,
	mysql_dbname varchar(60) default NULL,
	mysql_query text,
	mysql_username varchar(30) default NULL,
	mysql_password varchar(30) default NULL
);";
$check = $db->query($sql);
if (DB::IsError($check)) {
        die_freepbx( "Can not create `cidlookup` table: " . $check->getMessage() .  "\n");
}


$sql = "CREATE TABLE IF NOT EXISTS cidlookup_incoming (
	cidlookup_id INT NOT NULL,
	extension VARCHAR(50),
	cidnum VARCHAR(30)
);";
$check = $db->query($sql);
if (DB::IsError($check)) {
        die_freepbx( "Can not create `cidlookup_incomming` table: " . $check->getMessage() .  "\n");
}

// first update
$sql = "SELECT cache FROM cidlookup";
$check = $db->getRow($sql, DB_FETCHMODE_ASSOC);
if (DB::IsError($check)) {
	// add new field
	$sql = "ALTER TABLE cidlookup ADD cache INTEGER NOT NULL DEFAULT 0;";
	$result = $db->query($sql);
	if(DB::IsError($result)) {
		die_freepbx($result->getMessage());
	}
}

outn("Migrating channel routing to Zap DID routing..");
$sql = "SELECT channel FROM cidlookup_incoming";
$check = $db->query($sql);
if (!DB::IsError($check)) {
	$chan_prefix = 'zapchan';
	$sql = "UPDATE cidlookup_incoming SET extension=CONCAT('$chan_prefix',channel), channel='' WHERE channel != ''";
	$results = $db->query($sql);
	if (DB::IsError($results)) { 
 		out("FATAL: failed to transform old routes: ".$results->getMessage());
	} else {
		out("OK");
		outn("Removing deprecated channel field from incoming..");
		$sql = "ALTER TABLE cidlookup_incoming DROP channel";
		$results = $db->query($sql);
		if (DB::IsError($results)) { 
 			out("ERROR: failed: ".$results->getMessage());
		} else {
			out("OK");
		}
	}
} else {
	out("Not Needed");
}

// This field had been wrongfully added to incoming quite some time ago
// this should maybe be added to core as well
//
outn("Checking for cidlookup field in core's incoming table..");
$sql = "ALTER TABLE incoming DROP cidlookup";
$results = $db->query($sql);
if (DB::IsError($results)) { 
	out("not present");
} else {
	out("removed");
}

?>

