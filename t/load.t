# $Id: load.t,v 1.2 2004/09/16 02:26:48 comdog Exp $
BEGIN {
	use File::Find::Rule;
	@classes = qw(Polyglot);
	}

use Test::Builder;
use Test::More tests => scalar @classes;

foreach my $class ( @classes )
	{
	print "bail out! $class did not compile\n" unless use_ok( $class );
	}
