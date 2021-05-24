import json
import requests

url = 'https://59bfe490-13fb-4b74-b2ff-626b8aade3b9.webhook.eus.azure-automation.net/webhooks?token=LCmPrzmyeKD%2bJUiCWL6Ok4NyEfNr4A9Y2qBLFpsrNqE%3d'

# a Python object (dict):
myobj = { "JOBHISTORY": "20", }



# convert into JSON:
data = json.dumps(myobj)

# the result is a JSON string:
print(data,url)


x = requests.post(url, data, headers = {"message":"StartedbyServicePortal"})

print(x.text)