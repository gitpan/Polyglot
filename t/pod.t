# $Id: pod.t,v 1.1.1.1 2003/01/20 00:41:49 comdog Exp $

BEGIN {
	use File::Find::Rule;
	@files = File::Find::Rule->file()->name( '*.pm' )->in( 'blib/lib' );
	}
	
use Test::Pod tests => scalar @files;

foreach my $file ( @files )
	{
	pod_ok($file);
	}
