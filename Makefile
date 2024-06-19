PLAN_PREFIX = plan
BUCKET-PLAN-FILE = "${PLAN_PREFIX}_new_bucket"

# - 
# S3
# -
bucket-plan: 
	terraform plan --out ${BUCKET-PLAN-FILE}

bucket-apply: bucket-run clear-plans 
bucket-run: 
	terraform apply ${BUCKET-PLAN-FILE}

# -
# Helpers
# - 
clear-plans:
	rm plan_*

.PHONY: clear-plans bucket-plan bucket-apply bucket-run