int pressureVal;

void setup()
{
  Serial.begin(9600);
  pinMode(A1, INPUT);
}

void loop()
{
  pressureVal = (int)(analogRead(A1));
  Serial.write(pressureVal);
  delay(100);
}
