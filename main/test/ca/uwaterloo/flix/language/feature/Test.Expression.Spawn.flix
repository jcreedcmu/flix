@test
def testSpawn01(): Unit = spawn ()

@test
def testSpawn02(): Unit = spawn true

@test
def testSpawn03(): Unit = spawn 'c'

@test
def testSpawn04(): Unit = spawn 4.2

@test
def testSpawn05(): Unit = spawn 42

@test
def testSpawn06(): Unit = spawn 42ii

@test
def testSpawn07(): Unit = spawn "42"


// TESTS FROM THE PREVIOUS GROUP

/////////////////////////////////////////////////////////////////////////////
// Spawn expressions                                                       //
/////////////////////////////////////////////////////////////////////////////

def fUnit01(): Unit = ()

@test
def testSpawnUnit01(): Unit = spawn fUnit01()

def fUnit02(x: Unit): Unit = ()

@test
def testSpawnUnit02(): Unit = spawn fUnit02(spawn fUnit02(()))

def fInt01(x: Int): Unit = ()

@test
def testSpawnInt01(): Unit = spawn fInt01(42)

def fInt02(x: Int, y: Int): Unit = ()

@test
def testSpawnInt02(): Unit = spawn fInt02(42, 10)

def fInt03(x: Int8): Unit = ()

@test
def testSpawnInt03(): Unit = spawn fInt03(42i8)

def fInt04(x: Int8, y: Int8): Unit = ()

@test
def testSpawnInt04(): Unit = spawn fInt04(42i8, 10i8)

def fInt05(x: Int16): Unit = ()

@test
def testSpawnInt05(): Unit = spawn fInt05(42i16)

def fInt06(x: Int16, y: Int16): Unit = ()

@test
def testSpawnInt06(): Unit = spawn fInt06(42i16, 10i16)

def fInt07(x: Int32): Unit = ()

@test
def testSpawnInt07(): Unit = spawn fInt07(42i32)

def fInt08(x: Int32, y: Int32): Unit = ()

@test
def testSpawnInt08(): Unit = spawn fInt08(42i32, 10i32)

def fInt09(x: Int64): Unit = ()

@test
def testSpawnInt09(): Unit = spawn fInt09(42i64)

def fInt10(x: Int64, y: Int64): Unit = ()

@test
def testSpawnInt10(): Unit = spawn fInt10(42i64, 10i64)

def fInt11(x: BigInt): Unit = ()

@test
def testSpawnInt11(): Unit = spawn fInt11(42ii)

def fInt12(x: BigInt, y: BigInt): Unit = ()

@test
def testSpawnInt12(): Unit = spawn fInt12(42ii, 10ii)

def fInt13(): Int = 42

@test
def testSpawnInt13(): Unit = spawn fInt13()

def fInt14(x: Int): Int = x

@test
def testSpawnInt14(): Unit = spawn fInt14(3)

def fInt15(x: Int, y: Int): Int = x + y

@test
def testSpawnInt15(): Unit = spawn fInt15(1, 2)

def fInt16(x: Int, y: Int, z: Int): Int = x + y + z

@test
def testSpawnInt16(): Unit = spawn fInt16(1, 2, 3)

def fChar01(x: Char): Unit = ()

@test
def testSpawnChar01(): Unit = spawn fChar01('a')

def fChar02(x: Char, y: Char): Unit = ()

@test
def testSpawnChar02(): Unit = spawn fChar02('a', 'b')

def fChar03(): Char = 'a'

@test
def testSpawnChar03(): Unit = spawn fChar03()

def fChar04(x: Char): Char = x

@test
def testSpawnChar04(): Unit = spawn fChar04('a')

def fStr01(x: Str): Unit = ()

@test
def testSpawnStr01(): Unit = spawn fStr01("str")

def fStr02(x: Str, y: Str): Unit = ()

@test
def testSpawnStr02(): Unit = spawn fStr02("str", "strstr")

def fStr03(): Str = "str"

@test
def testSpawnStr03(): Unit = spawn fStr03()

def fStr04(x: Str): Str = x

@test
def testSpawnStr04(): Unit = spawn fStr04("str")

def fFloat01(x: Float32): Unit = ()

@test
def testSpawnFloat01(): Unit = spawn fFloat01(1.2f32)

def fFloat02(x: Float32, y: Float32): Unit = ()

@test
def testSpawnFloat02(): Unit = spawn fFloat02(1.2f32, 2.0f32)

def fFloat03(x: Float64): Unit = ()

@test
def testSpawnFloat03(): Unit = spawn fFloat03(1.2f64)

def fFloat04(x: Float64, y: Float64): Unit = ()

@test
def testSpawnFloat04(): Unit = spawn fFloat04(1.2f64, 2.0f64)

def fFloat05(x: Float64): Unit = ()

@test
def testSpawnFloat05(): Unit = spawn fFloat05(1.2)

def fFloat06(x: Float64, y: Float64): Unit = ()

@test
def testSpawnFloat06(): Unit = spawn fFloat06(1.2, 2.0)

def fFloat07(x: Float64): Float64 = x

@test
def testSpawnFloat07(): Unit = spawn fFloat07(3.2)

def fBool01(x: Bool): Unit = ()

@test
def testSpawnBool01(): Unit = spawn fBool01(true)

def fBool02(x: Bool): Unit = ()

@test
def testSpawnBool02(): Unit = spawn fBool02(false)

def fBool03(x: Bool, y: Bool): Unit = ()

@test
def testSpawnBool03(): Unit = spawn fBool03(true, true)

def fBool04(x: Bool, y: Bool): Unit = ()

@test
def testSpawnBool04(): Unit = spawn fBool04(true, false)

def fBool05(x: Bool, y: Bool): Unit = ()

@test
def testSpawnBool05(): Unit = spawn fBool05(false, false)

def fBool06(x: Bool, y: Bool): Unit = ()

@test
def testSpawnBool06(): Unit = spawn fBool06(false, true)

def fFunction01(x: Int -> Int): Unit = ()

@test
def testSpawnFunction01(): Unit = spawn fFunction01(x -> x)

def fFunction02(x: Int -> Int -> Int): Unit = ()

@test
def testSpawnFunction02(): Unit = spawn fFunction02(x -> y -> x + y)

def fFunction03(x: (Int, Int) -> Int): Unit = ()

@test
def testSpawnFunction03(): Unit = spawn fFunction03((x, y) -> x + y)

def fFunction04(x: Int -> Int -> Int -> Int): Unit = ()

@test
def testSpawnFunction04(): Unit = spawn fFunction04(x -> y -> z -> x + y + z)

def fFunction05(x: (Int, Int, Int) -> Int): Unit = ()

@test
def testSpawnFunction05(): Unit = spawn fFunction05((x, y, z) -> x + y + z)

def fFunction06(x: Int -> Int, y: Int -> Int): Unit = ()

@test
def testSpawnFunction06(): Unit = spawn fFunction06(x -> x, x -> x + 2)

def fFunction07(x: Int -> Int -> Int, y: Int -> Int): Unit = ()

@test
def testSpawnFunction07(): Unit = spawn fFunction07(x -> y -> x + y, x -> x + 2)

def fFunction08(x: (Int, Int) -> Int, y: Int -> Int): Unit = ()

@test
def testSpawnFunction08(): Unit = spawn fFunction08((x, y) -> x + y, x -> x + 2)

def fTuple01(x: (Int, Int)): Unit = ()

@test
def testSpawnTuple01(): Unit = spawn fTuple01((2, 3))

def fTuple02(x: (Int, Int)): Unit = ()

@test
def testSpawnTuple02(): Unit = spawn fTuple02((2, 3))

def fTuple03(x: (Int, Int), y: (Int, Int)): Unit = ()

@test
def testSpawnTuple03(): Unit = spawn fTuple03((2, 3), (3, 4))

def fTuple04(x: (Int, Int, Int), y: (Int, Int)): Unit = ()

@test
def testSpawnTuple04(): Unit = spawn fTuple04((2, 3, 4), (3, 4))

def fTuple05(): (Int, Int) = (10, 42)

@test
def testSpawnTuple05(): Unit = spawn fTuple05()

def fChannel01(x: Channel[Int]): Unit = ()

@test
def testSpawnChannel01(): Unit = spawn fChannel01(chan Int 100)

def fChannel02(x: Channel[Int], y: Channel[Str]): Unit = ()

@test
def testSpawnChannel02(): Unit = spawn fChannel02(chan Int 100, chan Str 100)

def fList01(x: List[Int]): Unit = ()

@test
def testSpawnList01(): Unit = spawn fList01(Nil)

def fList02(x: List[Int]): Unit = ()

@test
def testSpawnList02(): Unit = spawn fList02(1 :: Nil)

def fList03(x: List[Int]): Unit = ()

@test
def testSpawnList03(): Unit = spawn fList03(1 :: 2 :: Nil)

def fList04(x: List[Int], y: List[Str]): Unit = ()

@test
def testSpawnList04(): Unit = spawn fList04(Nil, Nil)

def fList05(x: List[Int], y: List[Str]): Unit = ()

@test
def testSpawnList05(): Unit = spawn fList05(1 :: Nil, "a" :: Nil)

def fList06(x: List[Int], y: List[Str]): Unit = ()

@test
def testSpawnList06(): Unit = spawn fList06(1 :: 2 :: Nil, "a" :: "b" :: Nil)

def fList07(): List[Str] = Nil

@test
def testSpawnList07(): Unit = spawn fList07()

def fList08(): List[Int] = 1 :: Nil

@test
def testSpawnList08(): Unit = spawn fList08()

def fIntStr01(x: Int, y: Str): Unit = ()

@test
def testIntStr01(): Unit = spawn fIntStr01(1, "str")

def fIntStr02(x: Int, y: Str): Int = x

@test
def testIntStr02(): Unit = spawn fIntStr02(1, "str")

def fIntChar01(x: Int, y: Char): Unit = ()

@test
def testIntChar01(): Unit = spawn fIntChar01(1, 'a')

def fIntChar02(x: Int, y: Char): Int = x

@test
def testIntChar02(): Unit = spawn fIntChar02(1, 'a')

def fIntFloat01(x: Int, y: Float64): Unit = ()

@test
def testIntFloat01(): Unit = spawn fIntFloat01(1, 2.2)

def fIntFloat02(x: Int, y: Float64): Int = x

@test
def testIntFloat02(): Unit = spawn fIntFloat02(1, 2.2)