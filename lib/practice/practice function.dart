void main() {
  int result = multiply(5, 8);
  print(result);

  int result2 = calculator(5, 8, multiply);
  print(result2);
}

Function calculator = (int n1, int n2, Function calculation) {
  return calculation(n1, n2);
};

// int calculator(int n1, int n2, Function calculation) {
//   return calculation(n1, n2);
// }

int add(int n1, int n2) {
  return n1 + n2;
}

int multiply(int n1, int n2) {
  return n1 * n2;
}
