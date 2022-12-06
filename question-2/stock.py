import datetime
import json
import random
import boto3

STREAM_NAME = "Mohamed-Ahnich-stock-input-stream"
REGION = "eu-north-1"
ACCESS_KEY = ""
SECRET_KEY = ""

def get_data():
    return {
        'event_time': datetime.datetime.now().isoformat(),
        'ticker': random.choice(["BTC","ETH","BNB", "XRP", "DOGE", "MOAH"]),
        'price': round(random.random() * 100, 2)}

def generate(stream_name, kinesis_client):
    while True:
        data = get_data()
        kinesis_client.put_record(StreamName=stream_name,Data=json.dumps(data),PartitionKey="partitionkey")

if __name__ == '__main__':
    generate(STREAM_NAME, boto3.client('kinesis', region_name=REGION, aws_access_key_id=ACCESS_KEY, aws_secret_access_key=SECRET_KEY))
