# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: amplifybackend
using AWS.Compat
using AWS.UUIDs

"""
    CloneBackend()

This operation clones an existing backend.

# Required Parameters
- `appId`: The app ID.
- `backendEnvironmentName`: The name of the backend environment.
- `targetEnvironmentName`: The name of the destination backend environment to be created.

"""
clone_backend(appId, backendEnvironmentName, targetEnvironmentName; aws_config::AbstractAWSConfig=global_aws_config()) = amplifybackend("POST", "/backend/$(appId)/environments/$(backendEnvironmentName)/clone", Dict{String, Any}("targetEnvironmentName"=>targetEnvironmentName); aws_config=aws_config)
clone_backend(appId, backendEnvironmentName, targetEnvironmentName, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = amplifybackend("POST", "/backend/$(appId)/environments/$(backendEnvironmentName)/clone", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("targetEnvironmentName"=>targetEnvironmentName), args)); aws_config=aws_config)

"""
    CreateBackend()

This operation creates a backend for an Amplify app. Backends are automatically created at
the time of app creation.

# Required Parameters
- `appId`: The app ID.
- `appName`: The name of the app.
- `backendEnvironmentName`: The name of the backend environment.

# Optional Parameters
- `resourceConfig`: The resource configuration for the backend creation request.
- `resourceName`: The name of the resource.
"""
create_backend(appId, appName, backendEnvironmentName; aws_config::AbstractAWSConfig=global_aws_config()) = amplifybackend("POST", "/backend", Dict{String, Any}("appId"=>appId, "appName"=>appName, "backendEnvironmentName"=>backendEnvironmentName); aws_config=aws_config)
create_backend(appId, appName, backendEnvironmentName, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = amplifybackend("POST", "/backend", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("appId"=>appId, "appName"=>appName, "backendEnvironmentName"=>backendEnvironmentName), args)); aws_config=aws_config)

"""
    CreateBackendAPI()

Creates a new backend API resource.

# Required Parameters
- `appId`: The app ID.
- `backendEnvironmentName`: The name of the backend environment.
- `resourceConfig`: The resource configuration for this request.
- `resourceName`: The name of this resource.

"""
create_backend_api(appId, backendEnvironmentName, resourceConfig, resourceName; aws_config::AbstractAWSConfig=global_aws_config()) = amplifybackend("POST", "/backend/$(appId)/api", Dict{String, Any}("backendEnvironmentName"=>backendEnvironmentName, "resourceConfig"=>resourceConfig, "resourceName"=>resourceName); aws_config=aws_config)
create_backend_api(appId, backendEnvironmentName, resourceConfig, resourceName, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = amplifybackend("POST", "/backend/$(appId)/api", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("backendEnvironmentName"=>backendEnvironmentName, "resourceConfig"=>resourceConfig, "resourceName"=>resourceName), args)); aws_config=aws_config)

"""
    CreateBackendAuth()

Creates a new backend authentication resource.

# Required Parameters
- `appId`: The app ID.
- `backendEnvironmentName`: The name of the backend environment.
- `resourceConfig`: The resource configuration for this request object.
- `resourceName`: The name of this resource.

"""
create_backend_auth(appId, backendEnvironmentName, resourceConfig, resourceName; aws_config::AbstractAWSConfig=global_aws_config()) = amplifybackend("POST", "/backend/$(appId)/auth", Dict{String, Any}("backendEnvironmentName"=>backendEnvironmentName, "resourceConfig"=>resourceConfig, "resourceName"=>resourceName); aws_config=aws_config)
create_backend_auth(appId, backendEnvironmentName, resourceConfig, resourceName, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = amplifybackend("POST", "/backend/$(appId)/auth", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("backendEnvironmentName"=>backendEnvironmentName, "resourceConfig"=>resourceConfig, "resourceName"=>resourceName), args)); aws_config=aws_config)

"""
    CreateBackendConfig()

Creates a config object for a backend.

# Required Parameters
- `appId`: The app ID.

# Optional Parameters
- `backendManagerAppId`: The app ID for the backend manager.
"""
create_backend_config(appId; aws_config::AbstractAWSConfig=global_aws_config()) = amplifybackend("POST", "/backend/$(appId)/config"; aws_config=aws_config)
create_backend_config(appId, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = amplifybackend("POST", "/backend/$(appId)/config", args; aws_config=aws_config)

"""
    CreateToken()

Generates a one-time challenge code to authenticate a user into your Amplify Admin UI.

# Required Parameters
- `appId`: The app ID.

"""
create_token(appId; aws_config::AbstractAWSConfig=global_aws_config()) = amplifybackend("POST", "/backend/$(appId)/challenge"; aws_config=aws_config)
create_token(appId, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = amplifybackend("POST", "/backend/$(appId)/challenge", args; aws_config=aws_config)

"""
    DeleteBackend()

Removes an existing environment from your Amplify project.

# Required Parameters
- `appId`: The app ID.
- `backendEnvironmentName`: The name of the backend environment.

"""
delete_backend(appId, backendEnvironmentName; aws_config::AbstractAWSConfig=global_aws_config()) = amplifybackend("POST", "/backend/$(appId)/environments/$(backendEnvironmentName)/remove"; aws_config=aws_config)
delete_backend(appId, backendEnvironmentName, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = amplifybackend("POST", "/backend/$(appId)/environments/$(backendEnvironmentName)/remove", args; aws_config=aws_config)

"""
    DeleteBackendAPI()

Deletes an existing backend API resource.

# Required Parameters
- `appId`: The app ID.
- `backendEnvironmentName`: The name of the backend environment.
- `resourceName`: The name of this resource.

# Optional Parameters
- `resourceConfig`: Defines the resource configuration for the data model in your Amplify
  project.
"""
delete_backend_api(appId, backendEnvironmentName, resourceName; aws_config::AbstractAWSConfig=global_aws_config()) = amplifybackend("POST", "/backend/$(appId)/api/$(backendEnvironmentName)/remove", Dict{String, Any}("resourceName"=>resourceName); aws_config=aws_config)
delete_backend_api(appId, backendEnvironmentName, resourceName, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = amplifybackend("POST", "/backend/$(appId)/api/$(backendEnvironmentName)/remove", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("resourceName"=>resourceName), args)); aws_config=aws_config)

"""
    DeleteBackendAuth()

Deletes an existing backend authentication resource.

# Required Parameters
- `appId`: The app ID.
- `backendEnvironmentName`: The name of the backend environment.
- `resourceName`: The name of this resource.

"""
delete_backend_auth(appId, backendEnvironmentName, resourceName; aws_config::AbstractAWSConfig=global_aws_config()) = amplifybackend("POST", "/backend/$(appId)/auth/$(backendEnvironmentName)/remove", Dict{String, Any}("resourceName"=>resourceName); aws_config=aws_config)
delete_backend_auth(appId, backendEnvironmentName, resourceName, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = amplifybackend("POST", "/backend/$(appId)/auth/$(backendEnvironmentName)/remove", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("resourceName"=>resourceName), args)); aws_config=aws_config)

"""
    DeleteToken()

Deletes the challenge token based on the given appId and sessionId.

# Required Parameters
- `appId`: The app ID.
- `sessionId`: The session ID.

"""
delete_token(appId, sessionId; aws_config::AbstractAWSConfig=global_aws_config()) = amplifybackend("POST", "/backend/$(appId)/challenge/$(sessionId)/remove"; aws_config=aws_config)
delete_token(appId, sessionId, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = amplifybackend("POST", "/backend/$(appId)/challenge/$(sessionId)/remove", args; aws_config=aws_config)

"""
    GenerateBackendAPIModels()

Generates a model schema for an existing backend API resource.

# Required Parameters
- `appId`: The app ID.
- `backendEnvironmentName`: The name of the backend environment.
- `resourceName`: The name of this resource.

"""
generate_backend_apimodels(appId, backendEnvironmentName, resourceName; aws_config::AbstractAWSConfig=global_aws_config()) = amplifybackend("POST", "/backend/$(appId)/api/$(backendEnvironmentName)/generateModels", Dict{String, Any}("resourceName"=>resourceName); aws_config=aws_config)
generate_backend_apimodels(appId, backendEnvironmentName, resourceName, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = amplifybackend("POST", "/backend/$(appId)/api/$(backendEnvironmentName)/generateModels", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("resourceName"=>resourceName), args)); aws_config=aws_config)

"""
    GetBackend()

Provides project-level details for your Amplify UI project.

# Required Parameters
- `appId`: The app ID.

# Optional Parameters
- `backendEnvironmentName`: The name of the backend environment.
"""
get_backend(appId; aws_config::AbstractAWSConfig=global_aws_config()) = amplifybackend("POST", "/backend/$(appId)/details"; aws_config=aws_config)
get_backend(appId, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = amplifybackend("POST", "/backend/$(appId)/details", args; aws_config=aws_config)

"""
    GetBackendAPI()

Gets the details for a backend API.

# Required Parameters
- `appId`: The app ID.
- `backendEnvironmentName`: The name of the backend environment.
- `resourceName`: The name of this resource.

# Optional Parameters
- `resourceConfig`: Defines the resource configuration for the data model in your Amplify
  project.
"""
get_backend_api(appId, backendEnvironmentName, resourceName; aws_config::AbstractAWSConfig=global_aws_config()) = amplifybackend("POST", "/backend/$(appId)/api/$(backendEnvironmentName)/details", Dict{String, Any}("resourceName"=>resourceName); aws_config=aws_config)
get_backend_api(appId, backendEnvironmentName, resourceName, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = amplifybackend("POST", "/backend/$(appId)/api/$(backendEnvironmentName)/details", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("resourceName"=>resourceName), args)); aws_config=aws_config)

"""
    GetBackendAPIModels()

Generates a model schema for existing backend API resource.

# Required Parameters
- `appId`: The app ID.
- `backendEnvironmentName`: The name of the backend environment.
- `resourceName`: The name of this resource.

"""
get_backend_apimodels(appId, backendEnvironmentName, resourceName; aws_config::AbstractAWSConfig=global_aws_config()) = amplifybackend("POST", "/backend/$(appId)/api/$(backendEnvironmentName)/getModels", Dict{String, Any}("resourceName"=>resourceName); aws_config=aws_config)
get_backend_apimodels(appId, backendEnvironmentName, resourceName, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = amplifybackend("POST", "/backend/$(appId)/api/$(backendEnvironmentName)/getModels", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("resourceName"=>resourceName), args)); aws_config=aws_config)

"""
    GetBackendAuth()

Gets backend auth details.

# Required Parameters
- `appId`: The app ID.
- `backendEnvironmentName`: The name of the backend environment.
- `resourceName`: The name of this resource.

"""
get_backend_auth(appId, backendEnvironmentName, resourceName; aws_config::AbstractAWSConfig=global_aws_config()) = amplifybackend("POST", "/backend/$(appId)/auth/$(backendEnvironmentName)/details", Dict{String, Any}("resourceName"=>resourceName); aws_config=aws_config)
get_backend_auth(appId, backendEnvironmentName, resourceName, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = amplifybackend("POST", "/backend/$(appId)/auth/$(backendEnvironmentName)/details", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("resourceName"=>resourceName), args)); aws_config=aws_config)

"""
    GetBackendJob()

Returns information about a specific job.

# Required Parameters
- `appId`: The app ID.
- `backendEnvironmentName`: The name of the backend environment.
- `jobId`: The ID for the job.

"""
get_backend_job(appId, backendEnvironmentName, jobId; aws_config::AbstractAWSConfig=global_aws_config()) = amplifybackend("GET", "/backend/$(appId)/job/$(backendEnvironmentName)/$(jobId)"; aws_config=aws_config)
get_backend_job(appId, backendEnvironmentName, jobId, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = amplifybackend("GET", "/backend/$(appId)/job/$(backendEnvironmentName)/$(jobId)", args; aws_config=aws_config)

"""
    GetToken()

Gets the challenge token based on the given appId and sessionId.

# Required Parameters
- `appId`: The app ID.
- `sessionId`: The session ID.

"""
get_token(appId, sessionId; aws_config::AbstractAWSConfig=global_aws_config()) = amplifybackend("GET", "/backend/$(appId)/challenge/$(sessionId)"; aws_config=aws_config)
get_token(appId, sessionId, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = amplifybackend("GET", "/backend/$(appId)/challenge/$(sessionId)", args; aws_config=aws_config)

"""
    ListBackendJobs()

Lists the jobs for the backend of an Amplify app.

# Required Parameters
- `appId`: The app ID.
- `backendEnvironmentName`: The name of the backend environment.

# Optional Parameters
- `jobId`: The ID for the job.
- `maxResults`: The maximum number of results that you want in the response.
- `nextToken`: The token for the next set of results.
- `operation`: Filters the list of response objects to include only those with the
  specified operation name.
- `status`: Filters the list of response objects to include only those with the specified
  status.
"""
list_backend_jobs(appId, backendEnvironmentName; aws_config::AbstractAWSConfig=global_aws_config()) = amplifybackend("POST", "/backend/$(appId)/job/$(backendEnvironmentName)"; aws_config=aws_config)
list_backend_jobs(appId, backendEnvironmentName, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = amplifybackend("POST", "/backend/$(appId)/job/$(backendEnvironmentName)", args; aws_config=aws_config)

"""
    RemoveAllBackends()

Removes all backend environments from your Amplify project.

# Required Parameters
- `appId`: The app ID.

# Optional Parameters
- `cleanAmplifyApp`: Cleans up the Amplify Console app if this value is set to true.
"""
remove_all_backends(appId; aws_config::AbstractAWSConfig=global_aws_config()) = amplifybackend("POST", "/backend/$(appId)/remove"; aws_config=aws_config)
remove_all_backends(appId, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = amplifybackend("POST", "/backend/$(appId)/remove", args; aws_config=aws_config)

"""
    RemoveBackendConfig()

Removes the AWS resources that are required to access the Amplify Admin UI.

# Required Parameters
- `appId`: The app ID.

"""
remove_backend_config(appId; aws_config::AbstractAWSConfig=global_aws_config()) = amplifybackend("POST", "/backend/$(appId)/config/remove"; aws_config=aws_config)
remove_backend_config(appId, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = amplifybackend("POST", "/backend/$(appId)/config/remove", args; aws_config=aws_config)

"""
    UpdateBackendAPI()

Updates an existing backend API resource.

# Required Parameters
- `appId`: The app ID.
- `backendEnvironmentName`: The name of the backend environment.
- `resourceName`: The name of this resource.

# Optional Parameters
- `resourceConfig`: Defines the resource configuration for the data model in your Amplify
  project.
"""
update_backend_api(appId, backendEnvironmentName, resourceName; aws_config::AbstractAWSConfig=global_aws_config()) = amplifybackend("POST", "/backend/$(appId)/api/$(backendEnvironmentName)", Dict{String, Any}("resourceName"=>resourceName); aws_config=aws_config)
update_backend_api(appId, backendEnvironmentName, resourceName, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = amplifybackend("POST", "/backend/$(appId)/api/$(backendEnvironmentName)", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("resourceName"=>resourceName), args)); aws_config=aws_config)

"""
    UpdateBackendAuth()

Updates an existing backend authentication resource.

# Required Parameters
- `appId`: The app ID.
- `backendEnvironmentName`: The name of the backend environment.
- `resourceConfig`: The resource configuration for this request object.
- `resourceName`: The name of this resource.

"""
update_backend_auth(appId, backendEnvironmentName, resourceConfig, resourceName; aws_config::AbstractAWSConfig=global_aws_config()) = amplifybackend("POST", "/backend/$(appId)/auth/$(backendEnvironmentName)", Dict{String, Any}("resourceConfig"=>resourceConfig, "resourceName"=>resourceName); aws_config=aws_config)
update_backend_auth(appId, backendEnvironmentName, resourceConfig, resourceName, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = amplifybackend("POST", "/backend/$(appId)/auth/$(backendEnvironmentName)", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("resourceConfig"=>resourceConfig, "resourceName"=>resourceName), args)); aws_config=aws_config)

"""
    UpdateBackendConfig()

Updates the AWS resources that are required to access the Amplify Admin UI.

# Required Parameters
- `appId`: The app ID.

# Optional Parameters
- `loginAuthConfig`: Describes the Amazon Cognito configuration for Admin UI access.
"""
update_backend_config(appId; aws_config::AbstractAWSConfig=global_aws_config()) = amplifybackend("POST", "/backend/$(appId)/config/update"; aws_config=aws_config)
update_backend_config(appId, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = amplifybackend("POST", "/backend/$(appId)/config/update", args; aws_config=aws_config)

"""
    UpdateBackendJob()

Updates a specific job.

# Required Parameters
- `appId`: The app ID.
- `backendEnvironmentName`: The name of the backend environment.
- `jobId`: The ID for the job.

# Optional Parameters
- `operation`: Filters the list of response objects to include only those with the
  specified operation name.
- `status`: Filters the list of response objects to include only those with the specified
  status.
"""
update_backend_job(appId, backendEnvironmentName, jobId; aws_config::AbstractAWSConfig=global_aws_config()) = amplifybackend("POST", "/backend/$(appId)/job/$(backendEnvironmentName)/$(jobId)"; aws_config=aws_config)
update_backend_job(appId, backendEnvironmentName, jobId, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = amplifybackend("POST", "/backend/$(appId)/job/$(backendEnvironmentName)/$(jobId)", args; aws_config=aws_config)
