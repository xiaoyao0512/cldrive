__kernel void A(__global const float* a, __global const float* b, __global float* c, const float d, __global const float* e) {
  (c[(((21) - 1) * (8)) + (get_global_id(0))]) =
      (((a[(((145) - 1) * (8)) + (get_global_id(0))]) - (b[(((145) - 1) * (8)) + (get_global_id(0))])) + ((a[(((185) - 1) * (8)) + (get_global_id(0))]) - (b[(((185) - 1) * (8)) + (get_global_id(0))])) + ((a[(((187) - 1) * (8)) + (get_global_id(0))]) - (b[(((187) - 1) * (8)) + (get_global_id(0))])) + ((a[(((189) - 1) * (8)) + (get_global_id(0))]) - (b[(((189) - 1) * (8)) + (get_global_id(0))])) - ((a[(((190) - 1) * (8)) + (get_global_id(0))]) - (b[(((190) - 1) * (8)) + (get_global_id(0))])) -
       ((a[(((191) - 1) * (8)) + (get_global_id(0))]) - (b[(((191) - 1) * (8)) + (get_global_id(0))])) - ((a[(((192) - 1) * (8)) + (get_global_id(0))]) - (b[(((192) - 1) * (8)) + (get_global_id(0))])) - ((a[(((193) - 1) * (8)) + (get_global_id(0))]) - (b[(((193) - 1) * (8)) + (get_global_id(0))])) - ((a[(((194) - 1) * (8)) + (get_global_id(0))]) - (b[(((194) - 1) * (8)) + (get_global_id(0))])) - ((a[(((195) - 1) * (8)) + (get_global_id(0))]) - (b[(((195) - 1) * (8)) + (get_global_id(0))])) -
       ((a[(((196) - 1) * (8)) + (get_global_id(0))]) - (b[(((196) - 1) * (8)) + (get_global_id(0))])) - ((a[(((197) - 1) * (8)) + (get_global_id(0))]) - (b[(((197) - 1) * (8)) + (get_global_id(0))])) - ((a[(((198) - 1) * (8)) + (get_global_id(0))]) - (b[(((198) - 1) * (8)) + (get_global_id(0))])) + ((a[(((200) - 1) * (8)) + (get_global_id(0))]) - (b[(((200) - 1) * (8)) + (get_global_id(0))])) + ((a[(((202) - 1) * (8)) + (get_global_id(0))]) - (b[(((202) - 1) * (8)) + (get_global_id(0))])) +
       ((a[(((203) - 1) * (8)) + (get_global_id(0))]) - (b[(((203) - 1) * (8)) + (get_global_id(0))])) + ((a[(((205) - 1) * (8)) + (get_global_id(0))]) - (b[(((205) - 1) * (8)) + (get_global_id(0))]))) *
      d * e[20];

  (c[(((20) - 1) * (8)) + (get_global_id(0))]) =
      (+((a[(((121) - 1) * (8)) + (get_global_id(0))]) - (b[(((121) - 1) * (8)) + (get_global_id(0))])) + ((a[(((146) - 1) * (8)) + (get_global_id(0))]) - (b[(((146) - 1) * (8)) + (get_global_id(0))])) + ((a[(((165) - 1) * (8)) + (get_global_id(0))]) - (b[(((165) - 1) * (8)) + (get_global_id(0))])) + ((a[(((167) - 1) * (8)) + (get_global_id(0))]) - (b[(((167) - 1) * (8)) + (get_global_id(0))])) - ((a[(((185) - 1) * (8)) + (get_global_id(0))]) - (b[(((185) - 1) * (8)) + (get_global_id(0))])) -
       ((a[(((186) - 1) * (8)) + (get_global_id(0))]) - (b[(((186) - 1) * (8)) + (get_global_id(0))])) - ((a[(((187) - 1) * (8)) + (get_global_id(0))]) - (b[(((187) - 1) * (8)) + (get_global_id(0))])) - ((a[(((188) - 1) * (8)) + (get_global_id(0))]) - (b[(((188) - 1) * (8)) + (get_global_id(0))])) - ((a[(((189) - 1) * (8)) + (get_global_id(0))]) - (b[(((189) - 1) * (8)) + (get_global_id(0))])) + ((a[(((192) - 1) * (8)) + (get_global_id(0))]) - (b[(((192) - 1) * (8)) + (get_global_id(0))])) +
       ((a[(((195) - 1) * (8)) + (get_global_id(0))]) - (b[(((195) - 1) * (8)) + (get_global_id(0))])) + ((a[(((196) - 1) * (8)) + (get_global_id(0))]) - (b[(((196) - 1) * (8)) + (get_global_id(0))])) + ((a[(((197) - 1) * (8)) + (get_global_id(0))]) - (b[(((197) - 1) * (8)) + (get_global_id(0))])) + ((a[(((198) - 1) * (8)) + (get_global_id(0))]) - (b[(((198) - 1) * (8)) + (get_global_id(0))])) + ((a[(((206) - 1) * (8)) + (get_global_id(0))]) - (b[(((206) - 1) * (8)) + (get_global_id(0))]))) *
      d * e[19];

  (c[(((22) - 1) * (8)) + (get_global_id(0))]) = 0.0;
}
