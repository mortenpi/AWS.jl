# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: rum
using AWS.Compat
using AWS.UUIDs

"""
    batch_create_rum_metric_definitions(app_monitor_name, destination, metric_definitions)
    batch_create_rum_metric_definitions(app_monitor_name, destination, metric_definitions, params::Dict{String,<:Any})

Specifies the extended metrics that you want a CloudWatch RUM app monitor to send to a
destination. Valid destinations include CloudWatch and Evidently. By default, RUM app
monitors send some metrics to CloudWatch. These default metrics are listed in CloudWatch
metrics that you can collect with CloudWatch RUM. If you also send extended metrics, you
can send metrics to Evidently as well as CloudWatch, and you can also optionally send the
metrics with additional dimensions. The valid dimension names for the additional dimensions
are BrowserName, CountryCode, DeviceType, FileType, OSName, and PageId. For more
information, see  Extended metrics that you can send to CloudWatch and CloudWatch
Evidently. The maximum number of metric definitions that you can specify in one
BatchCreateRumMetricDefinitions operation is 200. The maximum number of metric definitions
that one destination can contain is 2000. Extended metrics sent are charged as CloudWatch
custom metrics. Each combination of additional dimension name and dimension value counts as
a custom metric. For more information, see Amazon CloudWatch Pricing. You must have already
created a destination for the metrics before you send them. For more information, see
PutRumMetricsDestination. If some metric definitions specified in a
BatchCreateRumMetricDefinitions operations are not valid, those metric definitions fail and
return errors, but all valid metric definitions in the same operation still succeed.

# Arguments
- `app_monitor_name`: The name of the CloudWatch RUM app monitor that is to send the
  metrics.
- `destination`: The destination to send the metrics to. Valid values are CloudWatch and
  Evidently. If you specify Evidently, you must also specify the ARN of the
  CloudWatchEvidently experiment that will receive the metrics and an IAM role that has
  permission to write to the experiment.
- `metric_definitions`: An array of structures which define the metrics that you want to
  send.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"DestinationArn"`: This parameter is required if Destination is Evidently. If
  Destination is CloudWatch, do not use this parameter. This parameter specifies the ARN of
  the Evidently experiment that is to receive the metrics. You must have already defined this
  experiment as a valid destination. For more information, see PutRumMetricsDestination.
"""
function batch_create_rum_metric_definitions(
    AppMonitorName,
    Destination,
    MetricDefinitions;
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return rum(
        "POST",
        "/rummetrics/$(AppMonitorName)/metrics",
        Dict{String,Any}(
            "Destination" => Destination, "MetricDefinitions" => MetricDefinitions
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function batch_create_rum_metric_definitions(
    AppMonitorName,
    Destination,
    MetricDefinitions,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return rum(
        "POST",
        "/rummetrics/$(AppMonitorName)/metrics",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}(
                    "Destination" => Destination, "MetricDefinitions" => MetricDefinitions
                ),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    batch_delete_rum_metric_definitions(app_monitor_name, destination, metric_definition_ids)
    batch_delete_rum_metric_definitions(app_monitor_name, destination, metric_definition_ids, params::Dict{String,<:Any})

Removes the specified metrics from being sent to an extended metrics destination. If some
metric definition IDs specified in a BatchDeleteRumMetricDefinitions operations are not
valid, those metric definitions fail and return errors, but all valid metric definition IDs
in the same operation are still deleted. The maximum number of metric definitions that you
can specify in one BatchDeleteRumMetricDefinitions operation is 200.

# Arguments
- `app_monitor_name`: The name of the CloudWatch RUM app monitor that is sending these
  metrics.
- `destination`: Defines the destination where you want to stop sending the specified
  metrics. Valid values are CloudWatch and Evidently. If you specify Evidently, you must also
  specify the ARN of the CloudWatchEvidently experiment that is to be the destination and an
  IAM role that has permission to write to the experiment.
- `metric_definition_ids`: An array of structures which define the metrics that you want to
  stop sending.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"destinationArn"`: This parameter is required if Destination is Evidently. If
  Destination is CloudWatch, do not use this parameter.  This parameter specifies the ARN of
  the Evidently experiment that was receiving the metrics that are being deleted.
"""
function batch_delete_rum_metric_definitions(
    AppMonitorName,
    destination,
    metricDefinitionIds;
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return rum(
        "DELETE",
        "/rummetrics/$(AppMonitorName)/metrics",
        Dict{String,Any}(
            "destination" => destination, "metricDefinitionIds" => metricDefinitionIds
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function batch_delete_rum_metric_definitions(
    AppMonitorName,
    destination,
    metricDefinitionIds,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return rum(
        "DELETE",
        "/rummetrics/$(AppMonitorName)/metrics",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}(
                    "destination" => destination,
                    "metricDefinitionIds" => metricDefinitionIds,
                ),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    batch_get_rum_metric_definitions(app_monitor_name, destination)
    batch_get_rum_metric_definitions(app_monitor_name, destination, params::Dict{String,<:Any})

Retrieves the list of metrics and dimensions that a RUM app monitor is sending to a single
destination.

# Arguments
- `app_monitor_name`: The name of the CloudWatch RUM app monitor that is sending the
  metrics.
- `destination`: The type of destination that you want to view metrics for. Valid values
  are CloudWatch and Evidently.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"destinationArn"`: This parameter is required if Destination is Evidently. If
  Destination is CloudWatch, do not use this parameter. This parameter specifies the ARN of
  the Evidently experiment that corresponds to the destination.
- `"maxResults"`: The maximum number of results to return in one operation. The default is
  50. The maximum that you can specify is 100. To retrieve the remaining results, make
  another call with the returned NextToken value.
- `"nextToken"`: Use the token returned by the previous operation to request the next page
  of results.
"""
function batch_get_rum_metric_definitions(
    AppMonitorName, destination; aws_config::AbstractAWSConfig=global_aws_config()
)
    return rum(
        "GET",
        "/rummetrics/$(AppMonitorName)/metrics",
        Dict{String,Any}("destination" => destination);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function batch_get_rum_metric_definitions(
    AppMonitorName,
    destination,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return rum(
        "GET",
        "/rummetrics/$(AppMonitorName)/metrics",
        Dict{String,Any}(
            mergewith(_merge, Dict{String,Any}("destination" => destination), params)
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    create_app_monitor(domain, name)
    create_app_monitor(domain, name, params::Dict{String,<:Any})

Creates a Amazon CloudWatch RUM app monitor, which collects telemetry data from your
application and sends that data to RUM. The data includes performance and reliability
information such as page load time, client-side errors, and user behavior. You use this
operation only to create a new app monitor. To update an existing app monitor, use
UpdateAppMonitor instead. After you create an app monitor, sign in to the CloudWatch RUM
console to get the JavaScript code snippet to add to your web application. For more
information, see How do I find a code snippet that I've already generated?

# Arguments
- `domain`: The top-level internet domain name for which your application has
  administrative authority.
- `name`: A name for the app monitor.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"AppMonitorConfiguration"`: A structure that contains much of the configuration data for
  the app monitor. If you are using Amazon Cognito for authorization, you must include this
  structure in your request, and it must include the ID of the Amazon Cognito identity pool
  to use for authorization. If you don't include AppMonitorConfiguration, you must set up
  your own authorization method. For more information, see Authorize your application to send
  data to Amazon Web Services. If you omit this argument, the sample rate used for RUM is set
  to 10% of the user sessions.
- `"CustomEvents"`: Specifies whether this app monitor allows the web client to define and
  send custom events. If you omit this parameter, custom events are DISABLED. For more
  information about custom events, see Send custom events.
- `"CwLogEnabled"`: Data collected by RUM is kept by RUM for 30 days and then deleted. This
  parameter specifies whether RUM sends a copy of this telemetry data to Amazon CloudWatch
  Logs in your account. This enables you to keep the telemetry data for more than 30 days,
  but it does incur Amazon CloudWatch Logs charges. If you omit this parameter, the default
  is false.
- `"Tags"`: Assigns one or more tags (key-value pairs) to the app monitor. Tags can help
  you organize and categorize your resources. You can also use them to scope user permissions
  by granting a user permission to access or change only resources with certain tag values.
  Tags don't have any semantic meaning to Amazon Web Services and are interpreted strictly as
  strings of characters. You can associate as many as 50 tags with an app monitor. For more
  information, see Tagging Amazon Web Services resources.
"""
function create_app_monitor(Domain, Name; aws_config::AbstractAWSConfig=global_aws_config())
    return rum(
        "POST",
        "/appmonitor",
        Dict{String,Any}("Domain" => Domain, "Name" => Name);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function create_app_monitor(
    Domain,
    Name,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return rum(
        "POST",
        "/appmonitor",
        Dict{String,Any}(
            mergewith(_merge, Dict{String,Any}("Domain" => Domain, "Name" => Name), params)
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    delete_app_monitor(name)
    delete_app_monitor(name, params::Dict{String,<:Any})

Deletes an existing app monitor. This immediately stops the collection of data.

# Arguments
- `name`: The name of the app monitor to delete.

"""
function delete_app_monitor(Name; aws_config::AbstractAWSConfig=global_aws_config())
    return rum(
        "DELETE",
        "/appmonitor/$(Name)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function delete_app_monitor(
    Name, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return rum(
        "DELETE",
        "/appmonitor/$(Name)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    delete_rum_metrics_destination(app_monitor_name, destination)
    delete_rum_metrics_destination(app_monitor_name, destination, params::Dict{String,<:Any})

Deletes a destination for CloudWatch RUM extended metrics, so that the specified app
monitor stops sending extended metrics to that destination.

# Arguments
- `app_monitor_name`: The name of the app monitor that is sending metrics to the
  destination that you want to delete.
- `destination`: The type of destination to delete. Valid values are CloudWatch and
  Evidently.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"destinationArn"`: This parameter is required if Destination is Evidently. If
  Destination is CloudWatch, do not use this parameter. This parameter specifies the ARN of
  the Evidently experiment that corresponds to the destination to delete.
"""
function delete_rum_metrics_destination(
    AppMonitorName, destination; aws_config::AbstractAWSConfig=global_aws_config()
)
    return rum(
        "DELETE",
        "/rummetrics/$(AppMonitorName)/metricsdestination",
        Dict{String,Any}("destination" => destination);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function delete_rum_metrics_destination(
    AppMonitorName,
    destination,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return rum(
        "DELETE",
        "/rummetrics/$(AppMonitorName)/metricsdestination",
        Dict{String,Any}(
            mergewith(_merge, Dict{String,Any}("destination" => destination), params)
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    get_app_monitor(name)
    get_app_monitor(name, params::Dict{String,<:Any})

Retrieves the complete configuration information for one app monitor.

# Arguments
- `name`: The app monitor to retrieve information for.

"""
function get_app_monitor(Name; aws_config::AbstractAWSConfig=global_aws_config())
    return rum(
        "GET", "/appmonitor/$(Name)"; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
    )
end
function get_app_monitor(
    Name, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return rum(
        "GET",
        "/appmonitor/$(Name)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    get_app_monitor_data(name, time_range)
    get_app_monitor_data(name, time_range, params::Dict{String,<:Any})

Retrieves the raw performance events that RUM has collected from your web application, so
that you can do your own processing or analysis of this data.

# Arguments
- `name`: The name of the app monitor that collected the data that you want to retrieve.
- `time_range`: A structure that defines the time range that you want to retrieve results
  from.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"Filters"`: An array of structures that you can use to filter the results to those that
  match one or more sets of key-value pairs that you specify.
- `"MaxResults"`: The maximum number of results to return in one operation.
- `"NextToken"`: Use the token returned by the previous operation to request the next page
  of results.
"""
function get_app_monitor_data(
    Name, TimeRange; aws_config::AbstractAWSConfig=global_aws_config()
)
    return rum(
        "POST",
        "/appmonitor/$(Name)/data",
        Dict{String,Any}("TimeRange" => TimeRange);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function get_app_monitor_data(
    Name,
    TimeRange,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return rum(
        "POST",
        "/appmonitor/$(Name)/data",
        Dict{String,Any}(
            mergewith(_merge, Dict{String,Any}("TimeRange" => TimeRange), params)
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    list_app_monitors()
    list_app_monitors(params::Dict{String,<:Any})

Returns a list of the Amazon CloudWatch RUM app monitors in the account.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"maxResults"`: The maximum number of results to return in one operation. The default is
  50. The maximum that you can specify is 100.
- `"nextToken"`: Use the token returned by the previous operation to request the next page
  of results.
"""
function list_app_monitors(; aws_config::AbstractAWSConfig=global_aws_config())
    return rum(
        "POST", "/appmonitors"; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
    )
end
function list_app_monitors(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return rum(
        "POST",
        "/appmonitors",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    list_rum_metrics_destinations(app_monitor_name)
    list_rum_metrics_destinations(app_monitor_name, params::Dict{String,<:Any})

Returns a list of destinations that you have created to receive RUM extended metrics, for
the specified app monitor. For more information about extended metrics, see AddRumMetrics.

# Arguments
- `app_monitor_name`: The name of the app monitor associated with the destinations that you
  want to retrieve.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"maxResults"`: The maximum number of results to return in one operation. The default is
  50. The maximum that you can specify is 100. To retrieve the remaining results, make
  another call with the returned NextToken value.
- `"nextToken"`: Use the token returned by the previous operation to request the next page
  of results.
"""
function list_rum_metrics_destinations(
    AppMonitorName; aws_config::AbstractAWSConfig=global_aws_config()
)
    return rum(
        "GET",
        "/rummetrics/$(AppMonitorName)/metricsdestination";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function list_rum_metrics_destinations(
    AppMonitorName,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return rum(
        "GET",
        "/rummetrics/$(AppMonitorName)/metricsdestination",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    list_tags_for_resource(resource_arn)
    list_tags_for_resource(resource_arn, params::Dict{String,<:Any})

Displays the tags associated with a CloudWatch RUM resource.

# Arguments
- `resource_arn`: The ARN of the resource that you want to see the tags of.

"""
function list_tags_for_resource(
    ResourceArn; aws_config::AbstractAWSConfig=global_aws_config()
)
    return rum(
        "GET",
        "/tags/$(ResourceArn)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function list_tags_for_resource(
    ResourceArn,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return rum(
        "GET",
        "/tags/$(ResourceArn)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    put_rum_events(app_monitor_details, batch_id, id, rum_events, user_details)
    put_rum_events(app_monitor_details, batch_id, id, rum_events, user_details, params::Dict{String,<:Any})

Sends telemetry events about your application performance and user behavior to CloudWatch
RUM. The code snippet that RUM generates for you to add to your application includes
PutRumEvents operations to send this data to RUM. Each PutRumEvents operation can send a
batch of events from one user session.

# Arguments
- `app_monitor_details`: A structure that contains information about the app monitor that
  collected this telemetry information.
- `batch_id`: A unique identifier for this batch of RUM event data.
- `id`: The ID of the app monitor that is sending this data.
- `rum_events`: An array of structures that contain the telemetry event data.
- `user_details`: A structure that contains information about the user session that this
  batch of events was collected from.

"""
function put_rum_events(
    AppMonitorDetails,
    BatchId,
    Id,
    RumEvents,
    UserDetails;
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return rum(
        "POST",
        "/appmonitors/$(Id)/",
        Dict{String,Any}(
            "AppMonitorDetails" => AppMonitorDetails,
            "BatchId" => BatchId,
            "RumEvents" => RumEvents,
            "UserDetails" => UserDetails,
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function put_rum_events(
    AppMonitorDetails,
    BatchId,
    Id,
    RumEvents,
    UserDetails,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return rum(
        "POST",
        "/appmonitors/$(Id)/",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}(
                    "AppMonitorDetails" => AppMonitorDetails,
                    "BatchId" => BatchId,
                    "RumEvents" => RumEvents,
                    "UserDetails" => UserDetails,
                ),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    put_rum_metrics_destination(app_monitor_name, destination)
    put_rum_metrics_destination(app_monitor_name, destination, params::Dict{String,<:Any})

Creates or updates a destination to receive extended metrics from CloudWatch RUM. You can
send extended metrics to CloudWatch or to a CloudWatch Evidently experiment. For more
information about extended metrics, see AddRumMetrics.

# Arguments
- `app_monitor_name`: The name of the CloudWatch RUM app monitor that will send the metrics.
- `destination`: Defines the destination to send the metrics to. Valid values are
  CloudWatch and Evidently. If you specify Evidently, you must also specify the ARN of the
  CloudWatchEvidently experiment that is to be the destination and an IAM role that has
  permission to write to the experiment.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"DestinationArn"`: Use this parameter only if Destination is Evidently. This parameter
  specifies the ARN of the Evidently experiment that will receive the extended metrics.
- `"IamRoleArn"`: This parameter is required if Destination is Evidently. If Destination is
  CloudWatch, do not use this parameter. This parameter specifies the ARN of an IAM role that
  RUM will assume to write to the Evidently experiment that you are sending metrics to. This
  role must have permission to write to that experiment.
"""
function put_rum_metrics_destination(
    AppMonitorName, Destination; aws_config::AbstractAWSConfig=global_aws_config()
)
    return rum(
        "POST",
        "/rummetrics/$(AppMonitorName)/metricsdestination",
        Dict{String,Any}("Destination" => Destination);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function put_rum_metrics_destination(
    AppMonitorName,
    Destination,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return rum(
        "POST",
        "/rummetrics/$(AppMonitorName)/metricsdestination",
        Dict{String,Any}(
            mergewith(_merge, Dict{String,Any}("Destination" => Destination), params)
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    tag_resource(resource_arn, tags)
    tag_resource(resource_arn, tags, params::Dict{String,<:Any})

Assigns one or more tags (key-value pairs) to the specified CloudWatch RUM resource.
Currently, the only resources that can be tagged app monitors. Tags can help you organize
and categorize your resources. You can also use them to scope user permissions by granting
a user permission to access or change only resources with certain tag values. Tags don't
have any semantic meaning to Amazon Web Services and are interpreted strictly as strings of
characters. You can use the TagResource action with a resource that already has tags. If
you specify a new tag key for the resource, this tag is appended to the list of tags
associated with the alarm. If you specify a tag key that is already associated with the
resource, the new tag value that you specify replaces the previous value for that tag. You
can associate as many as 50 tags with a resource. For more information, see Tagging Amazon
Web Services resources.

# Arguments
- `resource_arn`: The ARN of the CloudWatch RUM resource that you're adding tags to.
- `tags`: The list of key-value pairs to associate with the resource.

"""
function tag_resource(ResourceArn, Tags; aws_config::AbstractAWSConfig=global_aws_config())
    return rum(
        "POST",
        "/tags/$(ResourceArn)",
        Dict{String,Any}("Tags" => Tags);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function tag_resource(
    ResourceArn,
    Tags,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return rum(
        "POST",
        "/tags/$(ResourceArn)",
        Dict{String,Any}(mergewith(_merge, Dict{String,Any}("Tags" => Tags), params));
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    untag_resource(resource_arn, tag_keys)
    untag_resource(resource_arn, tag_keys, params::Dict{String,<:Any})

Removes one or more tags from the specified resource.

# Arguments
- `resource_arn`: The ARN of the CloudWatch RUM resource that you're removing tags from.
- `tag_keys`: The list of tag keys to remove from the resource.

"""
function untag_resource(
    ResourceArn, tagKeys; aws_config::AbstractAWSConfig=global_aws_config()
)
    return rum(
        "DELETE",
        "/tags/$(ResourceArn)",
        Dict{String,Any}("tagKeys" => tagKeys);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function untag_resource(
    ResourceArn,
    tagKeys,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return rum(
        "DELETE",
        "/tags/$(ResourceArn)",
        Dict{String,Any}(mergewith(_merge, Dict{String,Any}("tagKeys" => tagKeys), params));
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    update_app_monitor(name)
    update_app_monitor(name, params::Dict{String,<:Any})

Updates the configuration of an existing app monitor. When you use this operation, only the
parts of the app monitor configuration that you specify in this operation are changed. For
any parameters that you omit, the existing values are kept. You can't use this operation to
change the tags of an existing app monitor. To change the tags of an existing app monitor,
use TagResource. To create a new app monitor, use CreateAppMonitor. After you update an app
monitor, sign in to the CloudWatch RUM console to get the updated JavaScript code snippet
to add to your web application. For more information, see How do I find a code snippet that
I've already generated?

# Arguments
- `name`: The name of the app monitor to update.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"AppMonitorConfiguration"`: A structure that contains much of the configuration data for
  the app monitor. If you are using Amazon Cognito for authorization, you must include this
  structure in your request, and it must include the ID of the Amazon Cognito identity pool
  to use for authorization. If you don't include AppMonitorConfiguration, you must set up
  your own authorization method. For more information, see Authorize your application to send
  data to Amazon Web Services.
- `"CustomEvents"`: Specifies whether this app monitor allows the web client to define and
  send custom events. The default is for custom events to be DISABLED. For more information
  about custom events, see Send custom events.
- `"CwLogEnabled"`: Data collected by RUM is kept by RUM for 30 days and then deleted. This
  parameter specifies whether RUM sends a copy of this telemetry data to Amazon CloudWatch
  Logs in your account. This enables you to keep the telemetry data for more than 30 days,
  but it does incur Amazon CloudWatch Logs charges.
- `"Domain"`: The top-level internet domain name for which your application has
  administrative authority.
"""
function update_app_monitor(Name; aws_config::AbstractAWSConfig=global_aws_config())
    return rum(
        "PATCH",
        "/appmonitor/$(Name)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function update_app_monitor(
    Name, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return rum(
        "PATCH",
        "/appmonitor/$(Name)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    update_rum_metric_definition(app_monitor_name, destination, metric_definition, metric_definition_id)
    update_rum_metric_definition(app_monitor_name, destination, metric_definition, metric_definition_id, params::Dict{String,<:Any})

Modifies one existing metric definition for CloudWatch RUM extended metrics. For more
information about extended metrics, see BatchCreateRumMetricsDefinitions.

# Arguments
- `app_monitor_name`: The name of the CloudWatch RUM app monitor that sends these metrics.
- `destination`: The destination to send the metrics to. Valid values are CloudWatch and
  Evidently. If you specify Evidently, you must also specify the ARN of the
  CloudWatchEvidently experiment that will receive the metrics and an IAM role that has
  permission to write to the experiment.
- `metric_definition`: A structure that contains the new definition that you want to use
  for this metric.
- `metric_definition_id`: The ID of the metric definition to update.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"DestinationArn"`: This parameter is required if Destination is Evidently. If
  Destination is CloudWatch, do not use this parameter. This parameter specifies the ARN of
  the Evidently experiment that is to receive the metrics. You must have already defined this
  experiment as a valid destination. For more information, see PutRumMetricsDestination.
"""
function update_rum_metric_definition(
    AppMonitorName,
    Destination,
    MetricDefinition,
    MetricDefinitionId;
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return rum(
        "PATCH",
        "/rummetrics/$(AppMonitorName)/metrics",
        Dict{String,Any}(
            "Destination" => Destination,
            "MetricDefinition" => MetricDefinition,
            "MetricDefinitionId" => MetricDefinitionId,
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function update_rum_metric_definition(
    AppMonitorName,
    Destination,
    MetricDefinition,
    MetricDefinitionId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return rum(
        "PATCH",
        "/rummetrics/$(AppMonitorName)/metrics",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}(
                    "Destination" => Destination,
                    "MetricDefinition" => MetricDefinition,
                    "MetricDefinitionId" => MetricDefinitionId,
                ),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
