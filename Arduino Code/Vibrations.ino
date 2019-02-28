int motor_one = 2;
int motor_two = 4;
int motor_three = 8;
int incomingByte = 0;

// the setup function runs once when you press reset or power the board
void setup() {
  // initialize digital pin LED_BUILTIN as an output.
  Serial.begin(9600);
  pinMode(motor_one, OUTPUT);
  pinMode(motor_two, OUTPUT);
  pinMode(motor_three, OUTPUT);
}

// the loop function runs over and over again forever
void loop() {
    incomingByte = Serial.read();

    if (incomingByte == 1) {
      digitalWrite(motor_one, HIGH);
      delay(750);
      digitalWrite(motor_one, LOW);
      delay(750);
      incomingByte = 0;
    } else if (incomingByte == 2) {
      for (int i = 0; i < 2; i++) {
        digitalWrite(motor_two, HIGH);
        delay(300);
        digitalWrite(motor_two, LOW);
        delay(300);
        incomingByte = 0;
      }
    } else if (incomingByte == 3) {
      for (int j = 0; j < 3; j++) {
        digitalWrite(motor_three, HIGH);
        delay(250);
        digitalWrite(motor_three, LOW);
        delay(250);
        incomingByte = 0;

      
    }
  }
}
