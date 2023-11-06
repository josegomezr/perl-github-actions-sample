use strict;
use warnings;
use Test::More;

use Plack::Test;
use HTTP::Request::Common;
use Sample;

my $app = Sample->app;
my $test = Plack::Test->create($app);

my $res = $test->request(GET '/');
is $res->code, 200;

ok(is(1, 0));

done_testing;
