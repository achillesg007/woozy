import os
from twilio.rest import Client

account_sid = "AC46e8b3518033f0a1852f70556c12e732"
auth_token = "20a934aebd9cd4cdc7864d247179f495"

client = Client(account_sid, auth_token)

client.messages.create(
    to="+13214327181",
    from_ = "+16892202046",
    body="Your message just got sent.",
)
