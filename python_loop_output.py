# Kevin test loop
# Used for debugging and Testing kubernetes pods

import time
from datetime import datetime

version = 3.0

for i in range(0, 100000000):
	now = datetime.now()
	current_time = now.strftime("%H:%M:%S")
	print("Version: %s: [%s] Current Time = %s" % (version,i,current_time))
	time.sleep(60)	
