# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: macie
using AWS.Compat
using AWS.UUIDs

"""
    AssociateMemberAccount()

Associates a specified AWS account with Amazon Macie Classic as a member account.

# Required Parameters
- `memberAccountId`: The ID of the AWS account that you want to associate with Amazon Macie Classic as a member account.

"""
associate_member_account(memberAccountId; aws_config::AbstractAWSConfig=global_aws_config()) = macie("AssociateMemberAccount", Dict{String, Any}("memberAccountId"=>memberAccountId); aws_config=aws_config)
associate_member_account(memberAccountId, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = macie("AssociateMemberAccount", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("memberAccountId"=>memberAccountId), args)); aws_config=aws_config)

"""
    AssociateS3Resources()

Associates specified S3 resources with Amazon Macie Classic for monitoring and data classification. If memberAccountId isn't specified, the action associates specified S3 resources with Macie Classic for the current master account. If memberAccountId is specified, the action associates specified S3 resources with Macie Classic for the specified member account. 

# Required Parameters
- `s3Resources`: The S3 resources that you want to associate with Amazon Macie Classic for monitoring and data classification. 

# Optional Parameters
- `memberAccountId`: The ID of the Amazon Macie Classic member account whose resources you want to associate with Macie Classic. 
"""
associate_s3_resources(s3Resources; aws_config::AbstractAWSConfig=global_aws_config()) = macie("AssociateS3Resources", Dict{String, Any}("s3Resources"=>s3Resources); aws_config=aws_config)
associate_s3_resources(s3Resources, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = macie("AssociateS3Resources", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("s3Resources"=>s3Resources), args)); aws_config=aws_config)

"""
    DisassociateMemberAccount()

Removes the specified member account from Amazon Macie Classic.

# Required Parameters
- `memberAccountId`: The ID of the member account that you want to remove from Amazon Macie Classic.

"""
disassociate_member_account(memberAccountId; aws_config::AbstractAWSConfig=global_aws_config()) = macie("DisassociateMemberAccount", Dict{String, Any}("memberAccountId"=>memberAccountId); aws_config=aws_config)
disassociate_member_account(memberAccountId, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = macie("DisassociateMemberAccount", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("memberAccountId"=>memberAccountId), args)); aws_config=aws_config)

"""
    DisassociateS3Resources()

Removes specified S3 resources from being monitored by Amazon Macie Classic. If memberAccountId isn't specified, the action removes specified S3 resources from Macie Classic for the current master account. If memberAccountId is specified, the action removes specified S3 resources from Macie Classic for the specified member account.

# Required Parameters
- `associatedS3Resources`: The S3 resources (buckets or prefixes) that you want to remove from being monitored and classified by Amazon Macie Classic. 

# Optional Parameters
- `memberAccountId`: The ID of the Amazon Macie Classic member account whose resources you want to remove from being monitored by Amazon Macie Classic. 
"""
disassociate_s3_resources(associatedS3Resources; aws_config::AbstractAWSConfig=global_aws_config()) = macie("DisassociateS3Resources", Dict{String, Any}("associatedS3Resources"=>associatedS3Resources); aws_config=aws_config)
disassociate_s3_resources(associatedS3Resources, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = macie("DisassociateS3Resources", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("associatedS3Resources"=>associatedS3Resources), args)); aws_config=aws_config)

"""
    ListMemberAccounts()

Lists all Amazon Macie Classic member accounts for the current Amazon Macie Classic master account.

# Optional Parameters
- `maxResults`: Use this parameter to indicate the maximum number of items that you want in the response. The default value is 250. 
- `nextToken`: Use this parameter when paginating results. Set the value of this parameter to null on your first call to the ListMemberAccounts action. Subsequent calls to the action fill nextToken in the request with the value of nextToken from the previous response to continue listing data. 
"""
list_member_accounts(; aws_config::AbstractAWSConfig=global_aws_config()) = macie("ListMemberAccounts"; aws_config=aws_config)
list_member_accounts(args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = macie("ListMemberAccounts", args; aws_config=aws_config)

"""
    ListS3Resources()

Lists all the S3 resources associated with Amazon Macie Classic. If memberAccountId isn't specified, the action lists the S3 resources associated with Amazon Macie Classic for the current master account. If memberAccountId is specified, the action lists the S3 resources associated with Amazon Macie Classic for the specified member account. 

# Optional Parameters
- `maxResults`: Use this parameter to indicate the maximum number of items that you want in the response. The default value is 250. 
- `memberAccountId`: The Amazon Macie Classic member account ID whose associated S3 resources you want to list. 
- `nextToken`: Use this parameter when paginating results. Set its value to null on your first call to the ListS3Resources action. Subsequent calls to the action fill nextToken in the request with the value of nextToken from the previous response to continue listing data. 
"""
list_s3_resources(; aws_config::AbstractAWSConfig=global_aws_config()) = macie("ListS3Resources"; aws_config=aws_config)
list_s3_resources(args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = macie("ListS3Resources", args; aws_config=aws_config)

"""
    UpdateS3Resources()

Updates the classification types for the specified S3 resources. If memberAccountId isn't specified, the action updates the classification types of the S3 resources associated with Amazon Macie Classic for the current master account. If memberAccountId is specified, the action updates the classification types of the S3 resources associated with Amazon Macie Classic for the specified member account. 

# Required Parameters
- `s3ResourcesUpdate`: The S3 resources whose classification types you want to update.

# Optional Parameters
- `memberAccountId`: The AWS ID of the Amazon Macie Classic member account whose S3 resources' classification types you want to update. 
"""
update_s3_resources(s3ResourcesUpdate; aws_config::AbstractAWSConfig=global_aws_config()) = macie("UpdateS3Resources", Dict{String, Any}("s3ResourcesUpdate"=>s3ResourcesUpdate); aws_config=aws_config)
update_s3_resources(s3ResourcesUpdate, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = macie("UpdateS3Resources", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("s3ResourcesUpdate"=>s3ResourcesUpdate), args)); aws_config=aws_config)
