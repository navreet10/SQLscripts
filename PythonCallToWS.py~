#Import the modules
import requests
#import json
import xml.etree.ElementTree

# Get the feed
r = requests.get("http://localhost:8080/RestWenService/rest/UserService/users", stream=True)
#r.text

# Convert it to a Python dictionary
#data = json.loads(r.text)
tree = xml.etree.ElementTree.fromstring(r.content)

print r.content

##events = xml.etree.ElementTree.iterparse(r.raw)

# Loop through the result.
#for item in data['data']['items']:


for child_of_root in tree:
	for child_of_child_of_root in child_of_root:
   		print child_of_child_of_root.tag, child_of_child_of_root.text

print tree

