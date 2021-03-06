use strict;
use warnings;

use GPSD::Parse;
use Test::More;

my $m = 'GPSD::Parse';

{ # degree to direction

    is $m->direction(349), 'N', "349 is N ok";
    is $m->direction(11),  'N', "11 is N ok";

    is $m->direction(12),  'NNE', "12 is NNE ok";
    is $m->direction(33),  'NNE', "33 is NNE ok";

    is $m->direction(34),  'NE', "34 is NE ok";
    is $m->direction(56),  'NE', "56 is NE ok";

    is $m->direction(57),  'ENE', "57 is ENE ok";
    is $m->direction(78),  'ENE', "78 is ENE ok";

    is $m->direction(79),  'E', "79 is E ok";
    is $m->direction(101), 'E', "101 is E ok";

    is $m->direction(102), 'ESE', "102 is ESE ok";
    is $m->direction(123), 'ESE', "123 is ESE ok";

    is $m->direction(124), 'SE', "124 is SE ok";
    is $m->direction(146), 'SE', "146 is SE ok";

    is $m->direction(147), 'SSE', "147 is SSE ok";
    is $m->direction(168), 'SSE', "168 is SSE ok";

    is $m->direction(169), 'S', "169 is S ok";
    is $m->direction(191), 'S', "191 is S ok";

    is $m->direction(192), 'SSW', "192 is SSW ok";
    is $m->direction(213), 'SSW', "213 is SSW ok";

    is $m->direction(214), 'SW', "214 is SW ok";
    is $m->direction(236), 'SW', "236 is SW ok";

    is $m->direction(237), 'WSW', "237 is WSW ok";
    is $m->direction(258), 'WSW', "258 is WSW ok";

    is $m->direction(259), 'W', "259 is W ok";
    is $m->direction(281), 'W', "281 is W ok";

    is $m->direction(282), 'WNW', "282 is WNW ok";
    is $m->direction(303), 'WNW', "303 is WNW ok";

    is $m->direction(304), 'NW', "304 is NW ok";
    is $m->direction(326), 'NW', "326 is NW ok";

    is $m->direction(327), 'NNW', "327 is NNW ok";
    is $m->direction(348), 'NNW', "348 is NNW ok";
}

done_testing;

__END__

N   348.75 - 11.25
NNE 11.25 - 33.75
NE  33.75 - 56.25
ENE 56.25 - 78.75
E   78.75 - 101.25
ESE 101.25 - 123.75
SE  123.75 - 146.25
SSE 146.25 - 168.75
S   168.75 - 191.25
SSW 191.25 - 213.75
SW  213.75 - 236.25
WSW 236.25 - 258.75
W   258.75 - 281.25
WNW 281.25 - 303.75
NW  303.75 - 326.25
NNW 326.25 - 348.75
