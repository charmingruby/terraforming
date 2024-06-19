BUCKET-PLAN-FILE = "new_bucket"

.PHONY: bucket-plan
bucket-plan: # create a bucket plan to be shared when apply
	terraform plan --out ${BUCKET-PLAN-FILE}

.PHONY: bucket-apply # apply the bucket plan generated previously
bucket-apply:
	terraform apply ${BUCKET-PLAN-FILE}