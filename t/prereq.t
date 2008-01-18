# $Id: prereq.t 1475 2004-09-16 21:25:04Z comdog $
use Test::More;
eval "use Test::Prereq";
plan skip_all => "Test::Prereq required to test dependencies" if $@;
prereq_ok();
