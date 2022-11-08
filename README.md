# databricks workspace deploy with terraform 

AWS환경에 databricks workspace deploy를 위한 terraform script 모음입니다. 
tfvars 파일은 하기와 같은 변수값들을 관리합니다. 
```
env_name = "databricks"
user_name = "[firstname.lastname]"
region = "ap-northeast-2"
databricks_account_id = "[databricks 의 account id account console서 확인]"
databricks_account_username="[databricks account owner email]"
databricks_account_password="[password]"
aws_access_key_id="[aws access key id]"
aws_secret_acces_key="[secret key]"
databricks_aws_account_id="414351767826" # do not edit
```

local.tf 내의 정보 수정  


다음과 같이 수행 
> terraform apply -var-file=input.tfvars


### to dos 
참고: https://github.com/hwang-db/tf_aws_deployment   

- instance profile / cluster / repo 자동 생성
- audit log delivery 
- unity catalog 



