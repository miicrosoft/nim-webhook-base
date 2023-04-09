import std/[httpclient]

let c = newHttpClient()
c.headers = newHttpHeaders({ "Content-Type": "application/json" })
echo c.request("[webhook url]", httpMethod = HttpPost, body = "{\"content\":\"Message content!\"}").status # Send the message to the webhook and print the HTTP status code to the console.
