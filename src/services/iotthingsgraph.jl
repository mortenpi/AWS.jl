# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: iotthingsgraph
using AWS.Compat
using AWS.UUIDs

"""
    AssociateEntityToThing()

Associates a device with a concrete thing that is in the user's registry. A thing can be associated with only one device at a time. If you associate a thing with a new device id, its previous association will be removed.

# Required Parameters
- `entityId`: The ID of the device to be associated with the thing. The ID should be in the following format.  urn:tdm:REGION/ACCOUNT ID/default:device:DEVICENAME 
- `thingName`: The name of the thing to which the entity is to be associated.

# Optional Parameters
- `namespaceVersion`: The version of the user's namespace. Defaults to the latest version of the user's namespace.
"""
associate_entity_to_thing(entityId, thingName; aws_config::AbstractAWSConfig=global_aws_config()) = iotthingsgraph("AssociateEntityToThing", Dict{String, Any}("entityId"=>entityId, "thingName"=>thingName); aws_config=aws_config)
associate_entity_to_thing(entityId, thingName, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = iotthingsgraph("AssociateEntityToThing", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("entityId"=>entityId, "thingName"=>thingName), args)); aws_config=aws_config)

"""
    CreateFlowTemplate()

Creates a workflow template. Workflows can be created only in the user's namespace. (The public namespace contains only entities.) The workflow can contain only entities in the specified namespace. The workflow is validated against the entities in the latest version of the user's namespace unless another namespace version is specified in the request.

# Required Parameters
- `definition`: The workflow DefinitionDocument.

# Optional Parameters
- `compatibleNamespaceVersion`: The namespace version in which the workflow is to be created. If no value is specified, the latest version is used by default.
"""
create_flow_template(definition; aws_config::AbstractAWSConfig=global_aws_config()) = iotthingsgraph("CreateFlowTemplate", Dict{String, Any}("definition"=>definition); aws_config=aws_config)
create_flow_template(definition, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = iotthingsgraph("CreateFlowTemplate", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("definition"=>definition), args)); aws_config=aws_config)

"""
    CreateSystemInstance()

Creates a system instance.  This action validates the system instance, prepares the deployment-related resources. For Greengrass deployments, it updates the Greengrass group that is specified by the greengrassGroupName parameter. It also adds a file to the S3 bucket specified by the s3BucketName parameter. You need to call DeploySystemInstance after running this action. For Greengrass deployments, since this action modifies and adds resources to a Greengrass group and an S3 bucket on the caller's behalf, the calling identity must have write permissions to both the specified Greengrass group and S3 bucket. Otherwise, the call will fail with an authorization error. For cloud deployments, this action requires a flowActionsRoleArn value. This is an IAM role that has permissions to access AWS services, such as AWS Lambda and AWS IoT, that the flow uses when it executes. If the definition document doesn't specify a version of the user's namespace, the latest version will be used by default.

# Required Parameters
- `definition`: 
- `target`: The target type of the deployment. Valid values are GREENGRASS and CLOUD.

# Optional Parameters
- `flowActionsRoleArn`: The ARN of the IAM role that AWS IoT Things Graph will assume when it executes the flow. This role must have read and write access to AWS Lambda and AWS IoT and any other AWS services that the flow uses when it executes. This value is required if the value of the target parameter is CLOUD.
- `greengrassGroupName`: The name of the Greengrass group where the system instance will be deployed. This value is required if the value of the target parameter is GREENGRASS.
- `metricsConfiguration`: 
- `s3BucketName`: The name of the Amazon Simple Storage Service bucket that will be used to store and deploy the system instance's resource file. This value is required if the value of the target parameter is GREENGRASS.
- `tags`: Metadata, consisting of key-value pairs, that can be used to categorize your system instances.
"""
create_system_instance(definition, target; aws_config::AbstractAWSConfig=global_aws_config()) = iotthingsgraph("CreateSystemInstance", Dict{String, Any}("definition"=>definition, "target"=>target); aws_config=aws_config)
create_system_instance(definition, target, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = iotthingsgraph("CreateSystemInstance", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("definition"=>definition, "target"=>target), args)); aws_config=aws_config)

"""
    CreateSystemTemplate()

Creates a system. The system is validated against the entities in the latest version of the user's namespace unless another namespace version is specified in the request.

# Required Parameters
- `definition`: The DefinitionDocument used to create the system.

# Optional Parameters
- `compatibleNamespaceVersion`: The namespace version in which the system is to be created. If no value is specified, the latest version is used by default.
"""
create_system_template(definition; aws_config::AbstractAWSConfig=global_aws_config()) = iotthingsgraph("CreateSystemTemplate", Dict{String, Any}("definition"=>definition); aws_config=aws_config)
create_system_template(definition, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = iotthingsgraph("CreateSystemTemplate", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("definition"=>definition), args)); aws_config=aws_config)

"""
    DeleteFlowTemplate()

Deletes a workflow. Any new system or deployment that contains this workflow will fail to update or deploy. Existing deployments that contain the workflow will continue to run (since they use a snapshot of the workflow taken at the time of deployment).

# Required Parameters
- `id`: The ID of the workflow to be deleted. The ID should be in the following format.  urn:tdm:REGION/ACCOUNT ID/default:workflow:WORKFLOWNAME 

"""
delete_flow_template(id; aws_config::AbstractAWSConfig=global_aws_config()) = iotthingsgraph("DeleteFlowTemplate", Dict{String, Any}("id"=>id); aws_config=aws_config)
delete_flow_template(id, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = iotthingsgraph("DeleteFlowTemplate", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("id"=>id), args)); aws_config=aws_config)

"""
    DeleteNamespace()

Deletes the specified namespace. This action deletes all of the entities in the namespace. Delete the systems and flows that use entities in the namespace before performing this action.

"""
delete_namespace(; aws_config::AbstractAWSConfig=global_aws_config()) = iotthingsgraph("DeleteNamespace"; aws_config=aws_config)
delete_namespace(args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = iotthingsgraph("DeleteNamespace", args; aws_config=aws_config)

"""
    DeleteSystemInstance()

Deletes a system instance. Only system instances that have never been deployed, or that have been undeployed can be deleted. Users can create a new system instance that has the same ID as a deleted system instance.

# Optional Parameters
- `id`: The ID of the system instance to be deleted.
"""
delete_system_instance(; aws_config::AbstractAWSConfig=global_aws_config()) = iotthingsgraph("DeleteSystemInstance"; aws_config=aws_config)
delete_system_instance(args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = iotthingsgraph("DeleteSystemInstance", args; aws_config=aws_config)

"""
    DeleteSystemTemplate()

Deletes a system. New deployments can't contain the system after its deletion. Existing deployments that contain the system will continue to work because they use a snapshot of the system that is taken when it is deployed.

# Required Parameters
- `id`: The ID of the system to be deleted. The ID should be in the following format.  urn:tdm:REGION/ACCOUNT ID/default:system:SYSTEMNAME 

"""
delete_system_template(id; aws_config::AbstractAWSConfig=global_aws_config()) = iotthingsgraph("DeleteSystemTemplate", Dict{String, Any}("id"=>id); aws_config=aws_config)
delete_system_template(id, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = iotthingsgraph("DeleteSystemTemplate", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("id"=>id), args)); aws_config=aws_config)

"""
    DeploySystemInstance()

 Greengrass and Cloud Deployments  Deploys the system instance to the target specified in CreateSystemInstance.   Greengrass Deployments  If the system or any workflows and entities have been updated before this action is called, then the deployment will create a new Amazon Simple Storage Service resource file and then deploy it. Since this action creates a Greengrass deployment on the caller's behalf, the calling identity must have write permissions to the specified Greengrass group. Otherwise, the call will fail with an authorization error. For information about the artifacts that get added to your Greengrass core device when you use this API, see AWS IoT Things Graph and AWS IoT Greengrass.

# Optional Parameters
- `id`: The ID of the system instance. This value is returned by the CreateSystemInstance action. The ID should be in the following format.  urn:tdm:REGION/ACCOUNT ID/default:deployment:DEPLOYMENTNAME 
"""
deploy_system_instance(; aws_config::AbstractAWSConfig=global_aws_config()) = iotthingsgraph("DeploySystemInstance"; aws_config=aws_config)
deploy_system_instance(args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = iotthingsgraph("DeploySystemInstance", args; aws_config=aws_config)

"""
    DeprecateFlowTemplate()

Deprecates the specified workflow. This action marks the workflow for deletion. Deprecated flows can't be deployed, but existing deployments will continue to run.

# Required Parameters
- `id`: The ID of the workflow to be deleted. The ID should be in the following format.  urn:tdm:REGION/ACCOUNT ID/default:workflow:WORKFLOWNAME 

"""
deprecate_flow_template(id; aws_config::AbstractAWSConfig=global_aws_config()) = iotthingsgraph("DeprecateFlowTemplate", Dict{String, Any}("id"=>id); aws_config=aws_config)
deprecate_flow_template(id, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = iotthingsgraph("DeprecateFlowTemplate", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("id"=>id), args)); aws_config=aws_config)

"""
    DeprecateSystemTemplate()

Deprecates the specified system.

# Required Parameters
- `id`: The ID of the system to delete. The ID should be in the following format.  urn:tdm:REGION/ACCOUNT ID/default:system:SYSTEMNAME 

"""
deprecate_system_template(id; aws_config::AbstractAWSConfig=global_aws_config()) = iotthingsgraph("DeprecateSystemTemplate", Dict{String, Any}("id"=>id); aws_config=aws_config)
deprecate_system_template(id, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = iotthingsgraph("DeprecateSystemTemplate", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("id"=>id), args)); aws_config=aws_config)

"""
    DescribeNamespace()

Gets the latest version of the user's namespace and the public version that it is tracking.

# Optional Parameters
- `namespaceName`: The name of the user's namespace. Set this to aws to get the public namespace.
"""
describe_namespace(; aws_config::AbstractAWSConfig=global_aws_config()) = iotthingsgraph("DescribeNamespace"; aws_config=aws_config)
describe_namespace(args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = iotthingsgraph("DescribeNamespace", args; aws_config=aws_config)

"""
    DissociateEntityFromThing()

Dissociates a device entity from a concrete thing. The action takes only the type of the entity that you need to dissociate because only one entity of a particular type can be associated with a thing.

# Required Parameters
- `entityType`: The entity type from which to disassociate the thing.
- `thingName`: The name of the thing to disassociate.

"""
dissociate_entity_from_thing(entityType, thingName; aws_config::AbstractAWSConfig=global_aws_config()) = iotthingsgraph("DissociateEntityFromThing", Dict{String, Any}("entityType"=>entityType, "thingName"=>thingName); aws_config=aws_config)
dissociate_entity_from_thing(entityType, thingName, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = iotthingsgraph("DissociateEntityFromThing", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("entityType"=>entityType, "thingName"=>thingName), args)); aws_config=aws_config)

"""
    GetEntities()

Gets definitions of the specified entities. Uses the latest version of the user's namespace by default. This API returns the following TDM entities.   Properties   States   Events   Actions   Capabilities   Mappings   Devices   Device Models   Services   This action doesn't return definitions for systems, flows, and deployments.

# Required Parameters
- `ids`: An array of entity IDs. The IDs should be in the following format.  urn:tdm:REGION/ACCOUNT ID/default:device:DEVICENAME 

# Optional Parameters
- `namespaceVersion`: The version of the user's namespace. Defaults to the latest version of the user's namespace.
"""
get_entities(ids; aws_config::AbstractAWSConfig=global_aws_config()) = iotthingsgraph("GetEntities", Dict{String, Any}("ids"=>ids); aws_config=aws_config)
get_entities(ids, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = iotthingsgraph("GetEntities", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ids"=>ids), args)); aws_config=aws_config)

"""
    GetFlowTemplate()

Gets the latest version of the DefinitionDocument and FlowTemplateSummary for the specified workflow.

# Required Parameters
- `id`: The ID of the workflow. The ID should be in the following format.  urn:tdm:REGION/ACCOUNT ID/default:workflow:WORKFLOWNAME 

# Optional Parameters
- `revisionNumber`: The number of the workflow revision to retrieve.
"""
get_flow_template(id; aws_config::AbstractAWSConfig=global_aws_config()) = iotthingsgraph("GetFlowTemplate", Dict{String, Any}("id"=>id); aws_config=aws_config)
get_flow_template(id, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = iotthingsgraph("GetFlowTemplate", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("id"=>id), args)); aws_config=aws_config)

"""
    GetFlowTemplateRevisions()

Gets revisions of the specified workflow. Only the last 100 revisions are stored. If the workflow has been deprecated, this action will return revisions that occurred before the deprecation. This action won't work for workflows that have been deleted.

# Required Parameters
- `id`: The ID of the workflow. The ID should be in the following format.  urn:tdm:REGION/ACCOUNT ID/default:workflow:WORKFLOWNAME 

# Optional Parameters
- `maxResults`: The maximum number of results to return in the response.
- `nextToken`: The string that specifies the next page of results. Use this when you're paginating results.
"""
get_flow_template_revisions(id; aws_config::AbstractAWSConfig=global_aws_config()) = iotthingsgraph("GetFlowTemplateRevisions", Dict{String, Any}("id"=>id); aws_config=aws_config)
get_flow_template_revisions(id, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = iotthingsgraph("GetFlowTemplateRevisions", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("id"=>id), args)); aws_config=aws_config)

"""
    GetNamespaceDeletionStatus()

Gets the status of a namespace deletion task.

"""
get_namespace_deletion_status(; aws_config::AbstractAWSConfig=global_aws_config()) = iotthingsgraph("GetNamespaceDeletionStatus"; aws_config=aws_config)
get_namespace_deletion_status(args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = iotthingsgraph("GetNamespaceDeletionStatus", args; aws_config=aws_config)

"""
    GetSystemInstance()

Gets a system instance.

# Required Parameters
- `id`: The ID of the system deployment instance. This value is returned by CreateSystemInstance. The ID should be in the following format.  urn:tdm:REGION/ACCOUNT ID/default:deployment:DEPLOYMENTNAME 

"""
get_system_instance(id; aws_config::AbstractAWSConfig=global_aws_config()) = iotthingsgraph("GetSystemInstance", Dict{String, Any}("id"=>id); aws_config=aws_config)
get_system_instance(id, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = iotthingsgraph("GetSystemInstance", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("id"=>id), args)); aws_config=aws_config)

"""
    GetSystemTemplate()

Gets a system.

# Required Parameters
- `id`: The ID of the system to get. This ID must be in the user's namespace. The ID should be in the following format.  urn:tdm:REGION/ACCOUNT ID/default:system:SYSTEMNAME 

# Optional Parameters
- `revisionNumber`: The number that specifies the revision of the system to get.
"""
get_system_template(id; aws_config::AbstractAWSConfig=global_aws_config()) = iotthingsgraph("GetSystemTemplate", Dict{String, Any}("id"=>id); aws_config=aws_config)
get_system_template(id, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = iotthingsgraph("GetSystemTemplate", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("id"=>id), args)); aws_config=aws_config)

"""
    GetSystemTemplateRevisions()

Gets revisions made to the specified system template. Only the previous 100 revisions are stored. If the system has been deprecated, this action will return the revisions that occurred before its deprecation. This action won't work with systems that have been deleted.

# Required Parameters
- `id`: The ID of the system template. The ID should be in the following format.  urn:tdm:REGION/ACCOUNT ID/default:system:SYSTEMNAME 

# Optional Parameters
- `maxResults`: The maximum number of results to return in the response.
- `nextToken`: The string that specifies the next page of results. Use this when you're paginating results.
"""
get_system_template_revisions(id; aws_config::AbstractAWSConfig=global_aws_config()) = iotthingsgraph("GetSystemTemplateRevisions", Dict{String, Any}("id"=>id); aws_config=aws_config)
get_system_template_revisions(id, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = iotthingsgraph("GetSystemTemplateRevisions", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("id"=>id), args)); aws_config=aws_config)

"""
    GetUploadStatus()

Gets the status of the specified upload.

# Required Parameters
- `uploadId`: The ID of the upload. This value is returned by the UploadEntityDefinitions action.

"""
get_upload_status(uploadId; aws_config::AbstractAWSConfig=global_aws_config()) = iotthingsgraph("GetUploadStatus", Dict{String, Any}("uploadId"=>uploadId); aws_config=aws_config)
get_upload_status(uploadId, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = iotthingsgraph("GetUploadStatus", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("uploadId"=>uploadId), args)); aws_config=aws_config)

"""
    ListFlowExecutionMessages()

Returns a list of objects that contain information about events in a flow execution.

# Required Parameters
- `flowExecutionId`: The ID of the flow execution.

# Optional Parameters
- `maxResults`: The maximum number of results to return in the response.
- `nextToken`: The string that specifies the next page of results. Use this when you're paginating results.
"""
list_flow_execution_messages(flowExecutionId; aws_config::AbstractAWSConfig=global_aws_config()) = iotthingsgraph("ListFlowExecutionMessages", Dict{String, Any}("flowExecutionId"=>flowExecutionId); aws_config=aws_config)
list_flow_execution_messages(flowExecutionId, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = iotthingsgraph("ListFlowExecutionMessages", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("flowExecutionId"=>flowExecutionId), args)); aws_config=aws_config)

"""
    ListTagsForResource()

Lists all tags on an AWS IoT Things Graph resource.

# Required Parameters
- `resourceArn`: The Amazon Resource Name (ARN) of the resource whose tags are to be returned.

# Optional Parameters
- `maxResults`: The maximum number of tags to return.
- `nextToken`: The token that specifies the next page of results to return.
"""
list_tags_for_resource(resourceArn; aws_config::AbstractAWSConfig=global_aws_config()) = iotthingsgraph("ListTagsForResource", Dict{String, Any}("resourceArn"=>resourceArn); aws_config=aws_config)
list_tags_for_resource(resourceArn, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = iotthingsgraph("ListTagsForResource", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("resourceArn"=>resourceArn), args)); aws_config=aws_config)

"""
    SearchEntities()

Searches for entities of the specified type. You can search for entities in your namespace and the public namespace that you're tracking.

# Required Parameters
- `entityTypes`: The entity types for which to search.

# Optional Parameters
- `filters`: Optional filter to apply to the search. Valid filters are NAME NAMESPACE, SEMANTIC_TYPE_PATH and REFERENCED_ENTITY_ID. REFERENCED_ENTITY_ID filters on entities that are used by the entity in the result set. For example, you can filter on the ID of a property that is used in a state. Multiple filters function as OR criteria in the query. Multiple values passed inside the filter function as AND criteria.
- `maxResults`: The maximum number of results to return in the response.
- `namespaceVersion`: The version of the user's namespace. Defaults to the latest version of the user's namespace.
- `nextToken`: The string that specifies the next page of results. Use this when you're paginating results.
"""
search_entities(entityTypes; aws_config::AbstractAWSConfig=global_aws_config()) = iotthingsgraph("SearchEntities", Dict{String, Any}("entityTypes"=>entityTypes); aws_config=aws_config)
search_entities(entityTypes, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = iotthingsgraph("SearchEntities", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("entityTypes"=>entityTypes), args)); aws_config=aws_config)

"""
    SearchFlowExecutions()

Searches for AWS IoT Things Graph workflow execution instances.

# Required Parameters
- `systemInstanceId`: The ID of the system instance that contains the flow.

# Optional Parameters
- `endTime`: The date and time of the latest flow execution to return.
- `flowExecutionId`: The ID of a flow execution.
- `maxResults`: The maximum number of results to return in the response.
- `nextToken`: The string that specifies the next page of results. Use this when you're paginating results.
- `startTime`: The date and time of the earliest flow execution to return.
"""
search_flow_executions(systemInstanceId; aws_config::AbstractAWSConfig=global_aws_config()) = iotthingsgraph("SearchFlowExecutions", Dict{String, Any}("systemInstanceId"=>systemInstanceId); aws_config=aws_config)
search_flow_executions(systemInstanceId, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = iotthingsgraph("SearchFlowExecutions", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("systemInstanceId"=>systemInstanceId), args)); aws_config=aws_config)

"""
    SearchFlowTemplates()

Searches for summary information about workflows.

# Optional Parameters
- `filters`: An array of objects that limit the result set. The only valid filter is DEVICE_MODEL_ID.
- `maxResults`: The maximum number of results to return in the response.
- `nextToken`: The string that specifies the next page of results. Use this when you're paginating results.
"""
search_flow_templates(; aws_config::AbstractAWSConfig=global_aws_config()) = iotthingsgraph("SearchFlowTemplates"; aws_config=aws_config)
search_flow_templates(args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = iotthingsgraph("SearchFlowTemplates", args; aws_config=aws_config)

"""
    SearchSystemInstances()

Searches for system instances in the user's account.

# Optional Parameters
- `filters`: Optional filter to apply to the search. Valid filters are SYSTEM_TEMPLATE_ID, STATUS, and GREENGRASS_GROUP_NAME. Multiple filters function as OR criteria in the query. Multiple values passed inside the filter function as AND criteria.
- `maxResults`: The maximum number of results to return in the response.
- `nextToken`: The string that specifies the next page of results. Use this when you're paginating results.
"""
search_system_instances(; aws_config::AbstractAWSConfig=global_aws_config()) = iotthingsgraph("SearchSystemInstances"; aws_config=aws_config)
search_system_instances(args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = iotthingsgraph("SearchSystemInstances", args; aws_config=aws_config)

"""
    SearchSystemTemplates()

Searches for summary information about systems in the user's account. You can filter by the ID of a workflow to return only systems that use the specified workflow.

# Optional Parameters
- `filters`: An array of filters that limit the result set. The only valid filter is FLOW_TEMPLATE_ID.
- `maxResults`: The maximum number of results to return in the response.
- `nextToken`: The string that specifies the next page of results. Use this when you're paginating results.
"""
search_system_templates(; aws_config::AbstractAWSConfig=global_aws_config()) = iotthingsgraph("SearchSystemTemplates"; aws_config=aws_config)
search_system_templates(args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = iotthingsgraph("SearchSystemTemplates", args; aws_config=aws_config)

"""
    SearchThings()

Searches for things associated with the specified entity. You can search by both device and device model. For example, if two different devices, camera1 and camera2, implement the camera device model, the user can associate thing1 to camera1 and thing2 to camera2. SearchThings(camera2) will return only thing2, but SearchThings(camera) will return both thing1 and thing2. This action searches for exact matches and doesn't perform partial text matching.

# Required Parameters
- `entityId`: The ID of the entity to which the things are associated. The IDs should be in the following format.  urn:tdm:REGION/ACCOUNT ID/default:device:DEVICENAME 

# Optional Parameters
- `maxResults`: The maximum number of results to return in the response.
- `namespaceVersion`: The version of the user's namespace. Defaults to the latest version of the user's namespace.
- `nextToken`: The string that specifies the next page of results. Use this when you're paginating results.
"""
search_things(entityId; aws_config::AbstractAWSConfig=global_aws_config()) = iotthingsgraph("SearchThings", Dict{String, Any}("entityId"=>entityId); aws_config=aws_config)
search_things(entityId, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = iotthingsgraph("SearchThings", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("entityId"=>entityId), args)); aws_config=aws_config)

"""
    TagResource()

Creates a tag for the specified resource.

# Required Parameters
- `resourceArn`: The Amazon Resource Name (ARN) of the resource whose tags are returned.
- `tags`: A list of tags to add to the resource.&gt;

"""
tag_resource(resourceArn, tags; aws_config::AbstractAWSConfig=global_aws_config()) = iotthingsgraph("TagResource", Dict{String, Any}("resourceArn"=>resourceArn, "tags"=>tags); aws_config=aws_config)
tag_resource(resourceArn, tags, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = iotthingsgraph("TagResource", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("resourceArn"=>resourceArn, "tags"=>tags), args)); aws_config=aws_config)

"""
    UndeploySystemInstance()

Removes a system instance from its target (Cloud or Greengrass).

# Optional Parameters
- `id`: The ID of the system instance to remove from its target.
"""
undeploy_system_instance(; aws_config::AbstractAWSConfig=global_aws_config()) = iotthingsgraph("UndeploySystemInstance"; aws_config=aws_config)
undeploy_system_instance(args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = iotthingsgraph("UndeploySystemInstance", args; aws_config=aws_config)

"""
    UntagResource()

Removes a tag from the specified resource.

# Required Parameters
- `resourceArn`: The Amazon Resource Name (ARN) of the resource whose tags are to be removed.
- `tagKeys`: A list of tag key names to remove from the resource. You don't specify the value. Both the key and its associated value are removed.  This parameter to the API requires a JSON text string argument. For information on how to format a JSON parameter for the various command line tool environments, see Using JSON for Parameters in the AWS CLI User Guide. 

"""
untag_resource(resourceArn, tagKeys; aws_config::AbstractAWSConfig=global_aws_config()) = iotthingsgraph("UntagResource", Dict{String, Any}("resourceArn"=>resourceArn, "tagKeys"=>tagKeys); aws_config=aws_config)
untag_resource(resourceArn, tagKeys, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = iotthingsgraph("UntagResource", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("resourceArn"=>resourceArn, "tagKeys"=>tagKeys), args)); aws_config=aws_config)

"""
    UpdateFlowTemplate()

Updates the specified workflow. All deployed systems and system instances that use the workflow will see the changes in the flow when it is redeployed. If you don't want this behavior, copy the workflow (creating a new workflow with a different ID), and update the copy. The workflow can contain only entities in the specified namespace. 

# Required Parameters
- `definition`: The DefinitionDocument that contains the updated workflow definition.
- `id`: The ID of the workflow to be updated. The ID should be in the following format.  urn:tdm:REGION/ACCOUNT ID/default:workflow:WORKFLOWNAME 

# Optional Parameters
- `compatibleNamespaceVersion`: The version of the user's namespace. If no value is specified, the latest version is used by default. Use the GetFlowTemplateRevisions if you want to find earlier revisions of the flow to update.
"""
update_flow_template(definition, id; aws_config::AbstractAWSConfig=global_aws_config()) = iotthingsgraph("UpdateFlowTemplate", Dict{String, Any}("definition"=>definition, "id"=>id); aws_config=aws_config)
update_flow_template(definition, id, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = iotthingsgraph("UpdateFlowTemplate", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("definition"=>definition, "id"=>id), args)); aws_config=aws_config)

"""
    UpdateSystemTemplate()

Updates the specified system. You don't need to run this action after updating a workflow. Any deployment that uses the system will see the changes in the system when it is redeployed.

# Required Parameters
- `definition`: The DefinitionDocument that contains the updated system definition.
- `id`: The ID of the system to be updated. The ID should be in the following format.  urn:tdm:REGION/ACCOUNT ID/default:system:SYSTEMNAME 

# Optional Parameters
- `compatibleNamespaceVersion`: The version of the user's namespace. Defaults to the latest version of the user's namespace. If no value is specified, the latest version is used by default.
"""
update_system_template(definition, id; aws_config::AbstractAWSConfig=global_aws_config()) = iotthingsgraph("UpdateSystemTemplate", Dict{String, Any}("definition"=>definition, "id"=>id); aws_config=aws_config)
update_system_template(definition, id, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = iotthingsgraph("UpdateSystemTemplate", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("definition"=>definition, "id"=>id), args)); aws_config=aws_config)

"""
    UploadEntityDefinitions()

Asynchronously uploads one or more entity definitions to the user's namespace. The document parameter is required if syncWithPublicNamespace and deleteExistingEntites are false. If the syncWithPublicNamespace parameter is set to true, the user's namespace will synchronize with the latest version of the public namespace. If deprecateExistingEntities is set to true, all entities in the latest version will be deleted before the new DefinitionDocument is uploaded. When a user uploads entity definitions for the first time, the service creates a new namespace for the user. The new namespace tracks the public namespace. Currently users can have only one namespace. The namespace version increments whenever a user uploads entity definitions that are backwards-incompatible and whenever a user sets the syncWithPublicNamespace parameter or the deprecateExistingEntities parameter to true. The IDs for all of the entities should be in URN format. Each entity must be in the user's namespace. Users can't create entities in the public namespace, but entity definitions can refer to entities in the public namespace. Valid entities are Device, DeviceModel, Service, Capability, State, Action, Event, Property, Mapping, Enum. 

# Optional Parameters
- `deprecateExistingEntities`: A Boolean that specifies whether to deprecate all entities in the latest version before uploading the new DefinitionDocument. If set to true, the upload will create a new namespace version.
- `document`: The DefinitionDocument that defines the updated entities.
- `syncWithPublicNamespace`: A Boolean that specifies whether to synchronize with the latest version of the public namespace. If set to true, the upload will create a new namespace version.
"""
upload_entity_definitions(; aws_config::AbstractAWSConfig=global_aws_config()) = iotthingsgraph("UploadEntityDefinitions"; aws_config=aws_config)
upload_entity_definitions(args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = iotthingsgraph("UploadEntityDefinitions", args; aws_config=aws_config)
