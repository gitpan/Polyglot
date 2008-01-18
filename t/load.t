# $Id: load.t 1474 2004-09-16 21:23:59Z comdog $
BEGIN {
	@classes = qw(Polyglot);
	}

use Test::Builder;
use Test::More tests => scalar @classes;

foreach my $class ( @classes )
	{
	print "bail out! $class did not compile\n" unless use_ok( $class );
	}
