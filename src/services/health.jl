# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: health
using AWS.Compat
using AWS.UUIDs

"""
    DescribeAffectedAccountsForOrganization()

Returns a list of accounts in the organization from AWS Organizations that are affected by
the provided event. For more information about the different types of AWS Health events,
see Event.  Before you can call this operation, you must first enable AWS Health to work
with AWS Organizations. To do this, call the EnableHealthServiceAccessForOrganization
operation from your organization's management account.  This API operation uses pagination.
Specify the nextToken parameter in the next request to return more results.

# Required Parameters
- `eventArn`: The unique identifier for the event. Format:
  arn:aws:health:event-region::event/SERVICE/EVENT_TYPE_CODE/EVENT_TYPE_PLUS_ID . Example:
  Example:
  arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMEN
  T_SCHEDULED_ABC123-DEF456

# Optional Parameters
- `maxResults`: The maximum number of items to return in one batch, between 10 and 100,
  inclusive.
- `nextToken`: If the results of a search are large, only a portion of the results are
  returned, and a nextToken pagination token is returned in the response. To retrieve the
  next batch of results, reissue the search request and include the returned token. When all
  results have been returned, the response does not contain a pagination token value.
"""
describe_affected_accounts_for_organization(eventArn; aws_config::AbstractAWSConfig=global_aws_config()) = health("DescribeAffectedAccountsForOrganization", Dict{String, Any}("eventArn"=>eventArn); aws_config=aws_config)
describe_affected_accounts_for_organization(eventArn, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = health("DescribeAffectedAccountsForOrganization", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("eventArn"=>eventArn), args)); aws_config=aws_config)

"""
    DescribeAffectedEntities()

Returns a list of entities that have been affected by the specified events, based on the
specified filter criteria. Entities can refer to individual customer resources, groups of
customer resources, or any other construct, depending on the AWS service. Events that have
impact beyond that of the affected entities, or where the extent of impact is unknown,
include at least one entity indicating this. At least one event ARN is required. Results
are sorted by the lastUpdatedTime of the entity, starting with the most recent.    This API
operation uses pagination. Specify the nextToken parameter in the next request to return
more results.   This operation supports resource-level permissions. You can use this
operation to allow or deny access to specific AWS Health events. For more information, see
Resource- and action-based conditions in the AWS Health User Guide.

# Required Parameters
- `filter`: Values to narrow the results returned. At least one event ARN is required.

# Optional Parameters
- `locale`: The locale (language) to return information in. English (en) is the default and
  the only supported value at this time.
- `maxResults`: The maximum number of items to return in one batch, between 10 and 100,
  inclusive.
- `nextToken`: If the results of a search are large, only a portion of the results are
  returned, and a nextToken pagination token is returned in the response. To retrieve the
  next batch of results, reissue the search request and include the returned token. When all
  results have been returned, the response does not contain a pagination token value.
"""
describe_affected_entities(filter; aws_config::AbstractAWSConfig=global_aws_config()) = health("DescribeAffectedEntities", Dict{String, Any}("filter"=>filter); aws_config=aws_config)
describe_affected_entities(filter, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = health("DescribeAffectedEntities", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("filter"=>filter), args)); aws_config=aws_config)

"""
    DescribeAffectedEntitiesForOrganization()

Returns a list of entities that have been affected by one or more events for one or more
accounts in your organization in AWS Organizations, based on the filter criteria. Entities
can refer to individual customer resources, groups of customer resources, or any other
construct, depending on the AWS service. At least one event Amazon Resource Name (ARN) and
account ID are required. Results are sorted by the lastUpdatedTime of the entity, starting
with the most recent. Before you can call this operation, you must first enable AWS Health
to work with AWS Organizations. To do this, call the
EnableHealthServiceAccessForOrganization operation from your organization's management
account.    This API operation uses pagination. Specify the nextToken parameter in the next
request to return more results.   This operation doesn't support resource-level
permissions. You can't use this operation to allow or deny access to specific AWS Health
events. For more information, see Resource- and action-based conditions in the AWS Health
User Guide.

# Required Parameters
- `organizationEntityFilters`: A JSON set of elements including the awsAccountId and the
  eventArn.

# Optional Parameters
- `locale`: The locale (language) to return information in. English (en) is the default and
  the only supported value at this time.
- `maxResults`: The maximum number of items to return in one batch, between 10 and 100,
  inclusive.
- `nextToken`: If the results of a search are large, only a portion of the results are
  returned, and a nextToken pagination token is returned in the response. To retrieve the
  next batch of results, reissue the search request and include the returned token. When all
  results have been returned, the response does not contain a pagination token value.
"""
describe_affected_entities_for_organization(organizationEntityFilters; aws_config::AbstractAWSConfig=global_aws_config()) = health("DescribeAffectedEntitiesForOrganization", Dict{String, Any}("organizationEntityFilters"=>organizationEntityFilters); aws_config=aws_config)
describe_affected_entities_for_organization(organizationEntityFilters, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = health("DescribeAffectedEntitiesForOrganization", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("organizationEntityFilters"=>organizationEntityFilters), args)); aws_config=aws_config)

"""
    DescribeEntityAggregates()

Returns the number of entities that are affected by each of the specified events. If no
events are specified, the counts of all affected entities are returned.

# Optional Parameters
- `eventArns`: A list of event ARNs (unique identifiers). For example:
  \"arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREM
  ENT_SCHEDULED_ABC123-CDE456\",
  \"arn:aws:health:us-west-1::event/EBS/AWS_EBS_LOST_VOLUME/AWS_EBS_LOST_VOLUME_CHI789_JKL101
  \"
"""
describe_entity_aggregates(; aws_config::AbstractAWSConfig=global_aws_config()) = health("DescribeEntityAggregates"; aws_config=aws_config)
describe_entity_aggregates(args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = health("DescribeEntityAggregates", args; aws_config=aws_config)

"""
    DescribeEventAggregates()

Returns the number of events of each event type (issue, scheduled change, and account
notification). If no filter is specified, the counts of all events in each category are
returned.  This API operation uses pagination. Specify the nextToken parameter in the next
request to return more results.

# Required Parameters
- `aggregateField`: The only currently supported value is eventTypeCategory.

# Optional Parameters
- `filter`: Values to narrow the results returned.
- `maxResults`: The maximum number of items to return in one batch, between 10 and 100,
  inclusive.
- `nextToken`: If the results of a search are large, only a portion of the results are
  returned, and a nextToken pagination token is returned in the response. To retrieve the
  next batch of results, reissue the search request and include the returned token. When all
  results have been returned, the response does not contain a pagination token value.
"""
describe_event_aggregates(aggregateField; aws_config::AbstractAWSConfig=global_aws_config()) = health("DescribeEventAggregates", Dict{String, Any}("aggregateField"=>aggregateField); aws_config=aws_config)
describe_event_aggregates(aggregateField, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = health("DescribeEventAggregates", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("aggregateField"=>aggregateField), args)); aws_config=aws_config)

"""
    DescribeEventDetails()

Returns detailed information about one or more specified events. Information includes
standard event data (AWS Region, service, and so on, as returned by DescribeEvents), a
detailed event description, and possible additional metadata that depends upon the nature
of the event. Affected entities are not included. To retrieve those, use the
DescribeAffectedEntities operation. If a specified event cannot be retrieved, an error
message is returned for that event.  This operation supports resource-level permissions.
You can use this operation to allow or deny access to specific AWS Health events. For more
information, see Resource- and action-based conditions in the AWS Health User Guide.

# Required Parameters
- `eventArns`: A list of event ARNs (unique identifiers). For example:
  \"arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREM
  ENT_SCHEDULED_ABC123-CDE456\",
  \"arn:aws:health:us-west-1::event/EBS/AWS_EBS_LOST_VOLUME/AWS_EBS_LOST_VOLUME_CHI789_JKL101
  \"

# Optional Parameters
- `locale`: The locale (language) to return information in. English (en) is the default and
  the only supported value at this time.
"""
describe_event_details(eventArns; aws_config::AbstractAWSConfig=global_aws_config()) = health("DescribeEventDetails", Dict{String, Any}("eventArns"=>eventArns); aws_config=aws_config)
describe_event_details(eventArns, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = health("DescribeEventDetails", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("eventArns"=>eventArns), args)); aws_config=aws_config)

"""
    DescribeEventDetailsForOrganization()

Returns detailed information about one or more specified events for one or more accounts in
your organization. Information includes standard event data (AWS Region, service, and so
on, as returned by DescribeEventsForOrganization), a detailed event description, and
possible additional metadata that depends upon the nature of the event. Affected entities
are not included; to retrieve those, use the DescribeAffectedEntitiesForOrganization
operation. Before you can call this operation, you must first enable AWS Health to work
with AWS Organizations. To do this, call the EnableHealthServiceAccessForOrganization
operation from your organization's management account. When you call the
DescribeEventDetailsForOrganization operation, you specify the
organizationEventDetailFilters object in the request. Depending on the AWS Health event
type, note the following differences:   If the event is public, the awsAccountId parameter
must be empty. If you specify an account ID for a public event, then an error message is
returned. That's because the event might apply to all AWS accounts and isn't specific to an
account in your organization.   If the event is specific to an account, then you must
specify the awsAccountId parameter in the request. If you don't specify an account ID, an
error message returns because the event is specific to an AWS account in your organization.
   For more information, see Event.  This operation doesn't support resource-level
permissions. You can't use this operation to allow or deny access to specific AWS Health
events. For more information, see Resource- and action-based conditions in the AWS Health
User Guide.

# Required Parameters
- `organizationEventDetailFilters`: A set of JSON elements that includes the awsAccountId
  and the eventArn.

# Optional Parameters
- `locale`: The locale (language) to return information in. English (en) is the default and
  the only supported value at this time.
"""
describe_event_details_for_organization(organizationEventDetailFilters; aws_config::AbstractAWSConfig=global_aws_config()) = health("DescribeEventDetailsForOrganization", Dict{String, Any}("organizationEventDetailFilters"=>organizationEventDetailFilters); aws_config=aws_config)
describe_event_details_for_organization(organizationEventDetailFilters, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = health("DescribeEventDetailsForOrganization", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("organizationEventDetailFilters"=>organizationEventDetailFilters), args)); aws_config=aws_config)

"""
    DescribeEventTypes()

Returns the event types that meet the specified filter criteria. You can use this API
operation to find information about the AWS Health event, such as the category, AWS
service, and event code. The metadata for each event appears in the EventType object.  If
you don't specify a filter criteria, the API operation returns all event types, in no
particular order.   This API operation uses pagination. Specify the nextToken parameter in
the next request to return more results.

# Optional Parameters
- `filter`: Values to narrow the results returned.
- `locale`: The locale (language) to return information in. English (en) is the default and
  the only supported value at this time.
- `maxResults`: The maximum number of items to return in one batch, between 10 and 100,
  inclusive.
- `nextToken`: If the results of a search are large, only a portion of the results are
  returned, and a nextToken pagination token is returned in the response. To retrieve the
  next batch of results, reissue the search request and include the returned token. When all
  results have been returned, the response does not contain a pagination token value.
"""
describe_event_types(; aws_config::AbstractAWSConfig=global_aws_config()) = health("DescribeEventTypes"; aws_config=aws_config)
describe_event_types(args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = health("DescribeEventTypes", args; aws_config=aws_config)

"""
    DescribeEvents()

 Returns information about events that meet the specified filter criteria. Events are
returned in a summary form and do not include the detailed description, any additional
metadata that depends on the event type, or any affected resources. To retrieve that
information, use the DescribeEventDetails and DescribeAffectedEntities operations. If no
filter criteria are specified, all events are returned. Results are sorted by
lastModifiedTime, starting with the most recent event.    When you call the DescribeEvents
operation and specify an entity for the entityValues parameter, AWS Health might return
public events that aren't specific to that resource. For example, if you call
DescribeEvents and specify an ID for an Amazon Elastic Compute Cloud (Amazon EC2) instance,
AWS Health might return events that aren't specific to that resource or service. To get
events that are specific to a service, use the services parameter in the filter object. For
more information, see Event.   This API operation uses pagination. Specify the nextToken
parameter in the next request to return more results.

# Optional Parameters
- `filter`: Values to narrow the results returned.
- `locale`: The locale (language) to return information in. English (en) is the default and
  the only supported value at this time.
- `maxResults`: The maximum number of items to return in one batch, between 10 and 100,
  inclusive.
- `nextToken`: If the results of a search are large, only a portion of the results are
  returned, and a nextToken pagination token is returned in the response. To retrieve the
  next batch of results, reissue the search request and include the returned token. When all
  results have been returned, the response does not contain a pagination token value.
"""
describe_events(; aws_config::AbstractAWSConfig=global_aws_config()) = health("DescribeEvents"; aws_config=aws_config)
describe_events(args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = health("DescribeEvents", args; aws_config=aws_config)

"""
    DescribeEventsForOrganization()

Returns information about events across your organization in AWS Organizations. You can use
thefilters parameter to specify the events that you want to return. Events are returned in
a summary form and don't include the affected accounts, detailed description, any
additional metadata that depends on the event type, or any affected resources. To retrieve
that information, use the following operations:    DescribeAffectedAccountsForOrganization
   DescribeEventDetailsForOrganization     DescribeAffectedEntitiesForOrganization    If
you don't specify a filter, the DescribeEventsForOrganizations returns all events across
your organization. Results are sorted by lastModifiedTime, starting with the most recent
event.  For more information about the different types of AWS Health events, see Event.
Before you can call this operation, you must first enable AWS Health to work with AWS
Organizations. To do this, call the EnableHealthServiceAccessForOrganization operation from
your organization's management account.  This API operation uses pagination. Specify the
nextToken parameter in the next request to return more results.

# Optional Parameters
- `filter`: Values to narrow the results returned.
- `locale`: The locale (language) to return information in. English (en) is the default and
  the only supported value at this time.
- `maxResults`: The maximum number of items to return in one batch, between 10 and 100,
  inclusive.
- `nextToken`: If the results of a search are large, only a portion of the results are
  returned, and a nextToken pagination token is returned in the response. To retrieve the
  next batch of results, reissue the search request and include the returned token. When all
  results have been returned, the response does not contain a pagination token value.
"""
describe_events_for_organization(; aws_config::AbstractAWSConfig=global_aws_config()) = health("DescribeEventsForOrganization"; aws_config=aws_config)
describe_events_for_organization(args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = health("DescribeEventsForOrganization", args; aws_config=aws_config)

"""
    DescribeHealthServiceStatusForOrganization()

This operation provides status information on enabling or disabling AWS Health to work with
your organization. To call this operation, you must sign in as an IAM user, assume an IAM
role, or sign in as the root user (not recommended) in the organization's management
account.

"""
describe_health_service_status_for_organization(; aws_config::AbstractAWSConfig=global_aws_config()) = health("DescribeHealthServiceStatusForOrganization"; aws_config=aws_config)
describe_health_service_status_for_organization(args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = health("DescribeHealthServiceStatusForOrganization", args; aws_config=aws_config)

"""
    DisableHealthServiceAccessForOrganization()

Disables AWS Health from working with AWS Organizations. To call this operation, you must
sign in as an AWS Identity and Access Management (IAM) user, assume an IAM role, or sign in
as the root user (not recommended) in the organization's management account. For more
information, see Aggregating AWS Health events in the AWS Health User Guide. This operation
doesn't remove the service-linked role from the management account in your organization.
You must use the IAM console, API, or AWS Command Line Interface (AWS CLI) to remove the
service-linked role. For more information, see Deleting a Service-Linked Role in the IAM
User Guide.  You can also disable the organizational feature by using the Organizations
DisableAWSServiceAccess API operation. After you call this operation, AWS Health stops
aggregating events for all other AWS accounts in your organization. If you call the AWS
Health API operations for organizational view, AWS Health returns an error. AWS Health
continues to aggregate health events for your AWS account.

"""
disable_health_service_access_for_organization(; aws_config::AbstractAWSConfig=global_aws_config()) = health("DisableHealthServiceAccessForOrganization"; aws_config=aws_config)
disable_health_service_access_for_organization(args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = health("DisableHealthServiceAccessForOrganization", args; aws_config=aws_config)

"""
    EnableHealthServiceAccessForOrganization()

Enables AWS Health to work with AWS Organizations. You can use the organizational view
feature to aggregate events from all AWS accounts in your organization in a centralized
location.  This operation also creates a service-linked role for the management account in
the organization.   To call this operation, you must meet the following requirements:   You
must have a Business or Enterprise support plan from AWS Support to use the AWS Health API.
If you call the AWS Health API from an AWS account that doesn't have a Business or
Enterprise support plan, you receive a SubscriptionRequiredException error.   You must have
permission to call this operation from the organization's management account. For example
IAM policies, see AWS Health identity-based policy examples.    If you don't have the
required support plan, you can instead use the AWS Health console to enable the
organizational view feature. For more information, see Aggregating AWS Health events in the
AWS Health User Guide.

"""
enable_health_service_access_for_organization(; aws_config::AbstractAWSConfig=global_aws_config()) = health("EnableHealthServiceAccessForOrganization"; aws_config=aws_config)
enable_health_service_access_for_organization(args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = health("EnableHealthServiceAccessForOrganization", args; aws_config=aws_config)
