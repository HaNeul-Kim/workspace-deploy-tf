# Doc to Refer 

https://docs.databricks.com/administration-guide/account-settings/audit-logs.html


## IAM role policy 

{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": [
                "s3:GetBucketLocation"
            ],
            "Resource": [
                "arn:aws:s3:::seungdon-ws1-logdelivery"
            ]
        },
        {
            "Effect": "Allow",
            "Action": [
                "s3:PutObject",
                "s3:GetObject",
                "s3:DeleteObject",
                "s3:PutObjectAcl",
                "s3:AbortMultipartUpload"
            ],
            "Resource": [
                "arn:aws:s3:::seungdon-ws1-logdelivery/audit-logs/",
                "arn:aws:s3:::seungdon-ws1-logdelivery/audit-logs/*",
                "arn:aws:s3:::seungdon-ws1-logdelivery/billable-usage/",
                "arn:aws:s3:::seungdon-ws1-logdelivery/billable-usage/*"
            ]
        },
        {
            "Effect": "Allow",
            "Action": [
                "s3:ListBucket",
                "s3:ListMultipartUploadParts",
                "s3:ListBucketMultipartUploads"
            ],
            "Resource": "arn:aws:s3:::seungdon-ws1-logdelivery",
            "Condition": {
                "StringLike": {
                    "s3:prefix": [
                        "audit-logs",
                        "audit-logs/*",
                        "billable-usage/",
                        "billable-usage/*"
                    ]
                }
            }
        }
    ]
}

