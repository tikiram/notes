
# cloudfront

Resources:
- ec2 with http server (e.g.: port 8080)
- s3 bucket

Cloudfront - distribution:
	- domain to cloundfront

* Cloudfront - distribution - origin
  - Links distribution to resource
    - e.g. origin --> vpc origin (ec2)
    - e.g. origin --> s3 bucket 