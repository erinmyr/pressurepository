import processing.serial.*;
Serial myPort;
int pressure_val;

void setup()
{
  myPort = new Serial(this, "COM6", 9600);
}

void draw()
{
  
  if (myPort.available() >0)
  {
    pressure_val = myPort.read();
    println(pressure_val);
    background(pressure_val);
  }
}

