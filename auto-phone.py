import os
from twilio.rest import Client

account_sid = "your-sid-here"
auth_token = "your-auth-token-here"

client = Client(account_sid, auth_token)

client.messages.create(
    to="receiver",
    from_ = "twilio-number",
    body="I have the high ground.",
)
