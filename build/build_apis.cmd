# This file auto generates all yaml files.
# Assumes the command is run from the root folder i.e ./standards
# For each new category, please make sure to add a reference link in this file for easy auto generation of yamls.

swagger-cli -f 2 -t yaml bundle ./src/authz/authz_core_api_v1.0.0.yaml -o ./release/yaml/authz_core_api_v1.0.0.yaml
swagger-cli -f 2 -t yaml bundle ./src/registry/registry_core_api_v1.0.0.yaml -o ./release/yaml/registry_core_api_v1.0.0.yaml
# swagger-cli -f 2 -t yaml bundle ./src/mapper/mapper_core_api_v1.0.0.yaml -o ./release/yaml/mapper_core_api_v1.0.0.yaml
# swagger-cli -f 2 -t yaml bundle ./src/disburse/disburse_core_api_v1.0.0.yaml -o ./release/yaml/disburse_core_api_v1.0.0.yaml

redocly build-docs ./release/yaml/authz_core_api_v1.0.0.yaml  -o ./release/html/authz_core_api_v1.0.0.html
redocly build-docs ./release/yaml/registry_core_api_v1.0.0.yaml  -o ./release/html/registry_core_api_v1.0.0.html
# redocly build-docs ./release/yaml/mapper_core_api_v1.0.0.yaml  -o ./release/html/mapper_core_api_v1.0.0.html
# redocly build-docs ./release/yaml/disburse_core_api_v1.0.0.yaml  -o ./release/html/disburse_core_api_v1.0.0.html