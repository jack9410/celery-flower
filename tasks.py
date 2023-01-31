from celery import Celery

broker_url = 'redis://redis:6379/2'
print("Broker url:", broker_url)

app = Celery('tasks', broker=broker_url)

@app.task
def add(x, y):
    return x + y
