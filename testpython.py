import json



data =    {
        "vmnames": ["lnxgeewebsite103", "lnxgeewebsite104"],
        "VMResourceGroup": "rsgrwebsite001",
    }

myobj = json.dumps(data)

print(myobj)




