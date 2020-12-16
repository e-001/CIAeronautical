// ********************** AHASInputs *********************************
// * Copyright © Cenith Innovations - All Rights Reserved
// * Created on 12/16/20, for CIAeronautical
// * Matthew Elmore <matt@cenithinnovations.com>
// * Unauthorized copying of this file is strictly prohibited
// ********************** AHASInputs *********************************


struct AHASInputs {
    
    static public func findAhasSearchableFrom(icao: String) -> String? {
        guard let i = hiddenIcao1.firstIndex(of: icao) else {return nil}
        if i <= hiddenIcao2.count {return String(hiddenIcao2[i])}
        return nil
    }
    
    ///THIS IS DUMB!
    ///The index of hiddenIcao1 matches the index of hiddenIcao2. Search in AHAS by the string in hiddenIcao2
    static private let hiddenIcao1 = ["12NC", "13NC", "14NC", "22XS", "23XS", "99CL", "9TX5", "CA62", "CAU3", "CO80", "CO90", "CYBG", "K09J", "K0F2", "K0L9", "K11R", "K12J", "K1R8", "K1V6", "K24R", "K2CB", "K3G5", "K3MY", "K40J", "K4V1", "K5T9", "K67L", "K79J", "K92F", "K95E", "KAAA", "KAAF", "KABE", "KABI", "KABR", "KABY", "KACK", "KACT", "KACY", "KADM", "KADW", "KAEG", "KAEX", "KAFF", "KAFW", "KAGR", "KAGS", "KAHC", "KAHN", "KALB", "KALI", "KALN", "KAMA", "KAPA", "KAPG", "KAPH", "KAPN", "KARA", "KARR", "KATL", "KATS", "KAUS", "KAVK", "KAVL", "KAVO", "KAXX", "KAYX", "KAZU", "KBAB", "KBAD", "KBAF", "KBAK", "KBAM", "KBDL", "KBEA", "KBED", "KBFI", "KBFM", "KBGE", "KBGM", "KBGR", "KBHM", "KBIF", "KBIH", "KBIL", "KBIS", "KBIX", "KBJC", "KBKF", "KBKN", "KBKS", "KBKT", "KBLI", "KBLV", "KBMG", "KBMI", "KBNA", "KBOI", "KBOI", "KBOS", "KBPT", "KBQK", "KBRO", "KBTL", "KBTR", "KBTV", "KBVU", "KBWI", "KBYS", "KC75", "KCAE", "KCAK", "KCBM", "KCDC", "KCEF", "KCEW", "KCHA", "KCHK", "KCHS", "KCIC", "KCKA", "KCKB", "KCKP", "KCLL", "KCLT", "KCMH", "KCMY", "KCNM", "KCNW", "KCOF", "KCOS", "KCOU", "KCPS", "KCQF", "KCRP", "KCRW", "KCSM", "KCVG", "KCVN", "KCVS", "KCWF", "KCXO", "KCYS", "KCZT", "KD05", "KDAA", "KDAB", "KDAL", "KDAY", "KDEC", "KDFW", "KDHN", "KDHT", "KDLF", "KDLH", "KDMA", "KDOV", "KDPG", "KDRO", "KDRT", "KDSM", "KDUC", "KDUG", "KDVL", "KDWH", "KDYS", "KECG", "KECP", "KECU", "KEDG", "KEDW", "KEFD", "KEGE", "KEGI", "KEKO", "KELM", "KELP", "KEND", "KENV", "KERI", "KEUF", "KEUG", "KEVV", "KEVY", "KFAF", "KFAR", "KFAT", "KFBG", "KFCS", "KFCT", "KFDK", "KFEW", "KFFO", "KFHB", "KFHU", "KFLG", "KFLV", "KFLY", "KFMH", "KFMN", "KFOE", "KFOK", "KFRI", "KFSD", "KFSI", "KFSM", "KFST", "KFTG", "KFTK", "KFTW", "KFWA", "KFYM", "KFYV", "KGBG", "KGCK", "KGCN", "KGEG", "KGFA", "KGFK", "KGGG", "KGJT", "KGLH", "KGNF", "KGNT", "KGNV", "KGOK", "KGON", "KGOV", "KGPI", "KGPT", "KGRB", "KGRF", "KGRI", "KGRK", "KGRR", "KGSB", "KGSO", "KGSP", "KGTB", "KGTF", "KGTR", "KGUP", "KGUR", "KGUS", "KGVT", "KGXA", "KGXF", "KHBG", "KHBV", "KHDC", "KHFF", "KHGR", "KHGT", "KHIF", "KHKA", "KHLN", "KHLR", "KHMN", "KHND", "KHOB", "KHOP", "KHRL", "KHRT", "KHRX", "KHSA", "KHST", "KHSV", "KHTH", "KHUA", "KHUF", "KHUT", "KIAB", "KIAG", "KICT", "KIDA", "KIKR", "KILG", "KILM", "KINS", "KISO", "KIWA", "KJAN", "KJAN", "KJAX", "KJCT", "KJKA", "KJST", "KJTC", "KJWG", "KK02", "KL25", "KLAA", "KLAL", "KLAS", "KLAW", "KLBB", "KLCH", "KLCK", "KLCQ", "KLFI", "KLFT", "KLGF", "KLHW", "KLHX", "KLIC", "KLIT", "KLMT", "KLMT", "KLNK", "KLNS", "KLRD", "KLRF", "KLSE", "KLSF", "KLSV", "KLTS", "KLUF", "KLUF", "KLVS", "KLWB", "KMAF", "KMCE", "KMCF", "KMCI", "KMCN", "KMDA", "KMDT", "KMDW", "KMEI", "KMEM", "KMER", "KMFD", "KMFE", "KMFR", "KMGE", "KMGM", "KMGM", "KMHR", "KMHT", "KMHV", "KMIB", "KMKC", "KMKE", "KMLI", "KMLU", "KMMH", "KMMT", "KMOB", "KMOD", "KMOT", "KMQB", "KMRB", "KMRY", "KMSN", "KMSO", "KMSP", "KMSY", "KMTC", "KMTN", "KMUI", "KMUL", "KMUO", "KMVY", "KMWA", "KMWH", "KMXF", "KMYR", "KNBC", "KNBG", "KNBJ", "KNCA", "KNDY", "KNDZ", "KNEL", "KNEN", "KNEW", "KNFD", "KNFE", "KNFG", "KNFJ", "KNFL", "KNFW", "KNGP", "KNGS", "KNGT", "KNGU", "KNGW", "KNHK", "KNHL", "KNHZ", "KNID", "KNIP", "KNJK", "KNJM", "KNJW", "KNKL", "KNKT", "KNKX", "KNLC", "KNMM", "KNOG", "KNOW", "KNPA", "KNQA", "KNQB", "KNQI", "KNQX", "KNRA", "KNRB", "KNRQ", "KNSE", "KNSI", "KNTD", "KNTU", "KNUC", "KNUI", "KNUN", "KNUQ", "KNUW", "KNVI", "KNXP", "KNXX", "KNYG", "KNYL", "KNZX", "KNZY", "KO53", "KOAJ", "KOAK", "KOCF", "KODO", "KOFF", "KOGD", "KOKC", "KOMA", "KOQU", "KORF", "KORL", "KOZR", "KPAE", "KPAM", "KPBI", "KPDX", "KPHF", "KPHL", "KPHX", "KPHX", "KPIA", "KPIB", "KPIE", "KPIH", "KPIL", "KPIT", "KPKV", "KPMD", "KPNC", "KPNS", "KPOB", "KPOE", "KPQL", "KPRB", "KPRN", "KPRO", "KPRZ", "KPSC", "KPSM", "KPSX", "KPUB", "KPVD", "KPVJ", "KPVW", "KPWA", "KPWM", "KRBM", "KRCA", "KRDD", "KRDG", "KRDR", "KRFD", "KRIC", "KRIV", "KRKP", "KRKS", "KRME", "KRND", "KRNO", "KRNT", "KROA", "KROW", "KRST", "KRSW", "KRYM", "KRYN", "KSAC", "KSAF", "KSAT", "KSAV", "KSAW", "KSBY", "KSCH", "KSCK", "KSDF", "KSEA", "KSEM", "KSEQ", "KSGF", "KSGH", "KSGT", "KSGU", "KSH1", "KSHV", "KSJT", "KSKA", "KSKF", "KSLC", "KSLI", "KSLJ", "KSLN", "KSMF", "KSNS", "KSPI", "KSPS", "KSRQ", "KSSC", "KSSF", "KSSI", "KSSN", "KSTJ", "KSTL", "KSUS", "KSUU", "KSUX", "KSVC", "KSVN", "KSWF", "KSWO", "KSYR", "KSZL", "KT69", "KT70", "KTAD", "KTBN", "KTCC", "KTCL", "KTCM", "KTCS", "KTFP", "KTIK", "KTIX", "KTLH", "KTNT", "KTNX", "KTOI", "KTOL", "KTOP", "KTPH", "KTTS", "KTUL", "KTUP", "KTUS", "KTVL", "KTWF", "KTXK", "KTYS", "KU30", "KUNV", "KUVA", "KVAD", "KVBG", "KVCT", "KVCV", "KVCV", "KVGT", "KVLD", "KVOK", "KVPS", "KVQQ", "KVUJ", "KW94", "KWAL", "KWDG", "KWJF", "KWMC", "KWRB", "KWRI", "KWSD", "KXMR", "KXNA", "KXNO", "KYKM", "KYNG", "KYQQ", "KZ", "KZ10", "KZ99", "KZER", "KZZV", "MT15", "NJ24", "NV72", "PABA", "PABI", "PABM", "PACD", "PACZ", "PADK", "PADM", "PAED", "PAEH", "PAEI", "PAFA", "PAFB", "PAGZ", "PAIM", "PAKK", "PAKN", "PAKO", "PALU", "PANC", "PAPC", "PASV", "PATC", "PATL", "PAWT", "PHHI", "PHIK", "PHNG", "PHNP", "PHSF", "PPIZ", "WS20", "Z", "Z"]
    
    ///SO DUMB!
    static private let hiddenIcao2 = ["ATLANTIC MCOLF", "OAK GROVE MCOLF", "CAMP DAVIS MCOLF", "LONGHORN AUX LANDING STRIP", "SHORTHORN AUX LANDING STRIP", "EL MIRAGE FLD ADELANTO", "CAMP BULLIS ALS CALS", "MC MILLAN ASSAULT STRIP", "CAMP OLIVER AAF", "FOWLER", "USAF ACADEMY BULLSEYE AUX", "BAGOTVILLE", "JEKYLL ISLAND", "BOWIE MUNI", "ECHO BAY", "BRENHAM MUNI", "BREWTON MUNI", "BAY MINETTE MUNI", "FREMONT CO", "DILLEY AIRPARK", "CAMP BLANDING AAF", "DAWSON AAF", "MT HAWLEY AUXILIARY", "PERRY FOLEY", "SPANISH PEAKS", "MAVERICK CO MEM INTL", "MESQUITE", "SOUTH ALABAMA RGNL AT BILL BENTON FLD", "CHATTANOOGA SKY HARBOR", "STALLION AAF", "LOGAN CO", "APALACHICOLA RGNL", "LEHIGH VALLEY INTL", "ABILENE RGNL", "ABERDEEN FLD", "SOUTHWEST GEORGIA RGNL", "NANTUCKET MEM", "WACO RGNL", "ATLANTIC CITY INTL", "ARDMORE MUNI", "ANDREWS AFB", "DOUBLE EAGLE II", "ALEXANDRIA INTL", "USAF ACADEMY AIRFIELD", "FORT WORTH ALLIANCE", "MACDILL AFB AUX FLD", "AUGUSTA RGNL AT BUSH FLD", "AMEDEE AAF", "ATHENS BEN EPPS", "ALBANY INTL", "ALICE INTL", "ST LOUIS RGNL", "RICK HUSBAND AMARILLO INTERNATIONAL", "CENTENNIAL", "PHILLIPS AAF", "A P HILL AAF", "ALPENA CO REGIONAL, MI", "ACADIANA RGNL", "AURORA MUNI", "HARTSFIELD JACKSON ATLANTA INTL", "ARTESIA MUNI", "AUSTIN BERGSTROM INTL", "ALVA RGNL", "ASHEVILLE RGNL", "AVON PARK EXECUTIVE", "ANGEL FIRE", "ARNOLD AFB", "ARROWHEAD ASSAULT STRIP", "BEALE AFB", "BARKSDALE AFB", "BARNES MUNI", "COLUMBUS MUNICIPAL, IN", "BATTLE MOUNTAIN", "BRADLEY INTL ARPT", "BEEVILLE MUNI", "LAURENCE G HANSCOM FLD", "BOEING FLD KING CO INTL", "MOBILE DOWNTOWN", "DECATUR CO INDUSTRIAL AIR PARK", "GREATER BINGHAMTON EDWIN A LINK FLD", "BANGOR INTL", "BIRMINGHAM INTL", "BIGGS AAF", "EASTERN SIERRA RGNL", "BILLINGS LOGAN INTL", "BISMARCK MUNI", "KEESLER AFB", "ROCKY MOUNTAIN METRO", "BUCKLEY AFB", "BLACKWELL TONKAWA MUNI", "BROOKS CO", "BLACKSTONE AAF ALLEN C PERKINSON MUNI", "BELLINGHAM INTL", "SCOTT AFB", "MONROE CO", "CENTRAL ILLINOIS RGNL", "NASHVILLE INTL ARPT", "GOWEN FIELD, ID", "BOISE AIR TERMINAL", "LOGAN INTL", "SOUTHEAST TEXAS RGNL", "BRUNSWICK GOLDEN ISLES", "BROWNSVILLE SOUTH PADRE ISLAND INTL", "W K KELLOGG", "BATON ROUGE METRO RYAN FLD", "BURLINGTON INTL", "BOULDER CITY MUNI", "BALTIMORE WASHINGTON INTL", "BICYCLE LAKE AAF", "MARSHALL CO", "COLUMBIA METROPOLITAN", "AKRON CANTON RGNL", "COLUMBUS AFB", "CEDAR CITY RGNL", "WESTOVER ARB, MA", "BOB SIKES", "LOVELL FLD", "CHICKASHA MUNI", "CHARLESTON AFB INTL", "CHICO MUNI", "KEGELMAN AF AUX FIELD", "NORTH CENTRAL WEST VIRGINIA", "CHEROKEE MUNI", "EASTERWOOD FLD", "CHARLOTTE DOUGLAS INTL", "PORT COLUMBUS INTL ARPT", "SPARTA FORT MCCOY", "CAVERN CITY AIR TERMINAL", "TSTC WACO", "PATRICK AFB", "PETERSON AFB", "COLUMBIA RGNL", "ST LOUIS DOWNTOWN", "H L SONNY CALLAHAN", "CORPUS CHRISTI INTL", "MCLAUGHLIN ANGB", "CLINTON-SHERMAN", "CINCINNATI NORTHERN KENTUCKY INTL", "CLOVIS MUNI", "CANNON AFB", "CHENNAULT INTL", "LONE STAR EXECUTIVE", "CHEYENNE RGNL JERRY OLSON FLD", "DIMMIT CO", "GARRISON MUNI", "DAVISON AAF", "DAYTONA BEACH INTL", "DALLAS LOVE FLD", "JAMES M COX DAYTON INTL", "DECATUR", "DALLAS FORT WORTH INTL", "DOTHAN RGNL", "DALHART MUNI", "LAUGHLIN AFB", "DULUTH INTL", "DAVIS MONTHAN AFB", "DOVER AFB", "MICHAEL AAF", "DURANGO LA PLATA CO", "DEL RIO", "DES MOINES INTL", "HALLIBURTON FLD", "BISBEE DOUGLAS INTL", "DEVILS LAKE RGNL", "DAVID WAYNE HOOKS MEM", "DYESS AFB", "ELIZABETH CITY CGAS MUNI", "NORTHWEST FLORIDA BEACHES INTL", "EDWARDS CO", "WEIDE AHP", "EDWARDS AFB", "ELLINGTON FIELD, TX", "EAGLE CO RGNL", "EGLIN AF AUX NR 3 DUKE", "ELKO RGNL", "ELMIRA CORNING RGNL", "EL PASO INTL", "VANCE AFB", "WENDOVER", "ERIE INTL TOM RIDGE FLD", "WEEDON FLD", "MAHLON SWEET FLD", "EVANSVILLE RGNL", "SUMMIT", "FELKER AAF", "HECTOR INTL", "FRESNO YOSEMITE INTL", "SIMMONS AAF", "BUTTS ARMY AIR FIELD", "VAGABOND AAF", "FREDERICK MUNICIPAL AIRPORT", "FE WARREN AFB", "WRIGHT-PATTERSON AFB", "FERNANDINA BEACH MUNI", "LIBBY AAF SIERRA VISTA MUNI", "FLAGSTAFF PULLIAM", "SHERMAN AAF", "MEADOW LAKE", "OTIS ANGB", "FOUR CORNERS RGNL", "FORBES FIELD", "FRANCIS S GABRESKI", "MARSHALL AAF", "JOE FOSS FIELD, SD", "HENRY POST ARMY AIR FIELD", "FORT SMITH RGNL", "FORT STOCKTON PECOS CO", "FRONT RANGE", "GODMAN AAF", "FORT WORTH MEACHAM INTL", "FORT WAYNE INTL", "FAYETTEVILLE MUNI", "DRAKE FLD", "GALESBURG MUNI", "GARDEN CITY RGNL", "GRAND CANYON NATL PARK", "SPOKANE INTL", "MALMSTROM", "GRAND FORKS INTL", "EAST TEXAS REGIONAL", "GRAND JUNCTION RGNL", "MID DELTA RGNL", "GRENADA MUNICIPAL AIRPORT", "GRANTS MILAN MUNI", "GAINESVILLE RGNL", "GUTHRIE EDMOND RGNL", "GROTON NEW LONDON", "GRAYLING AAF", "GLACIER PARK INTL", "GULFPORT BILOXI INTL", "AUSTIN STRAUBEL INTL", "GRAY AAF", "CENTRAL NEBRASKA RGNL", "ROBERT GRAY AAF", "GERALD R FORD INTL", "SEYMOUR JOHNSON AFB", "PIEDMONT TRIAD INTL", "GREENVILLE SPARTANBURG INTL", "WHEELER SACK AAF", "GREAT FALLS INTL", "GOLDEN TRIANGLE RGNL", "GALLUP MUNI", "CAMP GUERNSEY AAF", "GRISSOM ARB", "MAJORS ARPT", "GRAY BUTTE FLD", "GILA BEND AF AUX", "HATTIESBURG BOBBY L CHAIN MUNI", "JIM HOGG CO", "HAMMOND NORTHSHORE RGNL", "MACKALL AAF", "HAGERSTOWN RGNL RICHARD A HENSON FLD", "TUSI AHP", "HILL AFB", "BLYTHEVILLE MUNI", "HELENA RGNL", "HOOD AAF", "HOLLOMAN AFB", "HENDERSON EXECUTIVE", "LEA CO RGNL", "CAMPBELL AAF", "VALLEY INTL", "HURLBURT FIELD", "HEREFORD MUNI", "STENNIS INTL", "HOMESTEAD ARS, FL", "HUNTSVILLE INTL CARL T JONES FLD", "HAWTHORNE INDUSTRIAL", "REDSTONE AAF", "TERRE HAUTE INTL HULMAN FIELD, IN", "HUTCHINSON MUNI", "MCCONNELL AFB", "NIAGARA FALLS ARS, NY", "WICHITA MID CONTINENT", "IDAHO FALLS RGNL", "KIRTLAND AFB, NM", "NEW CASTLE", "WILMINGTON INTL", "CREECH AFB", "KINSTON RGNL JETPORT AT STALLINGS FLD", "WILLIAMS GATEWAY", "JACKSON EVERS INTL", "ALLEN C. THOMPSON FIELD, MS", "JACKSONVILLE INTL ARPT", "KIMBLE CO", "JACK EDWARDS", "JOHN MURTHA JOHNSTOWN CAMBRIA CO", "SPRINGERVILLE MUNI", "WATONGA RGNL", "PERRYVILLE MUNI", "PEARCE FERRY", "LAMAR MUNI", "LAKELAND LINDER RGNL", "MC CARRAN INTL", "LAWTON-FORT SILL REGIONAL", "LUBBOCK INTERNATIONAL", "LAKE CHARLES RGNL", "RICKENBACKER ANGB, OH", "LAKE CITY MUNI", "LANGLEY AFB", "LAFAYETTE RGNL", "LAGUNA AAF", "WRIGHT AAF", "LA JUNTA MUNI", "LIMON MUNI", "ADAMS FLD", "KINGSLEY FIELD, OR", "KLAMATH FALLS", "LINCOLN MUNI ARPT", "LANCASTER", "LAREDO INTL", "LITTLE ROCK AFB", "LA CROSSE MUNICIPAL AIRPORT", "LAWSON AAF", "NELLIS AFB", "ALTUS AFB", "LUKE AFB", "LUKE AFB AUX1", "LAS VEGAS MUNI", "GREENBRIER VALLEY", "MIDLAND INTERNATIONAL", "MERCED RGNL MACREADY FLD", "MACDILL AFB", "KANSAS CITY INTL", "MIDDLE GEORGIA RGNL", "MARTINDALE AAF", "HARRISBURG INTL", "CHICAGO MIDWAY INTL", "KEY FLD", "MEMPHIS INTL", "CASTLE", "MANSFIELD LAHM REGIONAL, OH", "MC ALLEN MILLER INTL", "ROGUE VALLEY INTL MEDFORD", "DOBBINS ARB ATLANTA NAS", "MONTGOMERY RGNL", "DANNELLY FIELD, AL", "SACRAMENTO MATHER", "MANCHESTER", "MOJAVE", "MINOT AFB", "CHARLES B WHEELER DOWNTOWN", "GENERAL MITCHELL IAP", "QUAD CITY INTL", "MONROE RGNL", "MAMMOTH YOSEMITE", "MC ENTIRE ANGS", "MOBILE RGNL", "MODESTO CITY", "MINOT INTL", "MACOMB MUNI", "SHEPHERD FIELD, WV", "MONTEREY PENINSULA", "TRUAX FIELD, WI", "MISSOULA INTL", "MINNEAPOLIS ST PAUL INTL", "LOUIS ARMSTRONG NEW ORLEANS INTL", "SELFRIDGE ANGB", "MARTIN STATE", "MUIR AAF", "SPENCE", "MOUNTAIN HOME AFB", "MARTHAS VINEYARD", "WILLIAMSON CO RGNL", "GRANT COUNTY INTL", "MAXWELL AFB", "MYRTLE BEACH INTL", "BEAUFORT MCAS", "NEW ORLEANS NAS JRB", "BARIN NOLF", "NEW RIVER MCAS", "DAHLGREN USN SFC WAR CNTR", "WHITING FLD NAS SOUTH", "LAKEHURST NAES", "WHITEHOUSE NOLF", "LAKEFRONT", "SUMMERDALE NOLF", "FENTRESS NALF", "CAMP PENDLETON MCAS", "CHOCTAW NOLF", "FALLON NAS", "FORT WORTH NAS", "CORPUS CHRISTI NAS", "SANTA ROSA NOLF", "GOLIAD NOLF", "NORFOLK NAS", "CABANISS FLD NOLF", "PATUXENT RIVER NAS", "WOLF NOLF", "BRUNSWICK NAS", "CHINA LAKE NAWS", "JACKSONVILLE NAS", "EL CENTRO NAF", "BOGUE MCALF", "JOE WILLIAMS NOLF", "HOLLEY NOLF", "CHERRY POINT MCAS", "MIRAMAR MCAS", "LEMOORE NAS", "MERIDIAN NAS", "ORANGE GROVE NALF", "PORT ANGELES CGAS", "PENSACOLA NAS", "MILLINGTON RGNL JETPORT", "SILVERHILL NOLF", "KINGSVILLE NAS", "KEY WEST NAS", "COUPEVILLE NOLF", "MAYPORT NS", "SPENCER NOLF", "WHITING FLD NAS NORTH", "SAN NICOLAS ISLAND NOLF", "POINT MUGU NAWS", "OCEANA NAS", "SAN CLEMENTE ISLAND NALF", "WEBSTER NOLF", "SAUFLEY FLD NOLF", "MOFFETT FEDERAL AIRFIELD", "WHIDBEY ISLAND NAS", "PACE NOLF", "TWENTYNINE PALMS EAF", "WILLOW GROVE NAS", "QUANTICO MCAF", "YUMA MCAS YUMA INTL", "HAROLD NOLF", "NORTH ISLAND NAS", "MEDFORD MUNI", "ALBERT J ELLIS", "METROPOLITAN OAKLAND INTL", "OCALA INTL JIM TAYLOR FLD", "ODESSA SCHLEMEYER FLD", "OFFUTT AFB", "OGDEN HINCKLEY", "WILL ROGERS WORLD", "EPPLEY AFLD", "QUONSET STATE", "NORFOLK INTL", "EXECUTIVE", "CAIRNS AAF", "SNOHOMISH CO", "TYNDALL AFB", "PALM BEACH INTL", "PORTLAND INTL", "NEWPORT NEWS WILLIAMSBURG INTL", "PHILADELPHIA INTL", "PAPAGO AAF", "PHOENIX SKY HARBOR INTL", "GREATER PEORIA RGNL", "HATTIESBURG LAUREL RGNL", "ST PETE CLEARWATER INTL", "POCATELLO RGNL", "PORT ISABEL CAMERON CO", "PITTSBURGH INTL", "CALHOUN CO", "PALMDALE AF PLANT NR 42", "PONCA CITY RGNL", "PENSACOLA GULF COAST RGNL", "POPE AFB", "POLK AAF", "TRENT LOTT INTL", "PASO ROBLES MUNI", "MAC CRENSHAW MEM", "PERRY MUNI", "PORTALES MUNI", "TRI CITIES", "PEASE ANGS, NH", "PALACIOS MUNI", "PUEBLO MEM", "THEODORE FRANCIS GREEN STATE", "PAULS VALLEY MUNI", "HALE CO", "WILEY POST", "PORTLAND INTL JETPORT", "ROBINSON AAF", "ELLSWORTH AFB", "REDDING MUNI", "READING RGNL CARL A SPAATZ FLD", "GRAND FORKS AFB", "GREATER ROCKFORD", "BYRD FIELD, VA", "MARCH ARB, CA", "ARANSAS CO", "ROCK SPRINGS SWEETWATER CO", "GRIFFISS AIRFIELD", "RANDOLPH AFB", "RENO TAHOE INTL", "RENTON MUNI", "ROANOKE RGNL WOODRUM FLD", "ROSWELL INTL AIR CENTER", "ROCHESTER INTL", "SOUTHWEST FLORIDA INTL", "RAY S MILLER AAF", "RYAN FLD", "SACRAMENTO EXECUTIVE", "SANTA FE MUNI", "SAN ANTONIO INTL", "SAVANNAH HILTON HEAD INTL", "SAWYER INTL", "SALISBURY OCEAN CITY WICOMICO RGNL", "SCHENECTADY CO", "STOCKTON METRO", "LOUISVILLE INTL STANDIFORD FIELD, KY", "SEATTLE TACOMA INTL", "CRAIG FLD", "RANDOLPH AFB AUX", "SPRINGFIELD BRANSON NATL", "SPRINGFIELD-BECKLEY MUNICIPAL", "STUTTGART MUNI", "ST GEORGE MUNI", "SHELBY AUX FIELD", "SHREVEPORT RGNL", "SAN ANGELO RGNL MATHIS FLD", "FAIRCHILD AFB", "KELLY AFB", "SALT LAKE CITY INTL", "LOS ALAMITOS AAF", "HAGLER AAF", "SALINA MUNI", "SACRAMENTO INTL", "SALINAS MUNI", "ABRAHAM LINCOLN CAPITAL", "SHEPPARD AFB WICHITA FALLS MUNI", "SARASOTA BRADENTON INTL", "SHAW AFB", "STINSON MUNI", "MCKINNON ST SIMONS ISLAND", "SENECA AAF", "ROSECRANS MEMORIAL ARPT", "LAMBERT ST. LOUIS IAP", "SPIRIT OF ST LOUIS", "TRAVIS AFB", "SIOUX GATEWAY AIRPORT", "GRANT CO", "HUNTER AAF", "STEWART INTL", "STILLWATER RGNL", "HANCOCK FIELD, NY", "WHITEMAN AFB", "ALFRED C BUBBA THOMAS", "LAUGHLIN AFB AUX NR 1", "PERRY STOKES", "FORNEY AAF", "TUCUMCARI MUNI", "TUSCALOOSA RGNL", "MC CHORD AFB", "TRUTH OR CONSEQUENCES MUNI", "MC CAMPBELL PORTER", "TINKER AFB", "SPACE COAST RGNL", "TALLAHASSEE RGNL", "DADE COLLIER TRAINING AND TRANSITION", "TONOPAH TEST RANGE", "TROY MUNI", "TOLEDO EXPRESS, OH", "PHILIP BILLARD MUNI", "TONOPAH", "NASA SHUTTLE LANDING FACILITY", "TULSA INTERNATIONAL", "TUPELO RGNL", "TUCSON ANG", "LAKE TAHOE", "JOSLIN FLD MAGIC VALLEY RGNL", "TEXARKANA RGNL WEBB FLD", "MCGHEE TYSON", "TEMPLE BAR", "UNIVERSITY PARK", "GARNER FLD", "MOODY AFB", "VANDENBERG AFB", "VICTORIA RGNL", "VICTORVILLE", "SOUTHERN CALIFORNIA LOGISTICS", "NORTH LAS VEGAS", "VALDOSTA RGNL", "VOLK FIELD, WI", "EGLIN AFB", "CECIL FIELD NAS", "STANLY COUNTY", "CAMP PEARY LANDING STRIP", "WALLOPS FLIGHT FACILITY", "ENID WOODRING RGNL", "GENERAL WM J FOX AFLD", "WINNEMUCCA MUNI", "ROBINS AFB", "MC GUIRE AFB", "CONDRON AAF", "CAPE CANAVERAL AS SKID STRIP", "NORTHWEST ARKANSAS RGNL", "NORTH AF AUX", "McALLISTER FIELD", "YOUNGSTOWN WARREN REGIONAL, OH", "COMOX", "AUX FIELD 6 LANDING ZONE", "PACEMAKER LANDING ZONE", "SELAH CREEK LANDING ZONE", "SCHUYLKILL CO", "ZANESVILLE MUNICIPAL, OH", "FORT HARRISON AAF", "WARREN GROVE RANGE", "SWEETWATER", "BARTER ISLAND LRRS", "ALLEN AAF", "BIG MOUNTAIN AFS", "COLD BAY", "CAPE ROMANZOF LRRS", "ADAK", "MARSHALL DON HUNTER SR", "ELMENDORF AFB", "CAPE NEWENHAM LRRS", "EIELSON AFB", "FAIRBANKS INTL", "WAINWRIGHT AAF", "GRANITE MOUNTAIN AFS", "INDIAN MOUNTAIN LRRS", "KOYUK ALFRED ADAMS", "KING SALMON", "NIKOLSKI AS", "CAPE LISBURNE LRRS", "TED STEVENS ANCHORAGE INTL", "PORT CLARENCE CGS", "SPARREVOHN LRRS", "TIN CITY LRRS", "TATALINA LRRS", "WAINWRIGHT AS", "WHEELER AAF", "HICKAM AFB", "KANEOHE BAY MCAF", "FORD ISLAND NALF", "BRADSHAW AAF", "POINT LAY LRRS", "YOUNG LANDING ZONE", "EDWARDS AF AUX NORTH BASE", "COLUMBUS AFB AUX FIELD"]
    
    static let hiddenInputs = ["12NC": "ATLANTIC MCOLF", "13NC": "OAK GROVE MCOLF", "14NC": "CAMP DAVIS MCOLF", "22XS": "LONGHORN AUX LANDING STRIP", "23XS": "SHORTHORN AUX LANDING STRIP", "99CL": "EL MIRAGE FLD ADELANTO", "9TX5": "CAMP BULLIS ALS CALS", "CA62": "MC MILLAN ASSAULT STRIP", "CAU3": "CAMP OLIVER AAF", "CO80": "FOWLER", "CO90": "USAF ACADEMY BULLSEYE AUX", "CYBG": "BAGOTVILLE", "K09J": "JEKYLL ISLAND", "K0F2": "BOWIE MUNI", "K0L9": "ECHO BAY", "K11R": "BRENHAM MUNI", "K12J": "BREWTON MUNI", "K1R8": "BAY MINETTE MUNI", "K1V6": "FREMONT CO", "K24R": "DILLEY AIRPARK", "K2CB": "CAMP BLANDING AAF", "K3G5": "DAWSON AAF", "K3MY": "MT HAWLEY AUXILIARY", "K40J": "PERRY FOLEY", "K4V1": "SPANISH PEAKS", "K5T9": "MAVERICK CO MEM INTL", "K67L": "MESQUITE", "K79J": "SOUTH ALABAMA RGNL AT BILL BENTON FLD", "K92F": "CHATTANOOGA SKY HARBOR", "K95E": "STALLION AAF", "KAAA": "LOGAN CO", "KAAF": "APALACHICOLA RGNL", "KABE": "LEHIGH VALLEY INTL", "KABI": "ABILENE RGNL", "KABR": "ABERDEEN FLD", "KABY": "SOUTHWEST GEORGIA RGNL", "KACK": "NANTUCKET MEM", "KACT": "WACO RGNL", "KACY": "ATLANTIC CITY INTL", "KADM": "ARDMORE MUNI", "KADW": "ANDREWS AFB", "KAEG": "DOUBLE EAGLE II", "KAEX": "ALEXANDRIA INTL", "KAFF": "USAF ACADEMY AIRFIELD", "KAFW": "FORT WORTH ALLIANCE", "KAGR": "MACDILL AFB AUX FLD", "KAGS": "AUGUSTA RGNL AT BUSH FLD", "KAHC": "AMEDEE AAF", "KAHN": "ATHENS BEN EPPS", "KALB": "ALBANY INTL", "KALI": "ALICE INTL", "KALN": "ST LOUIS RGNL", "KAMA": "RICK HUSBAND AMARILLO INTERNATIONAL", "KAPA": "CENTENNIAL", "KAPG": "PHILLIPS AAF", "KAPH": "A P HILL AAF", "KAPN": "ALPENA CO REGIONAL, MI", "KARA": "ACADIANA RGNL", "KARR": "AURORA MUNI", "KATL": "HARTSFIELD JACKSON ATLANTA INTL", "KATS": "ARTESIA MUNI", "KAUS": "AUSTIN BERGSTROM INTL", "KAVK": "ALVA RGNL", "KAVL": "ASHEVILLE RGNL", "KAVO": "AVON PARK EXECUTIVE", "KAXX": "ANGEL FIRE", "KAYX": "ARNOLD AFB", "KAZU": "ARROWHEAD ASSAULT STRIP", "KBAB": "BEALE AFB", "KBAD": "BARKSDALE AFB", "KBAF": "BARNES MUNI", "KBAK": "COLUMBUS MUNICIPAL, IN", "KBAM": "BATTLE MOUNTAIN", "KBDL": "BRADLEY INTL ARPT", "KBEA": "BEEVILLE MUNI", "KBED": "LAURENCE G HANSCOM FLD", "KBFI": "BOEING FLD KING CO INTL", "KBFM": "MOBILE DOWNTOWN", "KBGE": "DECATUR CO INDUSTRIAL AIR PARK", "KBGM": "GREATER BINGHAMTON EDWIN A LINK FLD", "KBGR": "BANGOR INTL", "KBHM": "BIRMINGHAM INTL", "KBIF": "BIGGS AAF", "KBIH": "EASTERN SIERRA RGNL", "KBIL": "BILLINGS LOGAN INTL", "KBIS": "BISMARCK MUNI", "KBIX": "KEESLER AFB", "KBJC": "ROCKY MOUNTAIN METRO", "KBKF": "BUCKLEY AFB", "KBKN": "BLACKWELL TONKAWA MUNI", "KBKS": "BROOKS CO", "KBKT": "BLACKSTONE AAF ALLEN C PERKINSON MUNI", "KBLI": "BELLINGHAM INTL", "KBLV": "SCOTT AFB", "KBMG": "MONROE CO", "KBMI": "CENTRAL ILLINOIS RGNL", "KBNA": "NASHVILLE INTL ARPT", "KBOI": "BOISE AIR TERMINAL", "KBOS": "LOGAN INTL", "KBPT": "SOUTHEAST TEXAS RGNL", "KBQK": "BRUNSWICK GOLDEN ISLES", "KBRO": "BROWNSVILLE SOUTH PADRE ISLAND INTL", "KBTL": "W K KELLOGG", "KBTR": "BATON ROUGE METRO RYAN FLD", "KBTV": "BURLINGTON INTL", "KBVU": "BOULDER CITY MUNI", "KBWI": "BALTIMORE WASHINGTON INTL", "KBYS": "BICYCLE LAKE AAF", "KC75": "MARSHALL CO", "KCAE": "COLUMBIA METROPOLITAN", "KCAK": "AKRON CANTON RGNL", "KCBM": "COLUMBUS AFB", "KCDC": "CEDAR CITY RGNL", "KCEF": "WESTOVER ARB, MA", "KCEW": "BOB SIKES", "KCHA": "LOVELL FLD", "KCHK": "CHICKASHA MUNI", "KCHS": "CHARLESTON AFB INTL", "KCIC": "CHICO MUNI", "KCKA": "KEGELMAN AF AUX FIELD", "KCKB": "NORTH CENTRAL WEST VIRGINIA", "KCKP": "CHEROKEE MUNI", "KCLL": "EASTERWOOD FLD", "KCLT": "CHARLOTTE DOUGLAS INTL", "KCMH": "PORT COLUMBUS INTL ARPT", "KCMY": "SPARTA FORT MCCOY", "KCNM": "CAVERN CITY AIR TERMINAL", "KCNW": "TSTC WACO", "KCOF": "PATRICK AFB", "KCOS": "PETERSON AFB", "KCOU": "COLUMBIA RGNL", "KCPS": "ST LOUIS DOWNTOWN", "KCQF": "H L SONNY CALLAHAN", "KCRP": "CORPUS CHRISTI INTL", "KCRW": "MCLAUGHLIN ANGB", "KCSM": "CLINTON-SHERMAN", "KCVG": "CINCINNATI NORTHERN KENTUCKY INTL", "KCVN": "CLOVIS MUNI", "KCVS": "CANNON AFB", "KCWF": "CHENNAULT INTL", "KCXO": "LONE STAR EXECUTIVE", "KCYS": "CHEYENNE RGNL JERRY OLSON FLD", "KCZT": "DIMMIT CO", "KD05": "GARRISON MUNI", "KDAA": "DAVISON AAF", "KDAB": "DAYTONA BEACH INTL", "KDAL": "DALLAS LOVE FLD", "KDAY": "JAMES M COX DAYTON INTL", "KDEC": "DECATUR", "KDFW": "DALLAS FORT WORTH INTL", "KDHN": "DOTHAN RGNL", "KDHT": "DALHART MUNI", "KDLF": "LAUGHLIN AFB", "KDLH": "DULUTH INTL", "KDMA": "DAVIS MONTHAN AFB", "KDOV": "DOVER AFB", "KDPG": "MICHAEL AAF", "KDRO": "DURANGO LA PLATA CO", "KDRT": "DEL RIO", "KDSM": "DES MOINES INTL", "KDUC": "HALLIBURTON FLD", "KDUG": "BISBEE DOUGLAS INTL", "KDVL": "DEVILS LAKE RGNL", "KDWH": "DAVID WAYNE HOOKS MEM", "KDYS": "DYESS AFB", "KECG": "ELIZABETH CITY CGAS MUNI", "KECP": "NORTHWEST FLORIDA BEACHES INTL", "KECU": "EDWARDS CO", "KEDG": "WEIDE AHP", "KEDW": "EDWARDS AFB", "KEFD": "ELLINGTON FIELD, TX", "KEGE": "EAGLE CO RGNL", "KEGI": "EGLIN AF AUX NR 3 DUKE", "KEKO": "ELKO RGNL", "KELM": "ELMIRA CORNING RGNL", "KELP": "EL PASO INTL", "KEND": "VANCE AFB", "KENV": "WENDOVER", "KERI": "ERIE INTL TOM RIDGE FLD", "KEUF": "WEEDON FLD", "KEUG": "MAHLON SWEET FLD", "KEVV": "EVANSVILLE RGNL", "KEVY": "SUMMIT", "KFAF": "FELKER AAF", "KFAR": "HECTOR INTL", "KFAT": "FRESNO YOSEMITE INTL", "KFBG": "SIMMONS AAF", "KFCS": "BUTTS ARMY AIR FIELD", "KFCT": "VAGABOND AAF", "KFDK": "FREDERICK MUNICIPAL AIRPORT", "KFEW": "FE WARREN AFB", "KFFO": "WRIGHT-PATTERSON AFB", "KFHB": "FERNANDINA BEACH MUNI", "KFHU": "LIBBY AAF SIERRA VISTA MUNI", "KFLG": "FLAGSTAFF PULLIAM", "KFLV": "SHERMAN AAF", "KFLY": "MEADOW LAKE", "KFMH": "OTIS ANGB", "KFMN": "FOUR CORNERS RGNL", "KFOE": "FORBES FIELD", "KFOK": "FRANCIS S GABRESKI", "KFRI": "MARSHALL AAF", "KFSD": "JOE FOSS FIELD, SD", "KFSI": "HENRY POST ARMY AIR FIELD", "KFSM": "FORT SMITH RGNL", "KFST": "FORT STOCKTON PECOS CO", "KFTG": "FRONT RANGE", "KFTK": "GODMAN AAF", "KFTW": "FORT WORTH MEACHAM INTL", "KFWA": "FORT WAYNE INTL", "KFYM": "FAYETTEVILLE MUNI", "KFYV": "DRAKE FLD", "KGBG": "GALESBURG MUNI", "KGCK": "GARDEN CITY RGNL", "KGCN": "GRAND CANYON NATL PARK", "KGEG": "SPOKANE INTL", "KGFA": "MALMSTROM", "KGFK": "GRAND FORKS INTL", "KGGG": "EAST TEXAS REGIONAL", "KGJT": "GRAND JUNCTION RGNL", "KGLH": "MID DELTA RGNL", "KGNF": "GRENADA MUNICIPAL AIRPORT", "KGNT": "GRANTS MILAN MUNI", "KGNV": "GAINESVILLE RGNL", "KGOK": "GUTHRIE EDMOND RGNL", "KGON": "GROTON NEW LONDON", "KGOV": "GRAYLING AAF", "KGPI": "GLACIER PARK INTL", "KGPT": "GULFPORT BILOXI INTL", "KGRB": "AUSTIN STRAUBEL INTL", "KGRF": "GRAY AAF", "KGRI": "CENTRAL NEBRASKA RGNL", "KGRK": "ROBERT GRAY AAF", "KGRR": "GERALD R FORD INTL", "KGSB": "SEYMOUR JOHNSON AFB", "KGSO": "PIEDMONT TRIAD INTL", "KGSP": "GREENVILLE SPARTANBURG INTL", "KGTB": "WHEELER SACK AAF", "KGTF": "GREAT FALLS INTL", "KGTR": "GOLDEN TRIANGLE RGNL", "KGUP": "GALLUP MUNI", "KGUR": "CAMP GUERNSEY AAF", "KGUS": "GRISSOM ARB", "KGVT": "MAJORS ARPT", "KGXA": "GRAY BUTTE FLD", "KGXF": "GILA BEND AF AUX", "KHBG": "HATTIESBURG BOBBY L CHAIN MUNI", "KHBV": "JIM HOGG CO", "KHDC": "HAMMOND NORTHSHORE RGNL", "KHFF": "MACKALL AAF", "KHGR": "HAGERSTOWN RGNL RICHARD A HENSON FLD", "KHGT": "TUSI AHP", "KHIF": "HILL AFB", "KHKA": "BLYTHEVILLE MUNI", "KHLN": "HELENA RGNL", "KHLR": "HOOD AAF", "KHMN": "HOLLOMAN AFB", "KHND": "HENDERSON EXECUTIVE", "KHOB": "LEA CO RGNL", "KHOP": "CAMPBELL AAF", "KHRL": "VALLEY INTL", "KHRT": "HURLBURT FIELD", "KHRX": "HEREFORD MUNI", "KHSA": "STENNIS INTL", "KHST": "HOMESTEAD ARS, FL", "KHSV": "HUNTSVILLE INTL CARL T JONES FLD", "KHTH": "HAWTHORNE INDUSTRIAL", "KHUA": "REDSTONE AAF", "KHUF": "TERRE HAUTE INTL HULMAN FIELD, IN", "KHUT": "HUTCHINSON MUNI", "KIAB": "MCCONNELL AFB", "KIAG": "NIAGARA FALLS ARS, NY", "KICT": "WICHITA MID CONTINENT", "KIDA": "IDAHO FALLS RGNL", "KIKR": "KIRTLAND AFB, NM", "KILG": "NEW CASTLE", "KILM": "WILMINGTON INTL", "KINS": "CREECH AFB", "KISO": "KINSTON RGNL JETPORT AT STALLINGS FLD", "KIWA": "WILLIAMS GATEWAY", "KJAN": "JACKSON EVERS INTL", "KJAX": "JACKSONVILLE INTL ARPT", "KJCT": "KIMBLE CO", "KJKA": "JACK EDWARDS", "KJST": "JOHN MURTHA JOHNSTOWN CAMBRIA CO", "KJTC": "SPRINGERVILLE MUNI", "KJWG": "WATONGA RGNL", "KK02": "PERRYVILLE MUNI", "KL25": "PEARCE FERRY", "KLAA": "LAMAR MUNI", "KLAL": "LAKELAND LINDER RGNL", "KLAS": "MC CARRAN INTL", "KLAW": "LAWTON-FORT SILL REGIONAL", "KLBB": "LUBBOCK INTERNATIONAL", "KLCH": "LAKE CHARLES RGNL", "KLCK": "RICKENBACKER ANGB, OH", "KLCQ": "LAKE CITY MUNI", "KLFI": "LANGLEY AFB", "KLFT": "LAFAYETTE RGNL", "KLGF": "LAGUNA AAF", "KLHW": "WRIGHT AAF", "KLHX": "LA JUNTA MUNI", "KLIC": "LIMON MUNI", "KLIT": "ADAMS FLD", "KLMT": "KLAMATH FALLS", "KLNK": "LINCOLN MUNI ARPT", "KLNS": "LANCASTER", "KLRD": "LAREDO INTL", "KLRF": "LITTLE ROCK AFB", "KLSE": "LA CROSSE MUNICIPAL AIRPORT", "KLSF": "LAWSON AAF", "KLSV": "NELLIS AFB", "KLTS": "ALTUS AFB", "KLUF": "LUKE AFB", "KLVS": "LAS VEGAS MUNI", "KLWB": "GREENBRIER VALLEY", "KMAF": "MIDLAND INTERNATIONAL", "KMCE": "MERCED RGNL MACREADY FLD", "KMCF": "MACDILL AFB", "KMCI": "KANSAS CITY INTL", "KMCN": "MIDDLE GEORGIA RGNL", "KMDA": "MARTINDALE AAF", "KMDT": "HARRISBURG INTL", "KMDW": "CHICAGO MIDWAY INTL", "KMEI": "KEY FLD", "KMEM": "MEMPHIS INTL", "KMER": "CASTLE", "KMFD": "MANSFIELD LAHM REGIONAL, OH", "KMFE": "MC ALLEN MILLER INTL", "KMFR": "ROGUE VALLEY INTL MEDFORD", "KMGE": "DOBBINS ARB ATLANTA NAS", "KMGM": "MONTGOMERY RGNL", "KMHR": "SACRAMENTO MATHER", "KMHT": "MANCHESTER", "KMHV": "MOJAVE", "KMIB": "MINOT AFB", "KMKC": "CHARLES B WHEELER DOWNTOWN", "KMKE": "GENERAL MITCHELL IAP", "KMLI": "QUAD CITY INTL", "KMLU": "MONROE RGNL", "KMMH": "MAMMOTH YOSEMITE", "KMMT": "MC ENTIRE ANGS", "KMOB": "MOBILE RGNL", "KMOD": "MODESTO CITY", "KMOT": "MINOT INTL", "KMQB": "MACOMB MUNI", "KMRB": "SHEPHERD FIELD, WV", "KMRY": "MONTEREY PENINSULA", "KMSN": "TRUAX FIELD, WI", "KMSO": "MISSOULA INTL", "KMSP": "MINNEAPOLIS ST PAUL INTL", "KMSY": "LOUIS ARMSTRONG NEW ORLEANS INTL", "KMTC": "SELFRIDGE ANGB", "KMTN": "MARTIN STATE", "KMUI": "MUIR AAF", "KMUL": "SPENCE", "KMUO": "MOUNTAIN HOME AFB", "KMVY": "MARTHAS VINEYARD", "KMWA": "WILLIAMSON CO RGNL", "KMWH": "GRANT COUNTY INTL", "KMXF": "MAXWELL AFB", "KMYR": "MYRTLE BEACH INTL", "KNBC": "BEAUFORT MCAS", "KNBG": "NEW ORLEANS NAS JRB", "KNBJ": "BARIN NOLF", "KNCA": "NEW RIVER MCAS", "KNDY": "DAHLGREN USN SFC WAR CNTR", "KNDZ": "WHITING FLD NAS SOUTH", "KNEL": "LAKEHURST NAES", "KNEN": "WHITEHOUSE NOLF", "KNEW": "LAKEFRONT", "KNFD": "SUMMERDALE NOLF", "KNFE": "FENTRESS NALF", "KNFG": "CAMP PENDLETON MCAS", "KNFJ": "CHOCTAW NOLF", "KNFL": "FALLON NAS", "KNFW": "FORT WORTH NAS", "KNGP": "CORPUS CHRISTI NAS", "KNGS": "SANTA ROSA NOLF", "KNGT": "GOLIAD NOLF", "KNGU": "NORFOLK NAS", "KNGW": "CABANISS FLD NOLF", "KNHK": "PATUXENT RIVER NAS", "KNHL": "WOLF NOLF", "KNHZ": "BRUNSWICK NAS", "KNID": "CHINA LAKE NAWS", "KNIP": "JACKSONVILLE NAS", "KNJK": "EL CENTRO NAF", "KNJM": "BOGUE MCALF", "KNJW": "JOE WILLIAMS NOLF", "KNKL": "HOLLEY NOLF", "KNKT": "CHERRY POINT MCAS", "KNKX": "MIRAMAR MCAS", "KNLC": "LEMOORE NAS", "KNMM": "MERIDIAN NAS", "KNOG": "ORANGE GROVE NALF", "KNOW": "PORT ANGELES CGAS", "KNPA": "PENSACOLA NAS", "KNQA": "MILLINGTON RGNL JETPORT", "KNQB": "SILVERHILL NOLF", "KNQI": "KINGSVILLE NAS", "KNQX": "KEY WEST NAS", "KNRA": "COUPEVILLE NOLF", "KNRB": "MAYPORT NS", "KNRQ": "SPENCER NOLF", "KNSE": "WHITING FLD NAS NORTH", "KNSI": "SAN NICOLAS ISLAND NOLF", "KNTD": "POINT MUGU NAWS", "KNTU": "OCEANA NAS", "KNUC": "SAN CLEMENTE ISLAND NALF", "KNUI": "WEBSTER NOLF", "KNUN": "SAUFLEY FLD NOLF", "KNUQ": "MOFFETT FEDERAL AIRFIELD", "KNUW": "WHIDBEY ISLAND NAS", "KNVI": "PACE NOLF", "KNXP": "TWENTYNINE PALMS EAF", "KNXX": "WILLOW GROVE NAS", "KNYG": "QUANTICO MCAF", "KNYL": "YUMA MCAS YUMA INTL", "KNZX": "HAROLD NOLF", "KNZY": "NORTH ISLAND NAS", "KO53": "MEDFORD MUNI", "KOAJ": "ALBERT J ELLIS", "KOAK": "METROPOLITAN OAKLAND INTL", "KOCF": "OCALA INTL JIM TAYLOR FLD", "KODO": "ODESSA SCHLEMEYER FLD", "KOFF": "OFFUTT AFB", "KOGD": "OGDEN HINCKLEY", "KOKC": "WILL ROGERS WORLD", "KOMA": "EPPLEY AFLD", "KOQU": "QUONSET STATE", "KORF": "NORFOLK INTL", "KORL": "EXECUTIVE", "KOZR": "CAIRNS AAF", "KPAE": "SNOHOMISH CO", "KPAM": "TYNDALL AFB", "KPBI": "PALM BEACH INTL", "KPDX": "PORTLAND INTL", "KPHF": "NEWPORT NEWS WILLIAMSBURG INTL", "KPHL": "PHILADELPHIA INTL", "KPHX": "PHOENIX SKY HARBOR INTL", "KPIA": "GREATER PEORIA RGNL", "KPIB": "HATTIESBURG LAUREL RGNL", "KPIE": "ST PETE CLEARWATER INTL", "KPIH": "POCATELLO RGNL", "KPIL": "PORT ISABEL CAMERON CO", "KPIT": "PITTSBURGH INTL", "KPKV": "CALHOUN CO", "KPMD": "PALMDALE AF PLANT NR 42", "KPNC": "PONCA CITY RGNL", "KPNS": "PENSACOLA GULF COAST RGNL", "KPOB": "POPE AFB", "KPOE": "POLK AAF", "KPQL": "TRENT LOTT INTL", "KPRB": "PASO ROBLES MUNI", "KPRN": "MAC CRENSHAW MEM", "KPRO": "PERRY MUNI", "KPRZ": "PORTALES MUNI", "KPSC": "TRI CITIES", "KPSM": "PEASE ANGS, NH", "KPSX": "PALACIOS MUNI", "KPUB": "PUEBLO MEM", "KPVD": "THEODORE FRANCIS GREEN STATE", "KPVJ": "PAULS VALLEY MUNI", "KPVW": "HALE CO", "KPWA": "WILEY POST", "KPWM": "PORTLAND INTL JETPORT", "KRBM": "ROBINSON AAF", "KRCA": "ELLSWORTH AFB", "KRDD": "REDDING MUNI", "KRDG": "READING RGNL CARL A SPAATZ FLD", "KRDR": "GRAND FORKS AFB", "KRFD": "GREATER ROCKFORD", "KRIC": "BYRD FIELD, VA", "KRIV": "MARCH ARB, CA", "KRKP": "ARANSAS CO", "KRKS": "ROCK SPRINGS SWEETWATER CO", "KRME": "GRIFFISS AIRFIELD", "KRND": "RANDOLPH AFB", "KRNO": "RENO TAHOE INTL", "KRNT": "RENTON MUNI", "KROA": "ROANOKE RGNL WOODRUM FLD", "KROW": "ROSWELL INTL AIR CENTER", "KRST": "ROCHESTER INTL", "KRSW": "SOUTHWEST FLORIDA INTL", "KRYM": "RAY S MILLER AAF", "KRYN": "RYAN FLD", "KSAC": "SACRAMENTO EXECUTIVE", "KSAF": "SANTA FE MUNI", "KSAT": "SAN ANTONIO INTL", "KSAV": "SAVANNAH HILTON HEAD INTL", "KSAW": "SAWYER INTL", "KSBY": "SALISBURY OCEAN CITY WICOMICO RGNL", "KSCH": "SCHENECTADY CO", "KSCK": "STOCKTON METRO", "KSDF": "LOUISVILLE INTL STANDIFORD FIELD, KY", "KSEA": "SEATTLE TACOMA INTL", "KSEM": "CRAIG FLD", "KSEQ": "RANDOLPH AFB AUX", "KSGF": "SPRINGFIELD BRANSON NATL", "KSGH": "SPRINGFIELD-BECKLEY MUNICIPAL", "KSGT": "STUTTGART MUNI", "KSGU": "ST GEORGE MUNI", "KSH1": "SHELBY AUX FIELD", "KSHV": "SHREVEPORT RGNL", "KSJT": "SAN ANGELO RGNL MATHIS FLD", "KSKA": "FAIRCHILD AFB", "KSKF": "KELLY AFB", "KSLC": "SALT LAKE CITY INTL", "KSLI": "LOS ALAMITOS AAF", "KSLJ": "HAGLER AAF", "KSLN": "SALINA MUNI", "KSMF": "SACRAMENTO INTL", "KSNS": "SALINAS MUNI", "KSPI": "ABRAHAM LINCOLN CAPITAL", "KSPS": "SHEPPARD AFB WICHITA FALLS MUNI", "KSRQ": "SARASOTA BRADENTON INTL", "KSSC": "SHAW AFB", "KSSF": "STINSON MUNI", "KSSI": "MCKINNON ST SIMONS ISLAND", "KSSN": "SENECA AAF", "KSTJ": "ROSECRANS MEMORIAL ARPT", "KSTL": "LAMBERT ST. LOUIS IAP", "KSUS": "SPIRIT OF ST LOUIS", "KSUU": "TRAVIS AFB", "KSUX": "SIOUX GATEWAY AIRPORT", "KSVC": "GRANT CO", "KSVN": "HUNTER AAF", "KSWF": "STEWART INTL", "KSWO": "STILLWATER RGNL", "KSYR": "HANCOCK FIELD, NY", "KSZL": "WHITEMAN AFB", "KT69": "ALFRED C BUBBA THOMAS", "KT70": "LAUGHLIN AFB AUX NR 1", "KTAD": "PERRY STOKES", "KTBN": "FORNEY AAF", "KTCC": "TUCUMCARI MUNI", "KTCL": "TUSCALOOSA RGNL", "KTCM": "MC CHORD AFB", "KTCS": "TRUTH OR CONSEQUENCES MUNI", "KTFP": "MC CAMPBELL PORTER", "KTIK": "TINKER AFB", "KTIX": "SPACE COAST RGNL", "KTLH": "TALLAHASSEE RGNL", "KTNT": "DADE COLLIER TRAINING AND TRANSITION", "KTNX": "TONOPAH TEST RANGE", "KTOI": "TROY MUNI", "KTOL": "TOLEDO EXPRESS, OH", "KTOP": "PHILIP BILLARD MUNI", "KTPH": "TONOPAH", "KTTS": "NASA SHUTTLE LANDING FACILITY", "KTUL": "TULSA INTERNATIONAL", "KTUP": "TUPELO RGNL", "KTUS": "TUCSON ANG", "KTVL": "LAKE TAHOE", "KTWF": "JOSLIN FLD MAGIC VALLEY RGNL", "KTXK": "TEXARKANA RGNL WEBB FLD", "KTYS": "MCGHEE TYSON", "KU30": "TEMPLE BAR", "KUNV": "UNIVERSITY PARK", "KUVA": "GARNER FLD", "KVAD": "MOODY AFB", "KVBG": "VANDENBERG AFB", "KVCT": "VICTORIA RGNL", "KVCV": "VICTORVILLE", "KVGT": "NORTH LAS VEGAS", "KVLD": "VALDOSTA RGNL", "KVOK": "VOLK FIELD, WI", "KVPS": "EGLIN AFB", "KVQQ": "CECIL FIELD NAS", "KVUJ": "STANLY COUNTY", "KW94": "CAMP PEARY LANDING STRIP", "KWAL": "WALLOPS FLIGHT FACILITY", "KWDG": "ENID WOODRING RGNL", "KWJF": "GENERAL WM J FOX AFLD", "KWMC": "WINNEMUCCA MUNI", "KWRB": "ROBINS AFB", "KWRI": "MC GUIRE AFB", "KWSD": "CONDRON AAF", "KXMR": "CAPE CANAVERAL AS SKID STRIP", "KXNA": "NORTHWEST ARKANSAS RGNL", "KXNO": "NORTH AF AUX", "KYKM": "McALLISTER FIELD", "KYNG": "YOUNGSTOWN WARREN REGIONAL, OH", "KYQQ": "COMOX", "KZ  ": "AUX FIELD 6 LANDING ZONE", "KZ10": "PACEMAKER LANDING ZONE", "KZ99": "SELAH CREEK LANDING ZONE", "KZER": "SCHUYLKILL CO", "KZZV": "ZANESVILLE MUNICIPAL, OH", "MT15": "FORT HARRISON AAF", "NJ24": "WARREN GROVE RANGE", "NV72": "SWEETWATER", "PABA": "BARTER ISLAND LRRS", "PABI": "ALLEN AAF", "PABM": "BIG MOUNTAIN AFS", "PACD": "COLD BAY", "PACZ": "CAPE ROMANZOF LRRS", "PADK": "ADAK", "PADM": "MARSHALL DON HUNTER SR", "PAED": "ELMENDORF AFB", "PAEH": "CAPE NEWENHAM LRRS", "PAEI": "EIELSON AFB", "PAFA": "FAIRBANKS INTL", "PAFB": "WAINWRIGHT AAF", "PAGZ": "GRANITE MOUNTAIN AFS", "PAIM": "INDIAN MOUNTAIN LRRS", "PAKK": "KOYUK ALFRED ADAMS", "PAKN": "KING SALMON", "PAKO": "NIKOLSKI AS", "PALU": "CAPE LISBURNE LRRS", "PANC": "TED STEVENS ANCHORAGE INTL", "PAPC": "PORT CLARENCE CGS", "PASV": "SPARREVOHN LRRS", "PATC": "TIN CITY LRRS", "PATL": "TATALINA LRRS", "PAWT": "WAINWRIGHT AS", "PHHI": "WHEELER AAF", "PHIK": "HICKAM AFB", "PHNG": "KANEOHE BAY MCAF", "PHNP": "FORD ISLAND NALF", "PHSF": "BRADSHAW AAF", "PPIZ": "POINT LAY LRRS", "WS20": "YOUNG LANDING ZONE"]
    
    
    public enum Month: String {
        public var description: String { return self.rawValue}
        case january = "January"
        case february = "February"
        case march = "March"
        case april = "April"
        case may = "May"
        case june = "June"
        case july = "July"
        case august = "August"
        case september = "September"
        case october = "October"
        case november = "November"
        case december = "December"
    }
    
    static public func monthIntReturn(_ month: Month) -> String {
        switch month {
        case .january:
            return "1"
        case .february:
            return "2"
        case .march:
            return "3"
        case .april:
            return "4"
        case .may:
            return "5"
        case .june:
            return "6"
        case .july:
            return "7"
        case .august:
            return "8"
        case .september:
            return "9"
        case .october:
            return "10"
        case .november:
            return "11"
        case .december:
            return "12"
        }}
    
    public enum Day: String {
        public var description: String { return self.rawValue}
        case _1 = "1"
        case _2 = "2"
        case _3 = "3"
        case _4 = "4"
        case _5 = "5"
        case _6 = "6"
        case _7 = "7"
        case _8 = "8"
        case _9 = "9"
        case _10 = "10"
        case _11 = "11"
        case _12 = "12"
        case _13 = "13"
        case _14 = "14"
        case _15 = "15"
        case _16 = "16"
        case _17 = "17"
        case _18 = "18"
        case _19 = "19"
        case _20 = "20"
        case _21 = "21"
        case _22 = "22"
        case _23 = "23"
        case _24 = "24"
        case _25 = "25"
        case _26 = "26"
        case _27 = "27"
        case _28 = "28"
        case _29 = "29"
        case _30 = "30"
        case _31 = "31"
    }
    
    public enum Hour: String {
        public var description: String { return self.rawValue}
        case _0 = "0"
        case _1 = "1"
        case _2 = "2"
        case _3 = "3"
        case _4 = "4"
        case _5 = "5"
        case _6 = "6"
        case _7 = "7"
        case _8 = "8"
        case _9 = "9"
        case _10 = "10"
        case _11 = "11"
        case _12 = "12"
        case _13 = "13"
        case _14 = "14"
        case _15 = "15"
        case _16 = "16"
        case _17 = "17"
        case _18 = "18"
        case _19 = "19"
        case _20 = "20"
        case _21 = "21"
        case _22 = "22"
        case _23 = "23"
        case _24 = "24"
    }
    
    
    
}
