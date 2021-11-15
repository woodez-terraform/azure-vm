# azure-vm
https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/virtual-machines/linux/basic-ssh
Azure vm terraform IAAS

Trigger remote build via api

1) you must enable remote builds for job.  add token for job
2) you must generate an api auth token for your account


example:

Kevins-MacBook-Air:~ kwood$ curl -I -u kwood:user-api-token "http://192.168.2.149:8080/job/terraform/job/azure/job/createrg/buildWithParameters?token=job-token-name&job=createrg&Project=woodez&Action=Build"
HTTP/1.1 201 Created
Date: Mon, 15 Nov 2021 00:02:07 GMT
X-Content-Type-Options: nosniff
Location: http://192.168.2.149:8080/queue/item/408/
Content-Length: 0
Server: Jetty(9.4.38.v20210224)

Kevins-MacBook-Air:~ kwood$ curl -I -u kwood:user-api-token "http://192.168.2.149:8080/job/terraform/job/azure/job/createrg/buildWithParameters?token=job-token-name&job=createrg&Project=woodez&Action=Teardown"
HTTP/1.1 201 Created
Date: Mon, 15 Nov 2021 00:09:01 GMT
X-Content-Type-Options: nosniff
Location: http://192.168.2.149:8080/queue/item/410/
Content-Length: 0
Server: Jetty(9.4.38.v20210224)

