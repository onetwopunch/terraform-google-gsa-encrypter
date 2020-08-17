# GSA Encrypter

This solution allows operators to generate a service account key for another system or user without ever needing
to see the key itself. It assumes the receiving service has a GPG private key which can be used to decrypt the
service account key and the deployer of this function has access to the GPG public key.

## Deployment

To use Terraform to deploy this Cloud Function,  