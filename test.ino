//int Sensor1;
//int Sensor2;
//int Sensor3;
//
//void setup() {
//  // put your setup code here, to run once:
//  Serial.begin(9600);
//}
//
//void loop() {
//
//  
//  // put your main code here, to run repeatedly:
//
//  Sensor1 = 75;
//  Serial.print("S1");
//  Serial.println(Sensor1);
//  Sensor2 = 87;
//  Serial.print("S2");
//  Serial.println(Sensor2);
//  Sensor3 = 96;
//  Serial.print("S3");
//  Serial.println(Sensor3);
//  delay(200);
//
//}

float Sensor1;
float Sensor2;
float Sensor3;
float Sensor4;
float Sensor5;
float Sensor6;
float Sensor7;
float Sensor8;
float Sensor9;

float Sensor10;
float Sensor11;
float Sensor12;
float Sensor13;
float Sensor14;
float Sensor15;
float Sensor16;
float Sensor17;
float Sensor18;

void setup() {
  Serial.begin(9600);
  //a0 = analogRead(a0);
  randomSeed(analogRead(0));
}

void loop() {
  
  Sensor1 = random(1,20);
  Serial.print("SA1");
  Serial.println(Sensor1);
  Sensor2 = random(1,20);
  Serial.print("SA2");
  Serial.println(Sensor2);
  Sensor3 = random(1,20);
  Serial.print("SA3");
  Serial.println(Sensor3);
  Sensor4 = random(1,20);
  Serial.print("SA4");
  Serial.println(Sensor4);
  Sensor5 = random(1,20);
  Serial.print("SA5");
  Serial.println(Sensor5);
  Sensor6 = random(1,20);
  Serial.print("SA6");
  Serial.println(Sensor6);
  Sensor7 = random(1,20);
  Serial.print("SA7");
  Serial.println(Sensor7);
  Sensor8 = random(1,20);
  Serial.print("SA8");
  Serial.println(Sensor8);
  Sensor9 = random(1,20);
  Serial.print("SA9");
  Serial.println(Sensor9);
  Sensor10 = random(1,20);
  Serial.print("SB1");
  Serial.println(Sensor10);
  Sensor11 = random(1,20);
  Serial.print("SB2");
  Serial.println(Sensor11);
  Sensor12 = random(1,20);
  Serial.print("SB3");
  Serial.println(Sensor12);
  Sensor13 = random(1,20);
  Serial.print("SB4");
  Serial.println(Sensor13);
  Sensor14 = random(1,20);
  Serial.print("SB5");
  Serial.println(Sensor14);
  Sensor15 = random(1,20);
  Serial.print("SB6");
  Serial.println(Sensor15);
  Sensor16 = random(1,20);
  Serial.print("SB7");
  Serial.println(Sensor16);
  Sensor17 = random(1,20);
  Serial.print("SB8");
  Serial.println(Sensor17);
  Sensor18 = random(1,20);
  Serial.print("SB9");
  Serial.println(Sensor18);
  delay(1000);
}

//uint32_t Sensor Sensor2, Sensor3;
//
//void setup() {
//  // put your setup code here, to run once:
//    Serial.begin(9600);
//}
//void loop() {
//
//  
//  // put your main code here, to run repeatedly:
//
//  Sensor1 = 75;
//  Serial.print("S1");
//  Serial.println(Sensor1);
//  Sensor2 = 87;
//  Serial.print("S2");
//  Serial.println(Sensor2);
//  Sensor3 = 96;
//  Serial.print("S3");
//  Serial.println(Sensor3);
//  delay(200);
//
//}
