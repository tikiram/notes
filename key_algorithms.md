
> https://docs.vapor.codes/security/jwt/#algorithms
> https://notes.salrahman.com/generate-es256-es384-es512-private-keys/



```bash
openssl ecparam -name prime256v1 -genkey -noout -out identity-provider-private.pem
openssl ec -in identity-provider-private.pem -pubout -out identity-provider-public.pem

awk 'NF {sub(/\r/, ""); printf "%s\\n",$0;}' identity-provider-private.pem | pbcopy
awk 'NF {sub(/\r/, ""); printf "%s\\n",$0;}' identity-provider-public.pem | pbcopy
```

```bash
openssl ecparam -name prime256v1 -genkey -noout -out prod-identity-provider-private.pem
openssl ec -in identity-provider-private.pem -pubout -out prod-identity-provider-public.pem

awk 'NF {sub(/\r/, ""); printf "%s\\n",$0;}' prod-identity-provider-private.pem | pbcopy
awk 'NF {sub(/\r/, ""); printf "%s\\n",$0;}' prod-identity-provider-public.pem | pbcopy
```


## RS256 

es un algoritmo de firma que utiliza criptografía asimétrica. En este caso, RS256 se basa en RSA (Rivest–Shamir–Adleman) y SHA-256 como función de hash. Para este algoritmo, se utiliza un par de claves:

1. Clave privada: Se usa para firmar un mensaje o token.
2. Clave pública: Se usa para verificar la firma.

### Cómo generar una clave RSA para RS256

Puedes generar un par de claves RSA utilizando herramientas como OpenSSL, que es común en sistemas Unix/Linux, o usando bibliotecas específicas en lenguajes de programación.


* Genera una clave privada:
openssl genpkey -algorithm RSA -out private_key.pem -pkeyopt rsa_keygen_bits:2048

* Extrae la clave pública desde la clave privada:
openssl rsa -in private_key.pem -pubout -out public_key.pem

## identity-provider

openssl genpkey -algorithm RSA -out identity-provider_private_key.pem -pkeyopt rsa_keygen_bits:2048
openssl rsa -in identity-provider_private_key.pem -pubout -out identity-provider_public_key.pem

# Para la clave privada
awk 'NF {sub(/\r/, ""); printf "%s\\n",$0;}' identity-provider_private_key.pem | pbcopy

# Para la clave pública
awk 'NF {sub(/\r/, ""); printf "%s\\n",$0;}' identity-provider_public_key.pem | pbcopy