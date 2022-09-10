/*
 This code demonstrates how to scan WiFi networks. The API is 
 almost the same as with the WiFi Shield library, the most 
 obvious difference being the different file you need to include.
*/

#include "ESP8266WiFi.h" // ESP8266WiFi.h library

// The setup function runs once when you press reset or power the board:
void setup()
{
  Serial.begin(9600); // Initialize serial communication (UART) with baud rate of 9600 bps
  
  // Set WiFi to station mode and disconnect from an access point, if it was previously connected:
  WiFi.mode(WIFI_STA); 
  WiFi.disconnect();
  delay(100);

  Serial.println("Setup Done.");
}

// The loop function runs over and over again forever:
void loop()
{
  Serial.println("Scan Start.");

  // WiFi.scanNetworks will return the number of networks found:
  int n = WiFi.scanNetworks();
  Serial.println("Scan Completed.");
  
  if (n == 0)
    Serial.println("No networks found.");
  else
  {
    Serial.print(n);
    Serial.println(" Networks Found.");

    // Print the SSID (Service Set Identifier)and RSSI (Received Signal Strength Indicator) for each networks:
    for (int i = 0; i < n; ++i)
    {
      Serial.print(i + 1);
      Serial.print(": ");
      
      Serial.print(WiFi.SSID(i));
      Serial.print(" (");
      
      Serial.print(WiFi.RSSI(i));
      Serial.print(")");
      
      Serial.println((WiFi.encryptionType(i) == ENC_TYPE_NONE)?" ":"*");
      delay(10);
    }
  }
  
  Serial.println("");
  delay(5000); // Wait for five seconds before scanning again
}
