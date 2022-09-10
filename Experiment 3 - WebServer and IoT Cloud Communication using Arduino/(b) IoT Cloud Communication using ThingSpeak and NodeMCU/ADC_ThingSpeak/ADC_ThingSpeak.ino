#include <ESP8266WiFi.h> // ESP8266WiFi.h library

const char* ssid = "REPLACE_WITH_YOUR_SSID";
const char* password = "REPLACE_WITH_YOUR_PASSWORD";
const char* host = "api.thingspeak.com";
const char* writeAPIKey = "0XXD4XXO7XXSWXX8";

int temp;
void setup()
{
 // Initialize the sensor:
 pinMode(2, OUTPUT);
 pinMode(4, INPUT);
 
 Serial.begin(115200); // Initialize serial communication (UART) with baud rate of 1,15,200 bps
 delay(1000);

 // Connect to WiFi network:
 WiFi.begin(ssid, password);

 // Wait until WiFi connection is established:
 while (WiFi.status() != WL_CONNECTED)
 {
    delay(500);
  }
}

// The loop function runs over and over again forever:
void loop()
{ 
  temp = analogRead(A0); // Read ADC value from A0

  // Make TCP (Transmission Control Protocol) Connections:
  WiFiClient client;
  const int httpPort = 80;

  // Wait until the Client (NodeMCU) is connected to the ThingSpeak Server:
  if (!client.connect(host, httpPort))
  {
    return;
  }

  // Request to the server:
  client.println(sendThingspeak());
  delay(1000);
  
  if (temp >= 700)
  {
    digitalWrite(2, HIGH);
  }
  else
  {
    digitalWrite(2, LOW);
  }
  
  Serial.print(temp);
  Serial.print("\n");
}

// Send the ADC value from Client (NodeMCU) to ThingSpeak Server in HTML Format:
String sendThingspeak()
{
  String command =
            String("GET ") + 
            "/update?key=" +
            writeAPIKey +
            "&field1=" +
            String(temp) + "\r\n" +
            "HTTP/1.1 200 OK\r\n" +
            "Host: " + host + "\r\n" +
            "Connection: close\r\n\r\n";
          return command;
}
