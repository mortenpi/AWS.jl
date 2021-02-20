# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: sagemaker_a2i_runtime
using AWS.Compat
using AWS.UUIDs

"""
    DeleteHumanLoop()

Deletes the specified human loop for a flow definition.

# Required Parameters
- `HumanLoopName`: The name of the human loop that you want to delete.

"""
delete_human_loop(HumanLoopName; aws_config::AbstractAWSConfig=global_aws_config()) = sagemaker_a2i_runtime("DELETE", "/human-loops/$(HumanLoopName)"; aws_config=aws_config)
delete_human_loop(HumanLoopName, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = sagemaker_a2i_runtime("DELETE", "/human-loops/$(HumanLoopName)", args; aws_config=aws_config)

"""
    DescribeHumanLoop()

Returns information about the specified human loop.

# Required Parameters
- `HumanLoopName`: The name of the human loop that you want information about.

"""
describe_human_loop(HumanLoopName; aws_config::AbstractAWSConfig=global_aws_config()) = sagemaker_a2i_runtime("GET", "/human-loops/$(HumanLoopName)"; aws_config=aws_config)
describe_human_loop(HumanLoopName, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = sagemaker_a2i_runtime("GET", "/human-loops/$(HumanLoopName)", args; aws_config=aws_config)

"""
    ListHumanLoops()

Returns information about human loops, given the specified parameters. If a human loop was
deleted, it will not be included.

# Required Parameters
- `FlowDefinitionArn`: The Amazon Resource Name (ARN) of a flow definition.

# Optional Parameters
- `CreationTimeAfter`: (Optional) The timestamp of the date when you want the human loops
  to begin in ISO 8601 format. For example, 2020-02-24.
- `CreationTimeBefore`: (Optional) The timestamp of the date before which you want the
  human loops to begin in ISO 8601 format. For example, 2020-02-24.
- `MaxResults`: The total number of items to return. If the total number of available items
  is more than the value specified in MaxResults, then a NextToken is returned in the output.
  You can use this token to display the next page of results.
- `NextToken`: A token to display the next page of results.
- `SortOrder`: Optional. The order for displaying results. Valid values: Ascending and
  Descending.
"""
list_human_loops(FlowDefinitionArn; aws_config::AbstractAWSConfig=global_aws_config()) = sagemaker_a2i_runtime("GET", "/human-loops", Dict{String, Any}("FlowDefinitionArn"=>FlowDefinitionArn); aws_config=aws_config)
list_human_loops(FlowDefinitionArn, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = sagemaker_a2i_runtime("GET", "/human-loops", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("FlowDefinitionArn"=>FlowDefinitionArn), args)); aws_config=aws_config)

"""
    StartHumanLoop()

Starts a human loop, provided that at least one activation condition is met.

# Required Parameters
- `FlowDefinitionArn`: The Amazon Resource Name (ARN) of the flow definition associated
  with this human loop.
- `HumanLoopInput`: An object that contains information about the human loop.
- `HumanLoopName`: The name of the human loop.

# Optional Parameters
- `DataAttributes`: Attributes of the specified data. Use DataAttributes to specify if your
  data is free of personally identifiable information and/or free of adult content.
"""
start_human_loop(FlowDefinitionArn, HumanLoopInput, HumanLoopName; aws_config::AbstractAWSConfig=global_aws_config()) = sagemaker_a2i_runtime("POST", "/human-loops", Dict{String, Any}("FlowDefinitionArn"=>FlowDefinitionArn, "HumanLoopInput"=>HumanLoopInput, "HumanLoopName"=>HumanLoopName); aws_config=aws_config)
start_human_loop(FlowDefinitionArn, HumanLoopInput, HumanLoopName, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = sagemaker_a2i_runtime("POST", "/human-loops", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("FlowDefinitionArn"=>FlowDefinitionArn, "HumanLoopInput"=>HumanLoopInput, "HumanLoopName"=>HumanLoopName), args)); aws_config=aws_config)

"""
    StopHumanLoop()

Stops the specified human loop.

# Required Parameters
- `HumanLoopName`: The name of the human loop that you want to stop.

"""
stop_human_loop(HumanLoopName; aws_config::AbstractAWSConfig=global_aws_config()) = sagemaker_a2i_runtime("POST", "/human-loops/stop", Dict{String, Any}("HumanLoopName"=>HumanLoopName); aws_config=aws_config)
stop_human_loop(HumanLoopName, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = sagemaker_a2i_runtime("POST", "/human-loops/stop", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("HumanLoopName"=>HumanLoopName), args)); aws_config=aws_config)
