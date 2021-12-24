# snesRFID
Enables RFID card launching of games for MiSTer FPGA. Launches games without any menu being display. The method used only supports cores that do not require a boot1.rom. I have confirmed this working with the Atari 2600, NES, and SNES cores.

## Hardware Needed
- Arduino Nano V3.0 
- RC522 RFID Card Reader Module Board (3.3V)
- Mi-fare door access cards
- MiSTer FPGA with the extra USB ports board.

## Arduino Hardware Setup
| RC522 Module Pin | Arduino Pin|
|---|---|
|RST|D9|
|SDA|D10|
|MOSI|D11|
|SCK|D13|
|VCC|3.3V|
|GRD|GRD|

Write the snesrfid.ino file to your Arduino. Attached the serial monitor to it and you should see it repeating `. rfid_process.sh noscan` about every second. As soon as your scan a RFID card, it should output `. rfid_process.sh 12345678`. The number is that card's unique ID. The reader will not scan the same card two times in a row. Make note of the card's unique id.

## MiSTer Setup
Copy the files to your MiSTer SD card based on the structure of this repo. Edit case statement of the "rfid_process.sh" script to associate your RFID card UIDs with the roms files on your MiSTer. Leave the first "noscan" line of case statement unchanged. Install MiSTer Batch Control (https://github.com/pocomane/MiSTer_Batch_Control)

## Use
After editing the rfid_process.sh script, turn off your MiSTer. Plug your Arduino into an available USB port on your USB board module and turn on your MiSTer. Depending on how my scripts you have running, it will take about 30 seconds from first turning on the power to the RFID reader becoming available. Once the RFID reader is available, it will automatically load an Atari 2600 ROM (included in the repo) that displays "READY" in full screen.

### Disclaimer
I'm not a Linux or a hardware guy -- there are probably many better approaches to the ones I have taken.
