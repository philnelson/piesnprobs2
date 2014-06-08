math.random();
math.randomseed(os.time())
math.random(); math.random()

x = 0
startTime = 0
timeSince = 0
update = false

black = {0,0,0}
mainText = {255,255,255}
secondaryText = {200,200,200}
attackColor = {255,58,65}
defenseColor = {102,217,255}
techColor = {225,216,113}
hitpointColor = {115,255,126}
floorColor = {163,170,172}
wallColor = {57,59,60}

humanFirstNames = {'John', 'William', 'James', 'Charles', 'George', 'Frank', 'Joseph', 'Thomas', 'Henry', 'Robert', 'Edward', 'Harry', 'Walter', 'Arthur', 'Fred', 'Albert', 'Samuel', 'David', 'Louis', 'Joe', 'Charlie', 'Clarence', 'Richard', 'Andrew', 'Daniel', 'Ernest', 'Will', 'Jesse', 'Oscar', 'Lewis', 'Peter', 'Benjamin', 'Frederick', 'Willie', 'Alfred', 'Sam', 'Roy', 'Herbert', 'Jacob', 'Tom', 'Elmer', 'Carl', 'Lee', 'Howard', 'Martin', 'Michael', 'Bert', 'Herman', 'Jim', 'Francis', 'Harvey', 'Earl', 'Eugene', 'Ralph', 'Ed', 'Claude', 'Edwin', 'Ben', 'Charley', 'Paul', 'Edgar', 'Isaac', 'Otto', 'Luther', 'Lawrence', 'Ira', 'Patrick', 'Guy', 'Oliver', 'Theodore', 'Hugh', 'Clyde', 'Alexander', 'August', 'Floyd', 'Homer', 'Jack', 'Leonard', 'Horace', 'Marion', 'Philip', 'Allen', 'Archie', 'Stephen', 'Chester', 'Willis', 'Raymond', 'Rufus', 'Warren', 'Jessie', 'Milton', 'Alex', 'Leo', 'Julius', 'Ray', 'Sidney', 'Bernard', 'Dan', 'Jerry', 'Calvin', 'Perry', 'Dave', 'Anthony', 'Eddie', 'Amos', 'Dennis', 'Clifford', 'Leroy', 'Wesley', 'Alonzo', 'Garfield', 'Franklin', 'Emil', 'Leon', 'Nathan', 'Harold', 'Matthew', 'Levi', 'Moses', 'Everett', 'Lester', 'Winfield', 'Adam', 'Lloyd', 'Mack', 'Fredrick', 'Jay', 'Jess', 'Melvin', 'Noah', 'Aaron', 'Alvin', 'Norman', 'Gilbert', 'Elijah', 'Victor', 'Gus', 'Nelson', 'Jasper', 'Silas', 'Christopher', 'Jake', 'Mike', 'Percy', 'Adolph', 'Maurice', 'Cornelius', 'Felix', 'Reuben', 'Wallace', 'Claud', 'Roscoe', 'Sylvester', 'Earnest', 'Hiram', 'Otis', 'Simon', 'Willard', 'Irvin', 'Mark', 'Jose', 'Wilbur', 'Abraham', 'Virgil', 'Clinton', 'Elbert', 'Leslie', 'Marshall', 'Owen', 'Wiley', 'Anton', 'Morris', 'Manuel', 'Phillip', 'Augustus', 'Emmett', 'Eli', 'Nicholas', 'Wilson', 'Alva', 'Harley', 'Newton', 'Timothy', 'Marvin', 'Ross', 'Curtis', 'Edmund', 'Jeff', 'Elias', 'Harrison', 'Stanley', 'Columbus', 'Lon', 'Ora', 'Ollie', 'Russell', 'Pearl', 'Solomon', 'Arch', 'Asa', 'Clayton', 'Enoch', 'Irving', 'Mathew', 'Nathaniel', 'Scott', 'Hubert', 'Lemuel', 'Andy', 'Ellis', 'Emanuel', 'Joshua', 'Millard', 'Vernon', 'Wade', 'Cyrus', 'Miles', 'Rudolph', 'Sherman', 'Austin', 'Bill', 'Chas', 'Lonnie', 'Monroe', 'Byron', 'Edd', 'Emery', 'Grant', 'Jerome', 'Max', 'Mose', 'Steve', 'Gordon', 'Abe', 'Pete', 'Chris', 'Clark', 'Gustave', 'Orville', 'Lorenzo', 'Bruce', 'Marcus', 'Preston', 'Bob', 'Dock', 'Donald', 'Jackson', 'Cecil', 'Barney', 'Delbert', 'Edmond', 'Anderson', 'Christian', 'Glenn', 'Jefferson', 'Luke', 'Neal', 'Burt', 'Ike', 'Myron', 'Tony', 'Conrad', 'Joel', 'Matt', 'Riley', 'Vincent', 'Emory', 'Isaiah', 'Nick', 'Ezra', 'Green', 'Juan', 'Clifton', 'Lucius', 'Porter', 'Arnold', 'Bud', 'Jeremiah', 'Taylor', 'Forrest', 'Roland', 'Spencer', 'Burton', 'Don', 'Emmet', 'Gustav', 'Louie', 'Morgan', 'Ned', 'Van', 'Ambrose', 'Chauncey', 'Elisha', 'Ferdinand', 'General', 'Julian', 'Kenneth', 'Mitchell', 'Allie', 'Josh', 'Judson', 'Lyman', 'Napoleon', 'Pedro', 'Berry', 'Dewitt', 'Ervin', 'Forest', 'Lynn', 'Pink', 'Ruben', 'Sanford', 'Ward', 'Douglas', 'Ole', 'Omer', 'Ulysses', 'Walker', 'Wilbert', 'Adelbert', 'Benjiman', 'Ivan', 'Jonas', 'Major', 'Abner', 'Archibald', 'Caleb', 'Clint', 'Dudley', 'Granville', 'King', 'Mary', 'Merton', 'Antonio', 'Bennie', 'Carroll', 'Freeman', 'Josiah', 'Milo', 'Royal', 'Dick', 'Earle', 'Elza', 'Emerson', 'Fletcher', 'Judge', 'Laurence', 'Neil', 'Roger', 'Seth', 'Glen', 'Hugo', 'Jimmie', 'Johnnie', 'Washington', 'Elwood', 'Gust', 'Harmon', 'Jordan', 'Simeon', 'Wayne', 'Wilber', 'Clem', 'Evan', 'Frederic', 'Irwin', 'Junius', 'Lafayette', 'Loren', 'Madison', 'Mason', 'Orval', 'Abram', 'Aubrey', 'Elliott', 'Hans', 'Karl', 'Minor', 'Wash', 'Wilfred', 'Allan', 'Alphonse', 'Dallas', 'Dee', 'Isiah', 'Jason', 'Johnny', 'Lawson', 'Lew', 'Micheal', 'Orin', 'Addison', 'Cal', 'Erastus', 'Francisco', 'Hardy', 'Lucien', 'Randolph', 'Stewart', 'Vern', 'Wilmer', 'Zack', 'Adrian', 'Alvah', 'Bertram', 'Clay', 'Ephraim', 'Fritz', 'Giles', 'Grover', 'Harris', 'Isom', 'Jesus', 'Johnie', 'Jonathan', 'Lucian', 'Malcolm', 'Merritt', 'Otho', 'Perley', 'Rolla', 'Sandy', 'Tomas', 'Wilford', 'Adolphus', 'Angus', 'Arther', 'Carlos', 'Cary', 'Cassius', 'Davis', 'Hamilton', 'Harve', 'Israel', 'Leander', 'Melville', 'Merle', 'Murray', 'Pleasant', 'Sterling', 'Steven', 'Axel', 'Boyd', 'Bryant', 'Clement', 'Erwin', 'Ezekiel', 'Foster', 'Frances', 'Geo', 'Houston', 'Issac', 'Jules', 'Larkin', 'Mat', 'Morton', 'Orlando', 'Pierce', 'Prince', 'Rollie', 'Rollin', 'Sim', 'Stuart', 'Wilburn', 'Bennett', 'Casper', 'Christ', 'Dell', 'Egbert', 'Elmo', 'Fay', 'Gabriel', 'Hector', 'Horatio', 'Lige', 'Saul', 'Smith', 'Squire', 'Tobe', 'Tommie', 'Wyatt', 'Alford', 'Alma', 'Alton', 'Andres', 'Burl', 'Cicero', 'Dean', 'Dorsey', 'Enos', 'Howell', 'Lou', 'Loyd', 'Mahlon', 'Nat', 'Omar', 'Oran', 'Parker', 'Raleigh', 'Reginald', 'Rubin', 'Seymour', 'Wm', 'Young', 'Benjamine', 'Carey', 'Carlton', 'Eldridge', 'Elzie', 'Garrett', 'Isham', 'Johnson', 'Larry', 'Logan', 'Merrill', 'Mont', 'Oren', 'Pierre', 'Rex', 'Rodney', 'Ted', 'Webster', 'West', 'Wheeler', 'Willam', 'Al', 'Aloysius', 'Alvie', 'Anna', 'Art', 'Augustine', 'Bailey', 'Benjaman', 'Beverly', 'Bishop', 'Clair', 'Cloyd', 'Coleman', 'Dana', 'Duncan', 'Dwight', 'Emile', 'Evert', 'Henderson', 'Hunter', 'Jean', 'Lem', 'Luis', 'Mathias', 'Maynard', 'Miguel', 'Mortimer', 'Nels', 'Norris', 'Pat', 'Phil', 'Rush', 'Santiago', 'Sol', 'Sydney', 'Thaddeus', 'Thornton', 'Tim', 'Travis', 'Truman', 'Watson', 'Webb', 'Wellington', 'Winfred', 'Wylie', 'Alec', 'Basil', 'Baxter', 'Bertrand', 'Buford', 'Burr', 'Cleveland', 'Colonel', 'Dempsey', 'Early', 'Ellsworth', 'Fate', 'Finley', 'Gabe', 'Garland', 'Gerald', 'Herschel', 'Hezekiah', 'Justus', 'Lindsey', 'Marcellus', 'Olaf', 'Olin', 'Pablo', 'Rolland', 'Turner', 'Verne', 'Volney', 'Williams', 'Almon', 'Alois', 'Alonza', 'Anson', 'Authur', 'Benton', 'Billie', 'Cornelious', 'Darius', 'Denis', 'Dillard', 'Doctor', 'Elvin', 'Emma', 'Eric', 'Evans', 'Gideon', 'Haywood', 'Hilliard', 'Hosea', 'Lincoln', 'Lonzo', 'Lucious', 'Lum', 'Malachi', 'Newt', 'Noel', 'Orie', 'Palmer', 'Pinkney', 'Shirley', 'Sumner', 'Terry', 'Urban', 'Uriah', 'Valentine', 'Waldo', 'Warner', 'Wong', 'Zeb', 'Abel', 'Alden', 'Archer', 'Avery', 'Carson', 'Cullen', 'Doc', 'Eben', 'Elige', 'Elizabeth', 'Elmore', 'Ernst', 'Finis', 'Freddie', 'Godfrey', 'Guss', 'Hamp', 'Hermann', 'Isadore', 'Isreal', 'Jones', 'June', 'Lacy', 'Lafe', 'Leland', 'Llewellyn', 'Ludwig', 'Manford', 'Maxwell', 'Minnie', 'Obie', 'Octave', 'Orrin', 'Ossie', 'Oswald', 'Park', 'Parley', 'Ramon', 'Rice', 'Stonewall', 'Theo', 'Tillman', 'Addie', 'Aron', 'Ashley', 'Bernhard', 'Bertie', 'Berton', 'Buster', 'Butler', 'Carleton', 'Carrie', 'Clara', 'Clarance', 'Clare', 'Crawford', 'Danial', 'Dayton', 'Dolphus', 'Elder', 'Ephriam', 'Fayette', 'Felipe', 'Fernando', 'Flem', 'Florence', 'Ford', 'Harlan', 'Hayes', 'Henery', 'Hoy', 'Huston', 'Ida', 'Ivory', 'Jonah', 'Justin', 'Lenard', 'Leopold', 'Lionel', 'Manley', 'Marquis', 'Marshal', 'Mart', 'Odie', 'Olen', 'Oral', 'Orley', 'Otha', 'Press', 'Price', 'Quincy', 'Randall', 'Rich', 'Richmond', 'Romeo', 'Russel', 'Rutherford', 'Shade', 'Shelby', 'Solon', 'Thurman', 'Tilden', 'Troy', 'Woodson', 'Worth', 'Aden', 'Alcide', 'Alf', 'Algie', 'Arlie', 'Bart', 'Bedford', 'Benito', 'Billy', 'Bird', 'Birt', 'Bruno', 'Burley', 'Chancy', 'Claus', 'Cliff', 'Clovis', 'Connie', 'Creed', 'Delos', 'Duke', 'Eber', 'Eligah', 'Elliot', 'Elton', 'Emmitt', 'Gene', 'Golden', 'Hal', 'Hardin', 'Harman', 'Hervey', 'Hollis', 'Ivey', 'Jennie', 'Len', 'Lindsay', 'Lonie', 'Lyle', 'Mac', 'Mal', 'Math', 'Miller', 'Orson', 'Osborne', 'Percival', 'Pleas', 'Ples', 'Rafael', 'Raoul', 'Roderick', 'Rose', 'Shelton', 'Sid', 'Theron', 'Tobias', 'Toney', 'Tyler', 'Vance', 'Vivian', 'Walton', 'Watt', 'Weaver', 'Wilton', 'Adolf', 'Albin', 'Albion', 'Allison', 'Alpha', 'Alpheus', 'Anastacio', 'Andre', 'Annie', 'Arlington', 'Armand', 'Asberry', 'Asbury', 'Asher', 'Augustin', 'Auther', 'Author', 'Ballard', 'Blas', 'Caesar', 'Candido', 'Cato', 'Clarke', 'Clemente', 'Colin', 'Commodore', 'Cora', 'Coy', 'Cruz', 'Curt', 'Damon', 'Davie', 'Delmar', 'Dexter', 'Dora'}
humanLastNames = {'SMITH','JOHNSON','WILLIAMS','JONES','BROWN','DAVIS','MILLER','WILSON','MOORE','TAYLOR','ANDERSON','THOMAS','JACKSON','WHITE','HARRIS','MARTIN','THOMPSON','GARCIA','MARTINEZ','ROBINSON','CLARK','RODRIGUEZ','LEWIS','LEE','WALKER','HALL','ALLEN','YOUNG','HERNANDEZ','KING','WRIGHT','LOPEZ','HILL','SCOTT','GREEN','ADAMS','BAKER','GONZALEZ','NELSON','CARTER','MITCHELL','PEREZ','ROBERTS','TURNER','PHILLIPS','CAMPBELL','PARKER','EVANS','EDWARDS','COLLINS','STEWART','SANCHEZ','MORRIS','ROGERS','REED','COOK','MORGAN','BELL','MURPHY','BAILEY','RIVERA','COOPER','RICHARDSON','COX','HOWARD','WARD','TORRES','PETERSON','GRAY','RAMIREZ','JAMES','WATSON','BROOKS','KELLY','SANDERS','PRICE','BENNETT','WOOD','BARNES','ROSS','HENDERSON','COLEMAN','JENKINS','PERRY','POWELL','LONG','PATTERSON','HUGHES','FLORES','WASHINGTON','BUTLER','SIMMONS','FOSTER','GONZALES','BRYANT','ALEXANDER','RUSSELL','GRIFFIN','DIAZ','HAYES','MYERS','FORD','HAMILTON','GRAHAM','SULLIVAN','WALLACE','WOODS','COLE','WEST','JORDAN','OWENS','REYNOLDS','FISHER','ELLIS','HARRISON','GIBSON','MCDONALD','CRUZ','MARSHALL','ORTIZ','GOMEZ','MURRAY','FREEMAN','WELLS','WEBB','SIMPSON','STEVENS','TUCKER','PORTER','HUNTER','HICKS','CRAWFORD','HENRY','BOYD','MASON','MORALES','KENNEDY','WARREN','DIXON','RAMOS','REYES','BURNS','GORDON','SHAW','HOLMES','RICE','ROBERTSON','HUNT','BLACK','DANIELS','PALMER','MILLS','NICHOLS','GRANT','KNIGHT','FERGUSON','ROSE','STONE','HAWKINS','DUNN','PERKINS','HUDSON','SPENCER','GARDNER','STEPHENS','PAYNE','PIERCE','BERRY','MATTHEWS','ARNOLD','WAGNER','WILLIS','RAY','WATKINS','OLSON','CARROLL','DUNCAN','SNYDER','HART','CUNNINGHAM','BRADLEY','LANE','ANDREWS','RUIZ','HARPER','FOX','RILEY','ARMSTRONG','CARPENTER','WEAVER','GREENE','LAWRENCE','ELLIOTT','CHAVEZ','SIMS','AUSTIN','PETERS','KELLEY','FRANKLIN','LAWSON','FIELDS','GUTIERREZ','RYAN','SCHMIDT','CARR','VASQUEZ','CASTILLO','WHEELER','CHAPMAN','OLIVER','MONTGOMERY','RICHARDS','WILLIAMSON','JOHNSTON','BANKS','MEYER','BISHOP','MCCOY','HOWELL','ALVAREZ','MORRISON','HANSEN','FERNANDEZ','GARZA','HARVEY','LITTLE','BURTON','STANLEY','NGUYEN','GEORGE','JACOBS','REID','KIM','FULLER','LYNCH','DEAN','GILBERT','GARRETT','ROMERO','WELCH','LARSON','FRAZIER','BURKE','HANSON','DAY','MENDOZA','MORENO','BOWMAN','MEDINA','FOWLER','BREWER','HOFFMAN','CARLSON','SILVA','PEARSON','HOLLAND','DOUGLAS','FLEMING','JENSEN','VARGAS','BYRD','DAVIDSON','HOPKINS','MAY','TERRY','HERRERA','WADE','SOTO','WALTERS','CURTIS','NEAL','CALDWELL','LOWE','JENNINGS','BARNETT','GRAVES','JIMENEZ','HORTON','SHELTON','BARRETT','OBRIEN','CASTRO','SUTTON','GREGORY','MCKINNEY','LUCAS','MILES','CRAIG','RODRIQUEZ','CHAMBERS','HOLT','LAMBERT','FLETCHER','WATTS','BATES','HALE','RHODES','PENA','BECK','NEWMAN','HAYNES','MCDANIEL','MENDEZ','BUSH','VAUGHN','PARKS','DAWSON','SANTIAGO','NORRIS','HARDY','LOVE','STEELE','CURRY','POWERS','SCHULTZ','BARKER','GUZMAN','PAGE','MUNOZ','BALL','KELLER','CHANDLER','WEBER','LEONARD','WALSH','LYONS','RAMSEY','WOLFE','SCHNEIDER','MULLINS','BENSON','SHARP'}

orcFirstNames = {'Alog','Akog','Azok','Balrok','Borash','Graz'}
orcLastNames = {'Ghoth','Bolgar','Cook','Defeiz','Growlak'}

tileW, tileH = 8,8

playerStatRanges = {{5,20},{1,4},{1,4},{1,4}}

playerStats = {0, math.random(playerStatRanges[2][1],playerStatRanges[2][2]), math.random(playerStatRanges[3][1],playerStatRanges[3][2]), math.random(playerStatRanges[4][1],playerStatRanges[4][2])}

playerInventory = {}
playerInventory['arrows'] = { 5 }

playerStats[1] = (playerStats[2] * playerStats[4]) * 2

playerPos = {32,96}

overallVolume = 0.5

arrowShootSound = love.audio.newSource("assets/regular_arrow.wav", "static")
arrowHitWall = love.audio.newSource("assets/arrow_hit_wall.wav", "static")
arrowHitGuy = love.audio.newSource("assets/arrow_hit_guy.wav", "static")
orcDeath = love.audio.newSource("assets/death.wav", "static")
fatalHit = love.audio.newSource("assets/fatal_hit.wav", "static")
arrowGetSound = love.audio.newSource("assets/arrow_get.wav", "static")
backgroundMusic = love.audio.newSource("assets/04 Town.mp3", "static")
backgroundMusic:setLooping(true)

arrowShootSound:setVolume(overallVolume)
arrowHitWall:setVolume(overallVolume)
arrowHitGuy:setVolume(overallVolume)
orcDeath:setVolume(overallVolume)
fatalHit:setVolume(overallVolume)
arrowGetSound:setVolume(overallVolume)

projectiles = {}

deltatime = 0

mobs = {}

-- type, name, x, y, str, def, tech, hp, status, quad, direction
mobs[1] = {1,orcFirstNames[math.random(table.getn(orcFirstNames))],128,320,4,4,2,10,1,1,1, orcFirstNames[math.random(table.getn(orcLastNames))]}

mapDimensions = {32,24}

currentFPS = 60

occupiedTiles = {}

projectileX = 0

mobX = 128

battlefieldIndicators = {}

-- First three rows are reserved for system stuff. Use at your peril!
mapTiles = {{1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
{1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
{2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2},-- now you can use stuff
{2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2}, 
{2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2}, 
{2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2}, 
{2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2}, 
{2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2}, 
{2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2}, 
{2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2}, 
{2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2},
{2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2}, 
{2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2}, 
{2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2}, 
{2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2},
{2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2}, 
{2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2}, 
{2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2}, 
{2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2},
{2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2}, 
{2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2}, 
{2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2}, 
{2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2},
{2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2},}

maxRoomSize = {10,7}

rooms = {}

numberOfRooms = math.floor((mapDimensions[1] * mapDimensions[2]) / (maxRoomSize[1] * maxRoomSize[2]))


rooms[1] = {3,1,13,11}

function love.load()
	love.window.setMode( 1024, 768 )
	
	--backgroundMusic:play();
	
	playerSprite = math.random(2)
	
	love.graphics.setDefaultFilter( 'nearest', 'nearest' )
	primaryFont = love.graphics.newFont( 'assets/gbb__.ttf', 26 )
	hitpointFont = love.graphics.newFont( 'assets/gbb__.ttf', 72 )
	love.graphics.setFont(primaryFont);
	
	playerDirections = {}
	
	playerTileSet = love.graphics.newImage( 'assets/player.png' )
	local tilesetW, tilesetH = playerTileSet:getWidth(), playerTileSet:getHeight()
	
	playerRight = love.graphics.newQuad(0,  0 + (playerSprite * tileH) - 8, tileW, tileH, tilesetW, tilesetH)
	playerDown = love.graphics.newQuad(8, 0 + (playerSprite * tileH) - 8, tileW, tileH, tilesetW, tilesetH)
	playerLeft = love.graphics.newQuad(16, 0 + (playerSprite * tileH) - 8, tileW, tileH, tilesetW, tilesetH)
	playerUp = love.graphics.newQuad(24, 0 + (playerSprite * tileH) - 8, tileW, tileH, tilesetW, tilesetH)
	
	playerDirections[1] = playerRight
	playerDirections[2] = playerDown
	playerDirections[3] = playerLeft
	playerDirections[4] = playerUp
	
	playerDirection = {1,playerDirections[1]}
	
	playerFirstName = humanFirstNames[math.random(table.getn(humanFirstNames))]
	playerLastName = humanLastNames[math.random(table.getn(humanLastNames))]
	
	arrowQuads = {}
	
	arrowQuads[1] = love.graphics.newQuad(0,  16, tileW, tileH, tilesetW, tilesetH)
	arrowQuads[2] = love.graphics.newQuad(8,  16, tileW, tileH, tilesetW, tilesetH)
	arrowQuads[3] = love.graphics.newQuad(16,  16, tileW, tileH, tilesetW, tilesetH)
	arrowQuads[4] = love.graphics.newQuad(24,  16, tileW, tileH, tilesetW, tilesetH)
	
	mapQuads = {}
	
	mapQuads[1] = love.graphics.newQuad(0,  24, tileW, tileH, tilesetW, tilesetH)
	mapQuads[2] = love.graphics.newQuad(8,  24, tileW, tileH, tilesetW, tilesetH)
	
	mobQuads = {}
	
	mobQuads['orc'] = {}
	
	mobQuads['orc'][1] = love.graphics.newQuad(0,  32, tileW, tileH, tilesetW, tilesetH)
	mobQuads['orc'][2] = love.graphics.newQuad(8,  32, tileW, tileH, tilesetW, tilesetH)
	mobQuads['orc'][3] = love.graphics.newQuad(16,  32, tileW, tileH, tilesetW, tilesetH)
	mobQuads['orc'][4] = love.graphics.newQuad(24,  32, tileW, tileH, tilesetW, tilesetH)
	mobQuads['orc'][5] = love.graphics.newQuad(0,  40, tileW, tileH, tilesetW, tilesetH) 
	
   
end

function love.draw()
	
	love.graphics.setColor(255,255,255,255)
	
	for i,v in ipairs(rooms) do
		for foo=rooms[i][1], rooms[i][3],1 do
			--love.graphics.draw(playerTileSet, mapQuads[2], (foo-1)*32, rooms[i][2]*32,0,4,4)
			mapTiles[foo][rooms[i][2]] = 2
		end
		for foo=rooms[i][2], rooms[i][4],1 do
			--love.graphics.draw(playerTileSet, mapQuads[2], (foo-1)*32, rooms[i][2]*32,0,4,4)
			mapTiles[rooms[i][1]][foo] = 2
		end
		for foo=rooms[i][2], rooms[i][4],1 do
			--love.graphics.draw(playerTileSet, mapQuads[2], (foo-1)*32, rooms[i][2]*32,0,4,4)
			mapTiles[rooms[i][3]][foo] = 2
		end
		for foo=rooms[i][1], rooms[i][3],1 do
			--love.graphics.draw(playerTileSet, mapQuads[2], (foo-1)*32, rooms[i][2]*32,0,4,4)
			mapTiles[foo][rooms[i][4]] = 2
		end
	end
	
	drawMap()
	
	drawArrows()
	checkHits(deltatime)
	
	love.graphics.draw(playerTileSet, playerDirection[2], playerPos[1], playerPos[2],0,4,4)
	drawMobs()
	
	
	checkBattlefieldIndicators(deltatime)
	

	love.graphics.setColor(mainText)
	love.graphics.print(playerFirstName, 20, 10)
	love.graphics.setColor(secondaryText)
	love.graphics.print(playerLastName, 20, 30)

	love.graphics.setColor(hitpointColor)
	love.graphics.setFont(hitpointFont);
	love.graphics.print("HP  " .. tostring(playerStats[1]) , 410, -5)
	
	love.graphics.setFont(primaryFont);
	love.graphics.setColor(attackColor)
	love.graphics.print("ATK  " .. tostring(playerStats[2]) , 200, 10)
	love.graphics.setColor(defenseColor)
	love.graphics.print("DEF  " .. tostring(playerStats[3]) , 200, 30)
	love.graphics.setColor(techColor)
	love.graphics.print("SKILL  " .. tostring(playerStats[4]) , 300, 10)
	love.graphics.setColor(techColor)
	love.graphics.print("AMMO  " .. tostring(playerInventory['arrows'][1]) , 300, 30)
	love.graphics.print(tostring(numberOfRooms), 700, 30)
	
end

function drawMap()
		for foo=1,mapDimensions[1],1 do
			for bar=3,mapDimensions[2],1 do
					love.graphics.draw(playerTileSet, mapQuads[mapTiles[bar][foo]], foo*(tileW*4)-32, bar*(tileH*4)-32,0,4,4)
			end
		end
end

function drawMobs()
	for i, v in ipairs(mobs) do
		love.graphics.draw(playerTileSet, mobQuads['orc'][mobs[i][10]], mobs[i][3], mobs[i][4],0,4,4)
	end
end

function drawArrows()
	for i, v in ipairs(projectiles) do
		
		local coords = {(projectiles[i][3]+32)/32, (projectiles[i][4]+32)/32}
		
		-- are we live?
		if projectiles[i][1] ~= 3 then
			-- are we hitting a wall?
			previousStatus = projectiles[i][1]
			if projectiles[i][2] == 1 then
				if mapTiles[coords[2]][coords[1] + 1] == 2 then
					projectiles[i][1] = 2
					if previousStatus == 1 then
						arrowHitWall:play()
					end
				end
			end
			if projectiles[i][2] == 2 then
				if mapTiles[coords[2] + 1][coords[1]] == 2 then
					projectiles[i][1] = 2
					if previousStatus == 1 then
						arrowHitWall:play()
					end
				end
			end
			if projectiles[i][2] == 3 then
				if mapTiles[coords[2]][coords[1] - 1] == 2 then
					projectiles[i][1] = 2
					if previousStatus == 1 then
						arrowHitWall:play()
					end
				end
			end
			if projectiles[i][2] == 4 then
				if mapTiles[coords[2] - 1][coords[1]] == 2 then
					projectiles[i][1] = 2
					if previousStatus == 1 then
						arrowHitWall:play()
					end
				end
			end
			-- Check if arrow is moving
			if projectiles[i][1] == 1 then
			
				if projectiles[i][2] == 1 then
					projectiles[i][3] = projectiles[i][3] + 32
				end
				if projectiles[i][2] == 2 then
					projectiles[i][4] = projectiles[i][4] + 32
				end
				if projectiles[i][2] == 3 then
					projectiles[i][3] = projectiles[i][3] - 32
				end
				if projectiles[i][2] == 4 then
					projectiles[i][4] = projectiles[i][4] - 32
				end
			end
			love.graphics.draw(playerTileSet, arrowQuads[projectiles[i][2]], projectiles[i][3], projectiles[i][4],0,4,4)
			projectileX = projectiles[i][1]
		end
	end
end

function checkHits(delta)
	for i, v in ipairs(projectiles) do
		for j, w in ipairs(mobs) do
			local previousStatus = projectiles[i][1]
			if projectiles[i][3] == mobs[j][3] and projectiles[i][4] == mobs[j][4] then
				if previousStatus == 1 then
					-- str def tech hp
					mobs[j][8] = math.floor(mobs[j][8] - ((mobs[j][6] * 0.5) * playerStats[2]))
					if(mobs[j][8] <= 0) and mobs[j][9] == 1 then
						killMob(j)
					end
					
					if mobs[j][9] == 1 then
						arrowHitGuy:play()
						projectiles[i][1] = 2
						previousStatus = 2
						love.graphics.setColor(attackColor)
						battlefieldIndicators[table.getn(battlefieldIndicators)+1] = {"-" .. tostring(mobs[j][8]),projectiles[i][3],projectiles[i][4], love.timer.getTime()}
					end
				end
				
			end
		end
	end
end

function love.update(dt)
	deltatime = deltatime + dt
	if dt < 1/currentFPS then
		love.timer.sleep(1/currentFPS - dt)
	end
end

function is_it_even(some_number)
    return some_number % 2 == 0
end


function love.mousepressed(x, y, button)
   if button == 'l' then
	   checkClick(x,y,button)
   end
end

function love.keypressed( key, isrepeat )
	if key == 'right' then
		movePlayer(1)
	end
	if key == 'down' then
		movePlayer(2)
	end
	if key == 'left' then
		movePlayer(3)
	end
	if key == 'up' then
		movePlayer(4)
	end
	
	if key == ' ' then
		
		if playerInventory['arrows'][1] > 0 then
			playerInventory['arrows'][1] = playerInventory['arrows'][1] - 1
			arrowShootSound:play()
			-- Statuses: 1 = live and out, 2 = dead and out, 3 = quivered 
			projectiles[table.getn(projectiles)+1] = {1,playerDirection[1],playerPos[1],playerPos[2]}
			projectileX = playerPos[1]
		end
		
	end
end

function checkClick(x,y,button)
	for i, v in ipairs(mobs) do
		
	end
end

function killMob(mobId)
	delta = love.timer.getDelta()
	mobs[mobId][9] = 0
	mobs[mobId][10] = 5
	orcDeath:play()
	fatalHit:play()
	battlefieldIndicators[table.getn(battlefieldIndicators)+1] = {"im goast",mobs[mobId][3],mobs[mobId][4], love.timer.getTime()}
end

function movePlayer(direction)
	
	local requestedPos = {(playerPos[1]+32)/32, (playerPos[2]+32)/32}
	
	if direction == 1 then
		if mapTiles[requestedPos[2]][requestedPos[1] + 1] ~= 2 then
			playerDirection = {1,playerDirections[1]}
			playerPos[1] = playerPos[1] + 32
		end
	end
	if direction == 2 then
		if mapTiles[requestedPos[2] + 1][requestedPos[1]] ~= 2 then
			playerDirection = {2,playerDirections[2]}
			playerPos[2] = playerPos[2] + 32
		end
	end
	
	if direction == 3 then
		if mapTiles[requestedPos[2]][requestedPos[1] - 1] ~= 2 then
			playerDirection = {3,playerDirections[3]}
			playerPos[1] = playerPos[1] - 32
		end
	end
	
	if direction == 4 then
		if mapTiles[requestedPos[2] - 1][requestedPos[1]] ~= 2 then
			playerDirection = {4,playerDirections[4]}
			playerPos[2] = playerPos[2] - 32
		end	
	end
	
	checkPickups()
	
end

function checkPickups()
	dt = love.timer.getDelta( )
	totalArrows = 0
	for i, v in ipairs(projectiles) do
		if playerPos[1] == projectiles[i][3] and playerPos[2] == projectiles[i][4] and projectiles[i][1] ~= 3 then
			arrowGetSound:play()
			projectiles[i][1] = 3
			playerInventory['arrows'][1] = playerInventory['arrows'][1] + 1
			totalArrows = totalArrows + 1
		end
	end
	
	if totalArrows > 0 then
		if totalArrows > 1 then
			battlefieldIndicators[table.getn(battlefieldIndicators)+1] = {"Arrow get!! x" .. tostring(totalArrows),playerPos[1],playerPos[2], love.timer.getTime()}
		else
			battlefieldIndicators[table.getn(battlefieldIndicators)+1] = {"Arrow get!!",playerPos[1],playerPos[2], love.timer.getTime()}
		end
	end
end

function checkBattlefieldIndicators(delta)
	local currentTime = love.timer.getTime()
	for i, v in ipairs(battlefieldIndicators) do
		if (currentTime - battlefieldIndicators[i][4]) < 1 then
			love.graphics.setColor(black,50)
			love.graphics.print(battlefieldIndicators[i][1], battlefieldIndicators[i][2]-3, battlefieldIndicators[i][3]-3)
			love.graphics.setColor(attackColor)
			
			love.graphics.print(battlefieldIndicators[i][1], battlefieldIndicators[i][2], battlefieldIndicators[i][3])
			battlefieldIndicators[i][3] = battlefieldIndicators[i][3] - 2
		end
	end
end