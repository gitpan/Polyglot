# $Id: Makefile.PL,v 1.4 2007/01/10 04:41:13 comdog Exp $
use ExtUtils::MakeMaker;

eval "use Test::Manifest 1.14";

WriteMakefile(
    'NAME'		    => 'Polyglot',
    'VERSION_FROM'	=> 'lib/Polyglot.pm',
	'LICENSE'       => 'perl',

    'PREREQ_PM'		=> {
		'Test::More'       => '0',
    	},
    
    'MAN3PODS'      => {
    	'lib/Polyglot.pm'  => '$(INST_MAN3DIR)/Polyglot.3',
    	},
    	
    'clean' => { FILES => 'Polyglot-*' },
	);