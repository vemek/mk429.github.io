---
layout: default
title:  "OpenVPN Quickstart Guide"
date:   2020-07-27 18:19:53 +0100
categories: openvpn debian linux
---
VPNs are useful. Commercial VPNs don't quite live up to their promises. They claim that without a VPN, your ISP has access to what you do online. I feel this is misleading. Increasingly, sites are moving to HTTPS - certainly when a user is submitting data. Even so, there is some truth to this; DNS requests by default will either go to your ISPs nameserver or be visible to them in plaintext. This is usually not the case with VPN providers. They will send DNS through their tunnel and likely serve the request from their own nameserver. This certainly hides the request from your ISP, but it doesn't solve the fundamental problem - it just changes which company you have to trust.

Here's how to quickly set up a VPN of your own.

{% highlight shell %}
#!/bin/bash

set -e

CLIENT=$@
config="$CLIENT.conf"

echo ">> Creating openvpn client config for $CLIENT"
cp -H template.conf "$config"
chmod 700 "$config"
echo "<ca>" >> "$config"
cat "easy-rsa/keys/ca.crt" >> "$config"
echo "</ca>" >> "$config"
echo "<cert>" >> "$config"
cat "easy-rsa/keys/$CLIENT.crt" >> "$config"
echo "</cert>" >> "$config"
echo "<key>" >> "$config"
cat "easy-rsa/keys/$CLIENT.key" >> "$config"
echo "</key>" >> "$config"
echo ">> Created config $config"
{% endhighlight %}
