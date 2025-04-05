1. Create a style
Create a custom style for an application. Apply the style to a user pool app client.
2. Customize the style
Customize your page branding in the branding designer.
3. Assign managed login to your user pool domain
Configure a user pool domain to use managed login. Display your new customized authentication component to your users.


1. Create a Custom domain and set the Branding version to Managed login
2. Switch the Branding version for your Cognito domain to Managed login



1. AWS: Create certificate
2. DNS: Validate certificate (add CNAME record to domain)
	* Parent domain has to exists as a record
3. AWS: Use validated certificate to register new domain
4. DNS: Add CNAME record to redirect to AWS
5. Update external providers's callback value (it should be the new cognito domain)

