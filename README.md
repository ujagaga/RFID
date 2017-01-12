RFID reader project for AtTiny2313

The RFID library is based on Addicore arduino library. I re-wrote it as pure C library and removed 
everything not esential to bare reading of an RFID TAG id to reduce the code size.

The initial commit contains a basic example of reading a tag and outputting the 4 bytes of id to UART.
