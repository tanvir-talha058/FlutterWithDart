void main()
{
    int a = 15;
    int b = 5;

    // Adding a and b
    var c = a + b;
    print("Sum  (a + b) = $c");

    // Subtracting a and b
    var d = a - b;
    print("Difference (a - b) = $d");

    // Using unary minus
    var e = -d;
    print("Negation -(a - b) = $e");

    // Multiplication of a and b
    var f = a * b;
    print("Product (a * b) = $f");

    // Division of a and b
    var g = b / a;
    print("Division (b / a) = $g");

    // Using ~/ to divide a and b
    var h = b ~/ a;
    print("Quotient (b ~/ a) = $h");

    // Remainder of a and b
    var i = b % a;
    print("Remainder (b % a) = $i");
}
