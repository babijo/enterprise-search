package config;
use strict;
use warnings;
use Readonly;
use Exporter qw(import);
our @EXPORT = qw(%CFG %VALID_TPL @SEARCH_ENV_LOGGING %DEF_TPL_OPT %TPL_FILE %VALID_LANG);



Readonly::Hash our %CFG => (
	tpl           => 'default',
	lang          => 'en_us',
	num_results   => 10,
	search_uri    => 'http://dagurval.boitho.com/cgi-bin/dispatcher_allbb',
	subname       => 'wikipedia',
	tkey          => 'zdlPehvkuthSLH2345uhKSJe5lgk6ktn',
	secret        => 'theSecret',
	#version       => 2.1,
	#username      => $ENV{REMOTE_USER} || "anonymus", # TODO: Fix spelling
	username      => "dj", # DEBUG
	icon => {
		dir => "img/filetypes/24so",
		ext => "gif",
	},
	page_nav => {
		show_pages => 10, # How many page links in nav bar.
	},
);

Readonly::Hash our %TPL_FILE => (
	main    => "main.tpl",
	results => "results.tpl",
	error   => "error.tpl",
);

Readonly::Array our @SEARCH_ENV_LOGGING
	=> qw(HTTP_ACCEPT_LANGUAGE HTTP_USER_AGENT HTTP_REFERER);

Readonly::Hash our %VALID_TPL 
	=> map { $_ => 1 } qw(default);
Readonly::Hash our %VALID_LANG
	=> map { $_ => 1 } qw(no en_us);

Readonly::Hash our %DEF_TPL_OPT => (
    INCLUDE_PATH => './tpl/',
    COMPILE_EXT => 'ctt',
    COMPILE_DIR => $ENV{BOITHOHOME} . '/var/webclient2_tpl',
    binmode => ':utf8',
);



1;