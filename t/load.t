# $Id: load.t,v 1.3 2004/09/16 21:23:59 comdog Exp $
BEGIN {
	@classes = qw(Polyglot);
	}

use Test::Builder;
use Test::More tests => scalar @classes;

foreach my $class ( @classes )
	{
	print "bail out! $class did not compile\n" unless use_ok( $class );
	}
