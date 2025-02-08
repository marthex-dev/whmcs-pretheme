<?php
	// *************************************************************************
	// *                                                                       *
	// * Ferdi Öztürk - Full Stack Developer                                   *
	// * Copyright (c) FerdiOzturk. All Rights Reserved,					   *
	// * Build Date: 30 October 2020                                           *
	// *                                                                       *
	// *************************************************************************
	// *                                                                       *
	// * Email: info@ferdiozturk.com                                           *
	// * Website: https://www.ferdiozturk.com                                  *
	// *                                                                       *
	// *************************************************************************

	define("CLIENTAREA",true);

	require("init.php");

	$file = $_SERVER["SCRIPT_NAME"];
	$break = Explode('/', $file);
	$pfile = $break[count($break) - 1];
	$pfile = str_replace(".php", "", $pfile);

    /*
    ***************************
    Sayfa icin SEO Başlangıç
    ***************************
    */

    $pagetitle      =   "Demo Sayfa";

    /*
    ***************************
    Sayfa icin SEO Bitiş
    ***************************
    */

	$ca = new WHMCS_ClientArea();
	$ca->setPageTitle($pagetitle);
	$ca->addToBreadCrumb('index.php',$whmcs->get_lang('globalsystemname'));
	$ca->addToBreadCrumb($pfile.'.php',$pagetitle);
	$ca->initPage();
	$ca->assign('subpage', "1");
	$ca->setTemplate('pages/'.$pfile);
	$ca->output();

?>