from apscheduler.schedulers.blocking import BlockingScheduler
from pytz import utc
import datetime

def print_current_time():
    print("Current time:", datetime.datetime.now())
    print('Mendoza')
scheduler = BlockingScheduler(timezone=utc, job_defaults={'misfire_grace_time': 10})
scheduler.add_job(print_current_time, 'interval', minutes=1)

try:
    print("Scheduler started. Press Ctrl+C to exit.")
    scheduler.start()
except (KeyboardInterrupt, SystemExit):
    pass