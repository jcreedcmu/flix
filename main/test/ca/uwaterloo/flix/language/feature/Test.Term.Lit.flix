///////////////////////////////////////////////////////////////////////////////
/// General                                                                 ///
///////////////////////////////////////////////////////////////////////////////
rel A(x: Int, y: Int, z: Str)

@test
def testLit01(): Unit =
    let x = A(1, 2, "hello").;
    let y = A(3, 4, "world!").;
    let r = solve x <+> y;
    ()

@test
def testLit02(): Unit =
    let x = A(1, 1, "hello").;
    let y = A(1, 1, "world!").;
    let r = solve x <+> y;
    ()

@test
def testLit03(): Unit =
    let x = A(1, 1, "hello world").;
    let y = A(1, 1, v) :- A(1, 1, v).;
    let r = solve x <+> y;
    ()

@test
def testLit04(): Unit =
    let x = A(1, 1, "abc").;
    let y = A(w, w, "abc") :- A(w, w, "abc").;
    let r = solve x <+> y;
    ()

///////////////////////////////////////////////////////////////////////////////
/// Unit                                                                    ///
///////////////////////////////////////////////////////////////////////////////
rel UnitRel(x: Unit)

@test
def testUnitLit01(): Unit =
    let x = UnitRel(()).;
    let r = solve x;
    ()


///////////////////////////////////////////////////////////////////////////////
/// Bool                                                                    ///
///////////////////////////////////////////////////////////////////////////////
rel BoolRel(x: Bool)

@test
def testBoolLit01(): Unit =
    let x = BoolRel(true).;
    let r = solve x;
    ()

@test
def testBoolLit02(): Unit =
    let x = BoolRel(false).;
    let r = solve x;
    ()


///////////////////////////////////////////////////////////////////////////////
/// Char                                                                    ///
///////////////////////////////////////////////////////////////////////////////
rel CharRel(x: Char)

@test
def testCharLit01(): Unit =
    let x = CharRel(' ').;
    let r = solve x;
    ()

@test
def testCharLit02(): Unit =
    let x = CharRel('a').;
    let r = solve x;
    ()

@test
def testCharLit03(): Unit =
    let x = CharRel('x').;
    let r = solve x;
    ()


///////////////////////////////////////////////////////////////////////////////
/// Float32                                                                 ///
///////////////////////////////////////////////////////////////////////////////
rel Float32Rel(x: Float32)

@test
def testFloat32Lit01(): Unit =
    let x = Float32Rel(0.0f32).;
    let r = solve x;
    ()

@test
def testFloat32Lit02(): Unit =
    let x = Float32Rel(-123.456f32).;
    let r = solve x;
    ()


@test
def testFloat32Lit03(): Unit =
    let x = Float32Rel(123.567f32).;
    let r = solve x;
    ()


///////////////////////////////////////////////////////////////////////////////
/// Float64                                                                 ///
///////////////////////////////////////////////////////////////////////////////
rel Float64Rel(x: Float64)

@test
def testFloat64Lit01(): Unit =
    let x = Float64Rel(0.0f64).;
    let r = solve x;
    ()

@test
def testFloat64Lit02(): Unit =
    let x = Float64Rel(-123.456f64).;
    let r = solve x;
    ()


@test
def testFloat64Lit03(): Unit =
    let x = Float64Rel(123.567f64).;
    let r = solve x;
    ()


///////////////////////////////////////////////////////////////////////////////
/// Int8                                                                    ///
///////////////////////////////////////////////////////////////////////////////
rel Int8Rel(x: Int8)

@test
def testInt8Lit01(): Unit =
    let x = Int8Rel(0i8).;
    let r = solve x;
    ()

@test
def testInt8Lit02(): Unit =
    let x = Int8Rel(123i8).;
    let r = solve x;
    ()

@test
def testInt8Lit03(): Unit =
    let x = Int8Rel(-123i8).;
    let r = solve x;
    ()


///////////////////////////////////////////////////////////////////////////////
/// Int16                                                                   ///
///////////////////////////////////////////////////////////////////////////////
rel Int16Rel(x: Int16)

@test
def testInt16Lit01(): Unit =
    let x = Int16Rel(0i16).;
    let r = solve x;
    ()

@test
def testInt16Lit02(): Unit =
    let x = Int16Rel(123i16).;
    let r = solve x;
    ()

@test
def testInt16Lit03(): Unit =
    let x = Int16Rel(-123i16).;
    let r = solve x;
    ()


///////////////////////////////////////////////////////////////////////////////
/// Int32                                                                   ///
///////////////////////////////////////////////////////////////////////////////
rel Int32Rel(x: Int32)

@test
def testInt32Lit01(): Unit =
    let x = Int32Rel(0i32).;
    let r = solve x;
    ()

@test
def testInt32Lit02(): Unit =
    let x = Int32Rel(123i32).;
    let r = solve x;
    ()

@test
def testInt32Lit03(): Unit =
    let x = Int32Rel(-123i32).;
    let r = solve x;
    ()


///////////////////////////////////////////////////////////////////////////////
/// Int64                                                                   ///
///////////////////////////////////////////////////////////////////////////////
rel Int64Rel(x: Int64)

@test
def testInt64Lit01(): Unit =
    let x = Int64Rel(0i64).;
    let r = solve x;
    ()

@test
def testInt64Lit02(): Unit =
    let x = Int64Rel(123i64).;
    let r = solve x;
    ()

@test
def testInt64Lit03(): Unit =
    let x = Int64Rel(-123i64).;
    let r = solve x;
    ()


///////////////////////////////////////////////////////////////////////////////
/// BigInt                                                                  ///
///////////////////////////////////////////////////////////////////////////////
rel BigIntRel(x: BigInt)

@test
def testBigIntLit01(): Unit =
    let x = BigIntRel(0ii).;
    let r = solve x;
    ()

@test
def testBigIntLit02(): Unit =
    let x = BigIntRel(123ii).;
    let r = solve x;
    ()

@test
def testBigIntLit03(): Unit =
    let x = BigIntRel(-123ii).;
    let r = solve x;
    ()


///////////////////////////////////////////////////////////////////////////////
/// Str                                                                     ///
///////////////////////////////////////////////////////////////////////////////
rel StrRel(x: Str)

@test
def testStrLit01(): Unit =
    let x = StrRel("").;
    let r = solve x;
    ()

@test
def testStrLit02(): Unit =
    let x = StrRel("hello").;
    let r = solve x;
    ()

@test
def testStrLit03(): Unit =
    let x = StrRel("hello world!").;
    let r = solve x;
    ()


///////////////////////////////////////////////////////////////////////////////
/// Option                                                                  ///
///////////////////////////////////////////////////////////////////////////////
rel OptionRel(x: Option[Int])

@test
def testOptionLit01(): Unit =
    let x = OptionRel(None).;
    let r = solve x;
    ()

@test
def testOptionLit02(): Unit =
    let x = OptionRel(Some(123)).;
    let r = solve x;
    ()

@test
def testOptionLit03(): Unit =
    let x = OptionRel(None).;
    let y = OptionRel(Some(123)).;
    let r = solve x <+> y;
    ()

@test
def testOptionLit04(): Unit =
    let x = OptionRel(None).;
    let y = OptionRel(Some(123)).;
    let z = OptionRel(Some(456)).;
    let r = solve x <+> y <+> z;
    ()

///////////////////////////////////////////////////////////////////////////////
/// Result                                                                  ///
///////////////////////////////////////////////////////////////////////////////
rel ResultRel(x: Result[Int, Str])

@test
def testResultLit01(): Unit =
    let x = ResultRel(Ok(123)).;
    let r = solve x;
    ()

@test
def testResultLit02(): Unit =
    let x = ResultRel(Err("hello world!")).;
    let r = solve x;
    ()

@test
def testResultLit03(): Unit =
    let x = ResultRel(Ok(123)).;
    let y = ResultRel(Err("hello world!")).;
    let r = solve x <+> y;
    ()

@test
def testResultLit04(): Unit =
    let x = ResultRel(Ok(123)).;
    let y = ResultRel(Ok(456)).;
    let z = ResultRel(Err("hello world!")).;
    let r = solve x <+> y <+> z;
    ()

@test
def testResultLit05(): Unit =
    let x = ResultRel(Ok(123)).;
    let y = ResultRel(Err("hello world!")).;
    let z = ResultRel(Err("Goodbye world!")).;
    let r = solve x <+> y <+> z;
    ()

@test
def testResultLit06(): Unit =
    let x = ResultRel(Ok(123)).;
    let y = ResultRel(Ok(456)).;
    let z = ResultRel(Err("hello world!")).;
    let w = ResultRel(Err("Goodbye world!")).;
    let r = solve x <+> y <+> z <+> w;
    ()


///////////////////////////////////////////////////////////////////////////////
/// List                                                                    ///
///////////////////////////////////////////////////////////////////////////////
//rel ListRel(x: List[Int]) // TODO

//@test
//def testListLit01(): Unit =
//    let x = ListRel(Nil).;
//    let r = solve x;
//    ()
//
//@test
//def testListLit02(): Unit =
//    let x = ListRel(1 :: Nil).;
//    let r = solve x;
//    ()
//
//@test
//def testListLit03(): Unit =
//    let x = ListRel(1 :: 2 :: 3 :: Nil).;
//    let r = solve x;
//    ()
//


///////////////////////////////////////////////////////////////////////////////
/// Tuple                                                                   ///
///////////////////////////////////////////////////////////////////////////////
rel TupleRel(x: (Bool, Char, Int))

// @test // TODO
def testTupleLit01(): Unit =
    let x = TupleRel((true, 'a', 123)).;
    let r = solve x;
    ()

// @test // TODO
def testTupleLit02(): Unit =
    let x = TupleRel((false, 'x', 789)).;
    let r = solve x;
    ()

