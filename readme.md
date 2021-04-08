use docker-compose version 1.28.5 or 1.29.0

docker-compose up -d

import templates to Postman: tags.postman_collection.json, certificates.postman_collection.json

PATCH [http://localhost:8082/gift-app/certificates], produces [application/json]: update(GiftCertificate)\
DELETE [http://localhost:8082/gift-app/certificates], produces [application/json]: delete(GiftCertificate)\
POST [http://localhost:8082/gift-app/certificates], produces [application/json]: create(GiftCertificate)\
GET [http://localhost:8082/gift-app/certificates/{id}], produces [application/json]: getCertificateById(Long)\
GET [http://localhost:8082/gift-app/certificates], produces [application/json]: getCertificatesWithParameters(String,String,String,String)\

DELETE [http://localhost:8082/gift-app/tags], produces [application/json]: delete(GiftTag)\
POST [http://localhost:8082/gift-app/tags], produces [application/json]: create(GiftTag)\
GET [http://localhost:8082/gift-app/tags], produces [application/json]: getAll()\
GET [http://localhost:8082/gift-app/tags/{id}], produces [application/json]: getTagById(Long)\