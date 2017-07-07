# Copyright (c) 2010-2017 Jacob Hammack.
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NON INFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
# THE SOFTWARE.


module Risu
	module Parsers
		module Nessus
			module PostProcess
				class WindowsPatches < Risu::Base::PostProcessBase

					#
					def initialize
						@info =
						{
							:description => "Microsoft Windows Patch Rollup",
							:plugin_id => -99983,
							:plugin_name => "Update to the latest Windows Updates",
							:item_name => "Update to the latest Windows Updates",
							:plugin_ids => [
								11110,
								11214,
								11322,
								11804,
								11808,
								11835,
								11890,
								12054,
								12209,
								13852,
								14724,
								18026,
								18482,
								18502,
								18681,
								19402,
								19403,
								19405,
								19407,
								19408,
								19998,
								19999,
								20001,
								20003,
								20004,
								20389,
								20390,
								20907,
								20908,
								21078,
								21193,
								21211,
								21655,
								21686,
								21687,
								21689,
								21690,
								21692,
								21694,
								22028,
								22030,
								22031,
								22032,
								22033,
								22034,
								22183,
								22188,
								22189,
								22190,
								22192,
								22194,
								22333,
								22334,
								22529,
								22530,
								22532,
								22533,
								22534,
								22535,
								22536,
								22537,
								22538,
								23643,
								23644,
								23645,
								23833,
								23837,
								23838,
								23998,
								23999,
								24330,
								24332,
								24335,
								24337,
								24338,
								24339,
								24340,
								24911,
								25025,
								25162,
								25163,
								25164,
								25166,
								25167,
								25484,
								25486,
								25488,
								25687,
								25688,
								25691,
								25880,
								25882,
								25883,
								25884,
								25886,
								26962,
								26963,
								27525,
								28183,
								28185,
								29308,
								29311,
								29312,
								29313,
								29893,
								29894,
								31039,
								31040,
								31041,
								31042,
								31044,
								31046,
								31047,
								31413,
								31414,
								31415,
								31793,
								31794,
								31795,
								31797,
								31798,
								32310,
								32311,
								32312,
								33107,
								33132,
								33133,
								33134,
								33135,
								33137,
								33441,
								33444,
								33870,
								33871,
								33872,
								33873,
								33874,
								33875,
								33877,
								33878,
								33879,
								33880,
								33881,
								34120,
								34121,
								34123,
								34311,
								34402,
								34403,
								34406,
								34408,
								34409,
								34411,
								34414,
								34476,
								34477,
								34743,
								34744,
								35069,
								35070,
								35071,
								35072,
								35073,
								35075,
								35221,
								35361,
								35362,
								35630,
								35632,
								35634,
								35635,
								35822,
								35823,
								36147,
								36148,
								36149,
								36150,
								36151,
								36152,
								36153,
								38742,
								39341,
								39342,
								39343,
								39344,
								39346,
								39347,
								39348,
								39349,
								39350,
								39622,
								39783,
								39791,
								39792,
								39793,
								40407,
								40435,
								40556,
								40557,
								40559,
								40560,
								40561,
								40562,
								40564,
								40565,
								40888,
								40889,
								40890,
								40891,
								42107,
								42108,
								42110,
								42112,
								42113,
								42114,
								42115,
								42116,
								42117,
								42118,
								42439,
								42441,
								42442,
								43061,
								43063,
								43064,
								43065,
								43089,
								43865,
								44045,
								44110,
								44414,
								44415,
								44416,
								44417,
								44418,
								44421,
								44422,
								44423,
								44425,
								45020,
								45021,
								45378,
								45506,
								45507,
								45508,
								45509,
								45510,
								45513,
								45514,
								45516,
								45517,
								46312,
								46313,
								46839,
								46840,
								46841,
								46842,
								46843,
								46844,
								46845,
								46847,
								46848,
								47045,
								47556,
								47710,
								47711,
								47712,
								47713,
								47750,
								48216,
								48284,
								48285,
								48286,
								48287,
								48288,
								48289,
								48290,
								48291,
								48292,
								48293,
								48294,
								48295,
								48296,
								48297,
								48405,
								48761,
								48762,
								49219,
								49220,
								49221,
								49222,
								49223,
								49224,
								49225,
								49227,
								49274,
								49695,
								49948,
								49950,
								49951,
								49953,
								49954,
								49955,
								49956,
								49957,
								49958,
								49959,
								49960,
								49961,
								49962,
								50528,
								50529,
								51162,
								51163,
								51164,
								51166,
								51167,
								51168,
								51169,
								51170,
								51171,
								51172,
								51175,
								51177,
								51455,
								51587,
								51903,
								51904,
								51906,
								51907,
								51909,
								51910,
								51911,
								51912,
								51913,
								51914,
								51956,
								52456,
								52583,
								52585,
								53375,
								53376,
								53377,
								53378,
								53379,
								53381,
								53382,
								53383,
								53384,
								53385,
								53386,
								53387,
								53388,
								53389,
								53390,
								53391,
								53503,
								53514,
								53830,
								53859,
								55116,
								55117,
								55118,
								55119,
								55121,
								55122,
								55123,
								55124,
								55125,
								55126,
								55128,
								55129,
								55130,
								55132,
								55286,
								55569,
								55570,
								55572,
								55787,
								55792,
								55793,
								55794,
								55795,
								55796,
								55797,
								55798,
								55799,
								55802,
								56174,
								56175,
								56177,
								56449,
								56450,
								56451,
								56452,
								56454,
								56455,
								56736,
								56737,
								56738,
								56824,
								57273,
								57275,
								57276,
								57277,
								57278,
								57279,
								57280,
								57282,
								57283,
								57284,
								57285,
								57414,
								57469,
								57470,
								57471,
								57472,
								57473,
								57474,
								57942,
								57943,
								57944,
								57946,
								57947,
								57948,
								57949,
								57950,
								58330,
								58331,
								58332,
								58333,
								58335,
								58435,
								58655,
								58656,
								58657,
								58659,
								59037,
								59038,
								59039,
								59040,
								59041,
								59042,
								59043,
								59044,
								59454,
								59455,
								59456,
								59459,
								59460,
								59906,
								59907,
								59908,
								59909,
								59910,
								59911,
								59912,
								59915,
								61527,
								61528,
								61529,
								61530,
								61531,
								61532,
								61534,
								61535,
								62045,
								62223,
								62459,
								62461,
								62463,
								62464,
								62465,
								62466,
								62903,
								62904,
								62905,
								62906,
								62907,
								62908,
								62940,
								63224,
								63225,
								63226,
								63228,
								63229,
								63230,
								63419,
								63420,
								63422,
								63423,
								63424,
								63425,
								63522,
								63643,
								64570,
								64571,
								64572,
								64576,
								64577,
								64578,
								64579,
								64580,
								64581,
								65210,
								65212,
								65214,
								65215,
								65875,
								65876,
								65878,
								65879,
								65880,
								65883,
								66412,
								66413,
								66415,
								66417,
								66418,
								66421,
								66422,
								66423,
								66425,
								66863,
								66864,
								66865,
								66866,
								67209,
								67210,
								67211,
								67212,
								67213,
								67214,
								67215,
								69324,
								69325,
								69327,
								69328,
								69330,
								69334,
								69828,
								69829,
								69830,
								69831,
								69832,
								69833,
								69834,
								69835,
								69836,
								69838,
								70332,
								70333,
								70334,
								70335,
								70337,
								70338,
								70339,
								70395,
								70846,
								70847,
								70848,
								70849,
								70851,
								70852,
								70853,
								70854,
								71311,
								71312,
								71313,
								71314,
								71316,
								71317,
								71321,
								71323,
								71941,
								71942,
								71943,
								72428,
								72430,
								72432,
								72433,
								72434,
								72930,
								72931,
								72932,
								72934,
								72935,
								73413,
								73415,
								73416,
								73417,
								73805,
								73982,
								73983,
								73984,
								73985,
								73986,
								73987,
								73988,
								73990,
								73992,
								74422,
								74423,
								74425,
								74426,
								74427,
								74428,
								76123,
								76406,
								76407,
								76408,
								76409,
								76410,
								77160,
								77162,
								77163,
								77164,
								77165,
								77166,
								77167,
								77169,
								77572,
								77573,
								77574,
								78431,
								78432,
								78433,
								78435,
								78437,
								78438,
								78439,
								78446,
								78447,
								79125,
								79126,
								79127,
								79128,
								79129,
								79130,
								79131,
								79132,
								79134,
								79137,
								79138,
								79311,
								79638,
								79828,
								79830,
								79831,
								79832,
								79833,
								79834,
								80490,
								80491,
								80492,
								80493,
								80494,
								80496,
								80497,
								81262,
								81263,
								81264,
								81265,
								81266,
								81267,
								81268,
								81269,
								81731,
								81733,
								81734,
								81735,
								81736,
								81737,
								81738,
								81739,
								81741,
								81742,
								81743,
								81744,
								81745,
								81757,
								82075,
								82769,
								82770,
								82771,
								82772,
								82774,
								82775,
								82777,
								82793,
								82828,
								83354,
								83355,
								83356,
								83358,
								83360,
								83361,
								83362,
								83363,
								83364,
								83370,
								83416,
								83440,
								84053,
								84054,
								84055,
								84056,
								84057,
								84059,
								84734,
								84735,
								84736,
								84738,
								84739,
								84741,
								84742,
								84743,
								84744,
								84745,
								84746,
								84747,
								84748,
								84761,
								84763,
								84882,
								85321,
								85322,
								85323,
								85329,
								85330,
								85332,
								85333,
								85334,
								85335,
								85348,
								85350,
								85540,
								85844,
								85845,
								85846,
								85847,
								85876,
								85877,
								85879,
								85884,
								86065,
								86149,
								86366,
								86367,
								86371,
								86373,
								86374,
								86469,
								86819,
								86820,
								86821,
								86822,
								86823,
								86824,
								86825,
								86826,
								86827,
								86828,
								86856,
								87249,
								87252,
								87253,
								87254,
								87256,
								87257,
								87258,
								87259,
								87260,
								87261,
								87262,
								87263,
								87264,
								87313,
								87671,
								87875,
								87877,
								87878,
								87880,
								87881,
								87882,
								87890,
								87892,
								87893,
								88642,
								88643,
								88644,
								88645,
								88646,
								88647,
								88648,
								88649,
								88650,
								88651,
								88653,
								88654,
								89746,
								89747,
								89748,
								89749,
								89750,
								89751,
								89752,
								89753,
								89754,
								89755,
								89756,
								89757,
								89779,
								89835,
								90431,
								90432,
								90433,
								90434,
								90436,
								90437,
								90438,
								90439,
								90440,
								90441,
								90442,
								90443,
								90510,
								91001,
								91002,
								91004,
								91005,
								91006,
								91007,
								91009,
								91010,
								91011,
								91012,
								91013,
								91014,
								91015,
								91596,
								91600,
								91601,
								91602,
								91603,
								91609,
								92018,
								92021,
								92022,
								92821,
								92823,
								92843,
								91599,
								93466,
								93470,
								93473,
								93651,
								93464,
								93468,
								92015,
								92819,
								91604,
								90435,
								91607,
								91611,
								92019,
								92023,
								92025,
								92822,
								92824,
								92839,
								93469,
								93481,
								91605,
								91672,
								92024,
								93475,
								93471,
								84762,
								85331,
								81732,
								82823,
								83369,
								84052,
								84367,
								84645,
								84809,
								94012,
								94017,
								94011,
								94014,
								94016,
								49952,
								94634,
								55883,
								72836,
								95764,
								95765,
								95766,
								95768,
								95811,
								95813,
								96393,
								97833,
								97737,
								97743,
								100051,
								100057,
								94631,
								94633,
								94635,
								94636,
								94637,
								94638,
								94639,
								94641,
								94643,
								97729,
								97731,
								97732,
								97733,
								97738,
								97794,
								99312,
								97740,
								99314,
								100103,
								100058,
								97833,



							]
						}
					end
				end
			end
		end
	end
end
