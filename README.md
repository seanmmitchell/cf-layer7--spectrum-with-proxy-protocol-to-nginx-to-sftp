cf-layer7--spectrum-with-proxy-protocol-to-nginx-to-sftp-example
# Cloudflare Layer 7 Spectrum with Proxy Protocol to NGINX to SFTP Example
This project demonstrates how you can ingest traffic from Cloudflare Spectrum with NGINX, log the values in the proxy protocol, and then finally forward the request to a backend TCP server. (An SFTP Server in this example)

## Notes
Much of this code must be changed on a per deployment and per use-case basis, but it serves mostly as a stable template for proper NGINX configurations.

## Explanation
- This code works by starting an NGINX server on port 12345. This NGINX configuration is designed to read proxy protocol data and log it.
- After handling the inital request, it then forwards the traffic to a backend TCP server on port 15797. This TCP application in this example is an SFTP server.

## License
This work is licensed under the MIT License.  
Please review [LICENSE](LICENSE.md) (LICENSE.md) for specifics.