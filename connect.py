import mysql.connector
try:
   conn =mysql.connector.connect (database="cookbook",
                                  host="localhost",
                                  user="cbuser",
                                  password="cbpass")
                                  
  print("Connected")
  except:
     print("Cannot connect to server")
  else:
     conn.close()
     print("Disconnected")
