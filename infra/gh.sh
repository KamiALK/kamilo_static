# Token para dev
gh secret set AZURE_STATIC_WEB_APPS_API_TOKEN_DEV \
  --body "$(terraform output -raw deployment_token_dev)" \
  --repo KamiALK/kamilo_static

# Token para prod
gh secret set AZURE_STATIC_WEB_APPS_API_TOKEN_PROD \
  --body "$(terraform output -raw deployment_token_prod)" \
  --repo KamiALK/kamilo_static
