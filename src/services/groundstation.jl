# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: groundstation
using AWS.Compat
using AWS.UUIDs

"""
    cancel_contact(contact_id)
    cancel_contact(contact_id, params::Dict{String,<:Any})

Cancels a contact with a specified contact ID.

# Arguments
- `contact_id`: UUID of a contact.

"""
function cancel_contact(contactId; aws_config::AbstractAWSConfig=global_aws_config())
    return groundstation(
        "DELETE",
        "/contact/$(contactId)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function cancel_contact(
    contactId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return groundstation(
        "DELETE",
        "/contact/$(contactId)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    create_config(config_data, name)
    create_config(config_data, name, params::Dict{String,<:Any})

Creates a Config with the specified configData parameters. Only one type of configData can
be specified.

# Arguments
- `config_data`: Parameters of a Config.
- `name`: Name of a Config.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"tags"`: Tags assigned to a Config.
"""
function create_config(configData, name; aws_config::AbstractAWSConfig=global_aws_config())
    return groundstation(
        "POST",
        "/config",
        Dict{String,Any}("configData" => configData, "name" => name);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function create_config(
    configData,
    name,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return groundstation(
        "POST",
        "/config",
        Dict{String,Any}(
            mergewith(
                _merge, Dict{String,Any}("configData" => configData, "name" => name), params
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    create_dataflow_endpoint_group(endpoint_details)
    create_dataflow_endpoint_group(endpoint_details, params::Dict{String,<:Any})

Creates a DataflowEndpoint group containing the specified list of DataflowEndpoint objects.
The name field in each endpoint is used in your mission profile DataflowEndpointConfig to
specify which endpoints to use during a contact. When a contact uses multiple
DataflowEndpointConfig objects, each Config must match a DataflowEndpoint in the same group.

# Arguments
- `endpoint_details`: Endpoint details of each endpoint in the dataflow endpoint group.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"tags"`: Tags of a dataflow endpoint group.
"""
function create_dataflow_endpoint_group(
    endpointDetails; aws_config::AbstractAWSConfig=global_aws_config()
)
    return groundstation(
        "POST",
        "/dataflowEndpointGroup",
        Dict{String,Any}("endpointDetails" => endpointDetails);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function create_dataflow_endpoint_group(
    endpointDetails,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return groundstation(
        "POST",
        "/dataflowEndpointGroup",
        Dict{String,Any}(
            mergewith(
                _merge, Dict{String,Any}("endpointDetails" => endpointDetails), params
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    create_ephemeris(name, satellite_id)
    create_ephemeris(name, satellite_id, params::Dict{String,<:Any})

Creates an Ephemeris with the specified EphemerisData.

# Arguments
- `name`: A name string associated with the ephemeris. Used as a human-readable identifier
  for the ephemeris.
- `satellite_id`: AWS Ground Station satellite ID for this ephemeris.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"enabled"`: Whether to set the ephemeris status to ENABLED after validation. Setting
  this to false will set the ephemeris status to DISABLED after validation.
- `"ephemeris"`: Ephemeris data.
- `"expirationTime"`: An overall expiration time for the ephemeris in UTC, after which it
  will become EXPIRED.
- `"kmsKeyArn"`: The ARN of a KMS key used to encrypt the ephemeris in Ground Station.
- `"priority"`: Customer-provided priority score to establish the order in which
  overlapping ephemerides should be used. The default for customer-provided ephemeris
  priority is 1, and higher numbers take precedence. Priority must be 1 or greater
- `"tags"`: Tags assigned to an ephemeris.
"""
function create_ephemeris(
    name, satelliteId; aws_config::AbstractAWSConfig=global_aws_config()
)
    return groundstation(
        "POST",
        "/ephemeris",
        Dict{String,Any}("name" => name, "satelliteId" => satelliteId);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function create_ephemeris(
    name,
    satelliteId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return groundstation(
        "POST",
        "/ephemeris",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}("name" => name, "satelliteId" => satelliteId),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    create_mission_profile(dataflow_edges, minimum_viable_contact_duration_seconds, name, tracking_config_arn)
    create_mission_profile(dataflow_edges, minimum_viable_contact_duration_seconds, name, tracking_config_arn, params::Dict{String,<:Any})

Creates a mission profile.  dataflowEdges is a list of lists of strings. Each lower level
list of strings has two elements: a from ARN and a to ARN.

# Arguments
- `dataflow_edges`: A list of lists of ARNs. Each list of ARNs is an edge, with a from
  Config and a to Config.
- `minimum_viable_contact_duration_seconds`: Smallest amount of time in seconds that
  you’d like to see for an available contact. AWS Ground Station will not present you with
  contacts shorter than this duration.
- `name`: Name of a mission profile.
- `tracking_config_arn`: ARN of a tracking Config.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"contactPostPassDurationSeconds"`: Amount of time after a contact ends that you’d like
  to receive a CloudWatch event indicating the pass has finished.
- `"contactPrePassDurationSeconds"`: Amount of time prior to contact start you’d like to
  receive a CloudWatch event indicating an upcoming pass.
- `"tags"`: Tags assigned to a mission profile.
"""
function create_mission_profile(
    dataflowEdges,
    minimumViableContactDurationSeconds,
    name,
    trackingConfigArn;
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return groundstation(
        "POST",
        "/missionprofile",
        Dict{String,Any}(
            "dataflowEdges" => dataflowEdges,
            "minimumViableContactDurationSeconds" => minimumViableContactDurationSeconds,
            "name" => name,
            "trackingConfigArn" => trackingConfigArn,
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function create_mission_profile(
    dataflowEdges,
    minimumViableContactDurationSeconds,
    name,
    trackingConfigArn,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return groundstation(
        "POST",
        "/missionprofile",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}(
                    "dataflowEdges" => dataflowEdges,
                    "minimumViableContactDurationSeconds" =>
                        minimumViableContactDurationSeconds,
                    "name" => name,
                    "trackingConfigArn" => trackingConfigArn,
                ),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    delete_config(config_id, config_type)
    delete_config(config_id, config_type, params::Dict{String,<:Any})

Deletes a Config.

# Arguments
- `config_id`: UUID of a Config.
- `config_type`: Type of a Config.

"""
function delete_config(
    configId, configType; aws_config::AbstractAWSConfig=global_aws_config()
)
    return groundstation(
        "DELETE",
        "/config/$(configType)/$(configId)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function delete_config(
    configId,
    configType,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return groundstation(
        "DELETE",
        "/config/$(configType)/$(configId)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    delete_dataflow_endpoint_group(dataflow_endpoint_group_id)
    delete_dataflow_endpoint_group(dataflow_endpoint_group_id, params::Dict{String,<:Any})

Deletes a dataflow endpoint group.

# Arguments
- `dataflow_endpoint_group_id`: UUID of a dataflow endpoint group.

"""
function delete_dataflow_endpoint_group(
    dataflowEndpointGroupId; aws_config::AbstractAWSConfig=global_aws_config()
)
    return groundstation(
        "DELETE",
        "/dataflowEndpointGroup/$(dataflowEndpointGroupId)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function delete_dataflow_endpoint_group(
    dataflowEndpointGroupId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return groundstation(
        "DELETE",
        "/dataflowEndpointGroup/$(dataflowEndpointGroupId)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    delete_ephemeris(ephemeris_id)
    delete_ephemeris(ephemeris_id, params::Dict{String,<:Any})

Deletes an ephemeris

# Arguments
- `ephemeris_id`: The AWS Ground Station ephemeris ID.

"""
function delete_ephemeris(ephemerisId; aws_config::AbstractAWSConfig=global_aws_config())
    return groundstation(
        "DELETE",
        "/ephemeris/$(ephemerisId)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function delete_ephemeris(
    ephemerisId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return groundstation(
        "DELETE",
        "/ephemeris/$(ephemerisId)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    delete_mission_profile(mission_profile_id)
    delete_mission_profile(mission_profile_id, params::Dict{String,<:Any})

Deletes a mission profile.

# Arguments
- `mission_profile_id`: UUID of a mission profile.

"""
function delete_mission_profile(
    missionProfileId; aws_config::AbstractAWSConfig=global_aws_config()
)
    return groundstation(
        "DELETE",
        "/missionprofile/$(missionProfileId)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function delete_mission_profile(
    missionProfileId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return groundstation(
        "DELETE",
        "/missionprofile/$(missionProfileId)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    describe_contact(contact_id)
    describe_contact(contact_id, params::Dict{String,<:Any})

Describes an existing contact.

# Arguments
- `contact_id`: UUID of a contact.

"""
function describe_contact(contactId; aws_config::AbstractAWSConfig=global_aws_config())
    return groundstation(
        "GET",
        "/contact/$(contactId)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function describe_contact(
    contactId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return groundstation(
        "GET",
        "/contact/$(contactId)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    describe_ephemeris(ephemeris_id)
    describe_ephemeris(ephemeris_id, params::Dict{String,<:Any})

Describes an existing ephemeris.

# Arguments
- `ephemeris_id`: The AWS Ground Station ephemeris ID.

"""
function describe_ephemeris(ephemerisId; aws_config::AbstractAWSConfig=global_aws_config())
    return groundstation(
        "GET",
        "/ephemeris/$(ephemerisId)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function describe_ephemeris(
    ephemerisId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return groundstation(
        "GET",
        "/ephemeris/$(ephemerisId)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    get_config(config_id, config_type)
    get_config(config_id, config_type, params::Dict{String,<:Any})

Returns Config information. Only one Config response can be returned.

# Arguments
- `config_id`: UUID of a Config.
- `config_type`: Type of a Config.

"""
function get_config(configId, configType; aws_config::AbstractAWSConfig=global_aws_config())
    return groundstation(
        "GET",
        "/config/$(configType)/$(configId)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function get_config(
    configId,
    configType,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return groundstation(
        "GET",
        "/config/$(configType)/$(configId)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    get_dataflow_endpoint_group(dataflow_endpoint_group_id)
    get_dataflow_endpoint_group(dataflow_endpoint_group_id, params::Dict{String,<:Any})

Returns the dataflow endpoint group.

# Arguments
- `dataflow_endpoint_group_id`: UUID of a dataflow endpoint group.

"""
function get_dataflow_endpoint_group(
    dataflowEndpointGroupId; aws_config::AbstractAWSConfig=global_aws_config()
)
    return groundstation(
        "GET",
        "/dataflowEndpointGroup/$(dataflowEndpointGroupId)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function get_dataflow_endpoint_group(
    dataflowEndpointGroupId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return groundstation(
        "GET",
        "/dataflowEndpointGroup/$(dataflowEndpointGroupId)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    get_minute_usage(month, year)
    get_minute_usage(month, year, params::Dict{String,<:Any})

Returns the number of minutes used by account.

# Arguments
- `month`: The month being requested, with a value of 1-12.
- `year`: The year being requested, in the format of YYYY.

"""
function get_minute_usage(month, year; aws_config::AbstractAWSConfig=global_aws_config())
    return groundstation(
        "POST",
        "/minute-usage",
        Dict{String,Any}("month" => month, "year" => year);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function get_minute_usage(
    month,
    year,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return groundstation(
        "POST",
        "/minute-usage",
        Dict{String,Any}(
            mergewith(_merge, Dict{String,Any}("month" => month, "year" => year), params)
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    get_mission_profile(mission_profile_id)
    get_mission_profile(mission_profile_id, params::Dict{String,<:Any})

Returns a mission profile.

# Arguments
- `mission_profile_id`: UUID of a mission profile.

"""
function get_mission_profile(
    missionProfileId; aws_config::AbstractAWSConfig=global_aws_config()
)
    return groundstation(
        "GET",
        "/missionprofile/$(missionProfileId)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function get_mission_profile(
    missionProfileId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return groundstation(
        "GET",
        "/missionprofile/$(missionProfileId)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    get_satellite(satellite_id)
    get_satellite(satellite_id, params::Dict{String,<:Any})

Returns a satellite.

# Arguments
- `satellite_id`: UUID of a satellite.

"""
function get_satellite(satelliteId; aws_config::AbstractAWSConfig=global_aws_config())
    return groundstation(
        "GET",
        "/satellite/$(satelliteId)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function get_satellite(
    satelliteId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return groundstation(
        "GET",
        "/satellite/$(satelliteId)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    list_configs()
    list_configs(params::Dict{String,<:Any})

Returns a list of Config objects.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"maxResults"`: Maximum number of Configs returned.
- `"nextToken"`: Next token returned in the request of a previous ListConfigs call. Used to
  get the next page of results.
"""
function list_configs(; aws_config::AbstractAWSConfig=global_aws_config())
    return groundstation(
        "GET", "/config"; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
    )
end
function list_configs(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return groundstation(
        "GET", "/config", params; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
    )
end

"""
    list_contacts(end_time, start_time, status_list)
    list_contacts(end_time, start_time, status_list, params::Dict{String,<:Any})

Returns a list of contacts. If statusList contains AVAILABLE, the request must include
groundStation, missionprofileArn, and satelliteArn.

# Arguments
- `end_time`: End time of a contact in UTC.
- `start_time`: Start time of a contact in UTC.
- `status_list`: Status of a contact reservation.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"groundStation"`: Name of a ground station.
- `"maxResults"`: Maximum number of contacts returned.
- `"missionProfileArn"`: ARN of a mission profile.
- `"nextToken"`: Next token returned in the request of a previous ListContacts call. Used
  to get the next page of results.
- `"satelliteArn"`: ARN of a satellite.
"""
function list_contacts(
    endTime, startTime, statusList; aws_config::AbstractAWSConfig=global_aws_config()
)
    return groundstation(
        "POST",
        "/contacts",
        Dict{String,Any}(
            "endTime" => endTime, "startTime" => startTime, "statusList" => statusList
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function list_contacts(
    endTime,
    startTime,
    statusList,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return groundstation(
        "POST",
        "/contacts",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}(
                    "endTime" => endTime,
                    "startTime" => startTime,
                    "statusList" => statusList,
                ),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    list_dataflow_endpoint_groups()
    list_dataflow_endpoint_groups(params::Dict{String,<:Any})

Returns a list of DataflowEndpoint groups.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"maxResults"`: Maximum number of dataflow endpoint groups returned.
- `"nextToken"`: Next token returned in the request of a previous
  ListDataflowEndpointGroups call. Used to get the next page of results.
"""
function list_dataflow_endpoint_groups(; aws_config::AbstractAWSConfig=global_aws_config())
    return groundstation(
        "GET",
        "/dataflowEndpointGroup";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function list_dataflow_endpoint_groups(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return groundstation(
        "GET",
        "/dataflowEndpointGroup",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    list_ephemerides(end_time, satellite_id, start_time)
    list_ephemerides(end_time, satellite_id, start_time, params::Dict{String,<:Any})

List existing ephemerides.

# Arguments
- `end_time`: The end time to list in UTC. The operation will return an ephemeris if its
  expiration time is within the time range defined by the startTime and endTime.
- `satellite_id`: The AWS Ground Station satellite ID to list ephemeris for.
- `start_time`: The start time to list in UTC. The operation will return an ephemeris if
  its expiration time is within the time range defined by the startTime and endTime.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"maxResults"`: Maximum number of ephemerides to return.
- `"nextToken"`: Pagination token.
- `"statusList"`: The list of ephemeris status to return.
"""
function list_ephemerides(
    endTime, satelliteId, startTime; aws_config::AbstractAWSConfig=global_aws_config()
)
    return groundstation(
        "POST",
        "/ephemerides",
        Dict{String,Any}(
            "endTime" => endTime, "satelliteId" => satelliteId, "startTime" => startTime
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function list_ephemerides(
    endTime,
    satelliteId,
    startTime,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return groundstation(
        "POST",
        "/ephemerides",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}(
                    "endTime" => endTime,
                    "satelliteId" => satelliteId,
                    "startTime" => startTime,
                ),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    list_ground_stations()
    list_ground_stations(params::Dict{String,<:Any})

Returns a list of ground stations.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"maxResults"`: Maximum number of ground stations returned.
- `"nextToken"`: Next token that can be supplied in the next call to get the next page of
  ground stations.
- `"satelliteId"`: Satellite ID to retrieve on-boarded ground stations.
"""
function list_ground_stations(; aws_config::AbstractAWSConfig=global_aws_config())
    return groundstation(
        "GET", "/groundstation"; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
    )
end
function list_ground_stations(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return groundstation(
        "GET",
        "/groundstation",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    list_mission_profiles()
    list_mission_profiles(params::Dict{String,<:Any})

Returns a list of mission profiles.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"maxResults"`: Maximum number of mission profiles returned.
- `"nextToken"`: Next token returned in the request of a previous ListMissionProfiles call.
  Used to get the next page of results.
"""
function list_mission_profiles(; aws_config::AbstractAWSConfig=global_aws_config())
    return groundstation(
        "GET", "/missionprofile"; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
    )
end
function list_mission_profiles(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return groundstation(
        "GET",
        "/missionprofile",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    list_satellites()
    list_satellites(params::Dict{String,<:Any})

Returns a list of satellites.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"maxResults"`: Maximum number of satellites returned.
- `"nextToken"`: Next token that can be supplied in the next call to get the next page of
  satellites.
"""
function list_satellites(; aws_config::AbstractAWSConfig=global_aws_config())
    return groundstation(
        "GET", "/satellite"; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
    )
end
function list_satellites(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return groundstation(
        "GET", "/satellite", params; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
    )
end

"""
    list_tags_for_resource(resource_arn)
    list_tags_for_resource(resource_arn, params::Dict{String,<:Any})

Returns a list of tags for a specified resource.

# Arguments
- `resource_arn`: ARN of a resource.

"""
function list_tags_for_resource(
    resourceArn; aws_config::AbstractAWSConfig=global_aws_config()
)
    return groundstation(
        "GET",
        "/tags/$(resourceArn)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function list_tags_for_resource(
    resourceArn,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return groundstation(
        "GET",
        "/tags/$(resourceArn)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    reserve_contact(end_time, ground_station, mission_profile_arn, satellite_arn, start_time)
    reserve_contact(end_time, ground_station, mission_profile_arn, satellite_arn, start_time, params::Dict{String,<:Any})

Reserves a contact using specified parameters.

# Arguments
- `end_time`: End time of a contact in UTC.
- `ground_station`: Name of a ground station.
- `mission_profile_arn`: ARN of a mission profile.
- `satellite_arn`: ARN of a satellite
- `start_time`: Start time of a contact in UTC.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"tags"`: Tags assigned to a contact.
"""
function reserve_contact(
    endTime,
    groundStation,
    missionProfileArn,
    satelliteArn,
    startTime;
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return groundstation(
        "POST",
        "/contact",
        Dict{String,Any}(
            "endTime" => endTime,
            "groundStation" => groundStation,
            "missionProfileArn" => missionProfileArn,
            "satelliteArn" => satelliteArn,
            "startTime" => startTime,
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function reserve_contact(
    endTime,
    groundStation,
    missionProfileArn,
    satelliteArn,
    startTime,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return groundstation(
        "POST",
        "/contact",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}(
                    "endTime" => endTime,
                    "groundStation" => groundStation,
                    "missionProfileArn" => missionProfileArn,
                    "satelliteArn" => satelliteArn,
                    "startTime" => startTime,
                ),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    tag_resource(resource_arn, tags)
    tag_resource(resource_arn, tags, params::Dict{String,<:Any})

Assigns a tag to a resource.

# Arguments
- `resource_arn`: ARN of a resource tag.
- `tags`: Tags assigned to a resource.

"""
function tag_resource(resourceArn, tags; aws_config::AbstractAWSConfig=global_aws_config())
    return groundstation(
        "POST",
        "/tags/$(resourceArn)",
        Dict{String,Any}("tags" => tags);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function tag_resource(
    resourceArn,
    tags,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return groundstation(
        "POST",
        "/tags/$(resourceArn)",
        Dict{String,Any}(mergewith(_merge, Dict{String,Any}("tags" => tags), params));
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    untag_resource(resource_arn, tag_keys)
    untag_resource(resource_arn, tag_keys, params::Dict{String,<:Any})

Deassigns a resource tag.

# Arguments
- `resource_arn`: ARN of a resource.
- `tag_keys`: Keys of a resource tag.

"""
function untag_resource(
    resourceArn, tagKeys; aws_config::AbstractAWSConfig=global_aws_config()
)
    return groundstation(
        "DELETE",
        "/tags/$(resourceArn)",
        Dict{String,Any}("tagKeys" => tagKeys);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function untag_resource(
    resourceArn,
    tagKeys,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return groundstation(
        "DELETE",
        "/tags/$(resourceArn)",
        Dict{String,Any}(mergewith(_merge, Dict{String,Any}("tagKeys" => tagKeys), params));
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    update_config(config_data, config_id, config_type, name)
    update_config(config_data, config_id, config_type, name, params::Dict{String,<:Any})

Updates the Config used when scheduling contacts. Updating a Config will not update the
execution parameters for existing future contacts scheduled with this Config.

# Arguments
- `config_data`: Parameters of a Config.
- `config_id`: UUID of a Config.
- `config_type`: Type of a Config.
- `name`: Name of a Config.

"""
function update_config(
    configData,
    configId,
    configType,
    name;
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return groundstation(
        "PUT",
        "/config/$(configType)/$(configId)",
        Dict{String,Any}("configData" => configData, "name" => name);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function update_config(
    configData,
    configId,
    configType,
    name,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return groundstation(
        "PUT",
        "/config/$(configType)/$(configId)",
        Dict{String,Any}(
            mergewith(
                _merge, Dict{String,Any}("configData" => configData, "name" => name), params
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    update_ephemeris(enabled, ephemeris_id)
    update_ephemeris(enabled, ephemeris_id, params::Dict{String,<:Any})

Updates an existing ephemeris

# Arguments
- `enabled`: Whether the ephemeris is enabled or not. Changing this value will not require
  the ephemeris to be re-validated.
- `ephemeris_id`: The AWS Ground Station ephemeris ID.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"name"`: A name string associated with the ephemeris. Used as a human-readable
  identifier for the ephemeris.
- `"priority"`: Customer-provided priority score to establish the order in which
  overlapping ephemerides should be used. The default for customer-provided ephemeris
  priority is 1, and higher numbers take precedence. Priority must be 1 or greater
"""
function update_ephemeris(
    enabled, ephemerisId; aws_config::AbstractAWSConfig=global_aws_config()
)
    return groundstation(
        "PUT",
        "/ephemeris/$(ephemerisId)",
        Dict{String,Any}("enabled" => enabled);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function update_ephemeris(
    enabled,
    ephemerisId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return groundstation(
        "PUT",
        "/ephemeris/$(ephemerisId)",
        Dict{String,Any}(mergewith(_merge, Dict{String,Any}("enabled" => enabled), params));
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    update_mission_profile(mission_profile_id)
    update_mission_profile(mission_profile_id, params::Dict{String,<:Any})

Updates a mission profile. Updating a mission profile will not update the execution
parameters for existing future contacts.

# Arguments
- `mission_profile_id`: UUID of a mission profile.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"contactPostPassDurationSeconds"`: Amount of time after a contact ends that you’d like
  to receive a CloudWatch event indicating the pass has finished.
- `"contactPrePassDurationSeconds"`: Amount of time after a contact ends that you’d like
  to receive a CloudWatch event indicating the pass has finished.
- `"dataflowEdges"`: A list of lists of ARNs. Each list of ARNs is an edge, with a from
  Config and a to Config.
- `"minimumViableContactDurationSeconds"`: Smallest amount of time in seconds that you’d
  like to see for an available contact. AWS Ground Station will not present you with contacts
  shorter than this duration.
- `"name"`: Name of a mission profile.
- `"trackingConfigArn"`: ARN of a tracking Config.
"""
function update_mission_profile(
    missionProfileId; aws_config::AbstractAWSConfig=global_aws_config()
)
    return groundstation(
        "PUT",
        "/missionprofile/$(missionProfileId)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function update_mission_profile(
    missionProfileId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return groundstation(
        "PUT",
        "/missionprofile/$(missionProfileId)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
