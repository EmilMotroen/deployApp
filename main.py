from apscheduler.schedulers.blocking import BlockingScheduler
import datetime

def print_current_time():
    print("Current time:", datetime.datetime.now())

scheduler = BlockingScheduler()
scheduler.add_job(print_current_time, 'interval', minutes=1)

try:
    print("Scheduler started. Press Ctrl+C to exit.")
    scheduler.start()
except (KeyboardInterrupt, SystemExit):
    pass