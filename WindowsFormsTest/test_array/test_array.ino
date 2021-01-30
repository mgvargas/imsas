String join(float vals[], char sep, int items) {
  String out = "";
  
  for (int i=0; i<items; i++) {
    out = out + String(vals[i]);
    if ((i + 1) < items) {
      out = out + sep;
    }
  }

  return out;
}
//void split(String value, char sep, uint8_t vals[], int items) {
//  int count = 0;
//  char *val = strtok((char *)value.c_str(), &sep);
//  
//  while (val != NULL && count < items) {
//    vals[count++] = (uint8_t)atoi(val);
//    val = strtok(NULL, &sep);
//  }
//}

float send_array_A[9];
float send_array_B[9];

void setup() {
  Serial.begin(9600);
  randomSeed(analogRead(0));
}

void loop() {
  for (int i=0; i<9; i++) {
    send_array_A[i] = random(3.5);
    send_array_B[i] = random(3.5);
  }

  String Sen_A = join(send_array_A, ',', 9);
  String Sen_B = join(send_array_B, ',', 9);
  Serial.print("SA");
  Serial.println(Sen_A);
  Serial.print("SB");
  Serial.println(Sen_B);
  delay(1000);
}
  
