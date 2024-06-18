# 로컬 환경 테라폼 실행

테라폼 파일이 정상적으로 구동되었는지 확인하기 위하여 Localstack을 사용하여 AWS 리소스를 생성하는 예제

- 실행하기 위해 terraform.tfvars 파일을 생성하고 아래 내용을 추가합니다. (예시)

```hcl
region = "ap-northeast-2"
access_key="test"
secret_access_key="test"
bucket_name="test"
```