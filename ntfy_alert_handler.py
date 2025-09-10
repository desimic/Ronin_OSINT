import requests

def send_alert(message):
    url = "http://localhost:80/ronin"
    requests.post(url, data=message.encode('utf-8'))

# Example usage
send_alert("Lazarus Indicators detected in OSINT scan.")