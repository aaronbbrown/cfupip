# cfupip

Set a CloudFlare DNS record to your public IP.

# Usage:

Set the following environment variables:

* *TOKEN*: Your CloudFlare API Key from https://www.cloudflare.com/a/profile
* *DOMAIN*: The domain (e.g. `example.com`)
* *RECORD*: The record to set on (must exist and be an A record, e.g. `home`).
  Do not include the domain.
* *EMAIL*: Your CloudFlare email address
