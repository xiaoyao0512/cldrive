__kernel void A(__global int* a, short b, int c) {
  const int d = get_global_id(0);
  a[d] = b;
}
