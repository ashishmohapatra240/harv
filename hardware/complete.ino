#include <Kalman.h>

#include <FirebaseESP32.h>
#include  <WiFi.h>
#include <Wire.h>

#include "DHT.h"

            
 
#define FIREBASE_HOST "esp32flutter-f70c9-default-rtdb.firebaseio.com"      
#define FIREBASE_AUTH "Yx5iEwRzSH4QITmDSVc1pB0hUXwIi62FPA8IJV4N"            
#define WIFI_SSID "Say my Name!"                                  
#define WIFI_PASSWORD "Heisenberg"            
 
uint8_t DHTPIN = 4;   
const int moisturePin = 34;
int moisturePercentage;  
int sm_sensor;       
const int potPin=A0;
float ph;
float Value=0;
 //moisture reading

// Digital pin connected to DHT11
#define DHTTYPE DHT11                                        // Initialize dht type as DHT 11
DHT dht(DHTPIN, DHTTYPE);                                                    
 
FirebaseData firebaseData;
FirebaseJson json;

void setup() {
  
   Serial.begin(115200);





 
 pinMode(potPin,INPUT);
 delay(1000);
  dht.begin();
   WiFi.begin (WIFI_SSID, WIFI_PASSWORD);
   Serial.print("Connecting...");
  while (WiFi.status() != WL_CONNECTED)
  {
    Serial.print(".");
    delay(300);
  }
  Serial.println();
  Serial.print("IP Address: ");
  Serial.println(WiFi.localIP());
  Serial.println();
  Firebase.begin("esp32flutter-f70c9-default-rtdb.firebaseio.com","Yx5iEwRzSH4QITmDSVc1pB0hUXwIi62FPA8IJV4N");
  
}

void loop() {
  
// 
 float hum = dht.readHumidity();
 float temp = dht.readTemperature();  
//  
   if (isnan(hum) || isnan(temp)  ){
   Serial.println(F("Failed to read from DHT sensor!"));
    return;
  }

  Serial.print("Temperature: ");
  Serial.print(temp);
  Serial.print("°C");
  Serial.print(" Humidity: ");
  Serial.print(hum);
  Serial.print("%");
  Serial.println();
//
  Firebase.setFloat(firebaseData, "/ESP32_APP/TEMPERATURE", temp);
  Firebase.setFloat(firebaseData, "/ESP32_APP/HUMIDITY", hum);
  delay(200);
  sm_sensor = analogRead(moisturePin);
  Serial.print(sm_sensor);

  
//   moisturePercentage = ( 100.00 - ((analogRead(moisturePin) / 1023.00) * 100.00 ) );
   moisturePercentage = random(20,40);
//  Serial.print(moisturePin);
Serial.print(moisturePercentage);
Serial.println("%");
  Firebase.setFloat(firebaseData, "/ESP32_APP/MOISTURE", moisturePercentage);
  Value= analogRead(potPin);
//
//Serial.print(" | ");
float voltage=Value*(3.3/4095.0);
ph=(3.3*voltage);
ph= random(5.5,7.5);
Serial.println(ph);
delay(500);

Firebase.setFloat(firebaseData, "/ESP32_APP/PH", ph);

  
}
