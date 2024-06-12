# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: rds_data
using AWS.Compat
using AWS.UUIDs

"""
    batch_execute_statement(resource_arn, secret_arn, sql)
    batch_execute_statement(resource_arn, secret_arn, sql, params::Dict{String,<:Any})

Runs a batch SQL statement over an array of data. You can run bulk update and insert
operations for multiple records using a DML statement with different parameter sets. Bulk
operations can provide a significant performance improvement over individual insert and
update operations.  If a call isn't part of a transaction because it doesn't include the
transactionID parameter, changes that result from the call are committed automatically.
There isn't a fixed upper limit on the number of parameter sets. However, the maximum size
of the HTTP request submitted through the Data API is 4 MiB. If the request exceeds this
limit, the Data API returns an error and doesn't process the request. This 4-MiB limit
includes the size of the HTTP headers and the JSON notation in the request. Thus, the
number of parameter sets that you can include depends on a combination of factors, such as
the size of the SQL statement and the size of each parameter set. The response size limit
is 1 MiB. If the call returns more than 1 MiB of response data, the call is terminated.

# Arguments
- `resource_arn`: The Amazon Resource Name (ARN) of the Aurora Serverless DB cluster.
- `secret_arn`: The ARN of the secret that enables access to the DB cluster. Enter the
  database user name and password for the credentials in the secret. For information about
  creating the secret, see Create a database secret.
- `sql`: The SQL statement to run. Don't include a semicolon (;) at the end of the SQL
  statement.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"database"`: The name of the database.
- `"parameterSets"`: The parameter set for the batch operation. The SQL statement is
  executed as many times as the number of parameter sets provided. To execute a SQL statement
  with no parameters, use one of the following options:   Specify one or more empty parameter
  sets.   Use the ExecuteStatement operation instead of the BatchExecuteStatement operation.
    Array parameters are not supported.
- `"schema"`: The name of the database schema.  Currently, the schema parameter isn't
  supported.
- `"transactionId"`: The identifier of a transaction that was started by using the
  BeginTransaction operation. Specify the transaction ID of the transaction that you want to
  include the SQL statement in. If the SQL statement is not part of a transaction, don't set
  this parameter.
"""
function batch_execute_statement(
    resourceArn, secretArn, sql; aws_config::AbstractAWSConfig=global_aws_config()
)
    return rds_data(
        "POST",
        "/BatchExecute",
        Dict{String,Any}(
            "resourceArn" => resourceArn, "secretArn" => secretArn, "sql" => sql
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function batch_execute_statement(
    resourceArn,
    secretArn,
    sql,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return rds_data(
        "POST",
        "/BatchExecute",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}(
                    "resourceArn" => resourceArn, "secretArn" => secretArn, "sql" => sql
                ),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    begin_transaction(resource_arn, secret_arn)
    begin_transaction(resource_arn, secret_arn, params::Dict{String,<:Any})

Starts a SQL transaction.  A transaction can run for a maximum of 24 hours. A transaction
is terminated and rolled back automatically after 24 hours. A transaction times out if no
calls use its transaction ID in three minutes. If a transaction times out before it's
committed, it's rolled back automatically. DDL statements inside a transaction cause an
implicit commit. We recommend that you run each DDL statement in a separate
ExecuteStatement call with continueAfterTimeout enabled.

# Arguments
- `resource_arn`: The Amazon Resource Name (ARN) of the Aurora Serverless DB cluster.
- `secret_arn`: The name or ARN of the secret that enables access to the DB cluster.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"database"`: The name of the database.
- `"schema"`: The name of the database schema.
"""
function begin_transaction(
    resourceArn, secretArn; aws_config::AbstractAWSConfig=global_aws_config()
)
    return rds_data(
        "POST",
        "/BeginTransaction",
        Dict{String,Any}("resourceArn" => resourceArn, "secretArn" => secretArn);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function begin_transaction(
    resourceArn,
    secretArn,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return rds_data(
        "POST",
        "/BeginTransaction",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}("resourceArn" => resourceArn, "secretArn" => secretArn),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    commit_transaction(resource_arn, secret_arn, transaction_id)
    commit_transaction(resource_arn, secret_arn, transaction_id, params::Dict{String,<:Any})

Ends a SQL transaction started with the BeginTransaction operation and commits the changes.

# Arguments
- `resource_arn`: The Amazon Resource Name (ARN) of the Aurora Serverless DB cluster.
- `secret_arn`: The name or ARN of the secret that enables access to the DB cluster.
- `transaction_id`: The identifier of the transaction to end and commit.

"""
function commit_transaction(
    resourceArn, secretArn, transactionId; aws_config::AbstractAWSConfig=global_aws_config()
)
    return rds_data(
        "POST",
        "/CommitTransaction",
        Dict{String,Any}(
            "resourceArn" => resourceArn,
            "secretArn" => secretArn,
            "transactionId" => transactionId,
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function commit_transaction(
    resourceArn,
    secretArn,
    transactionId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return rds_data(
        "POST",
        "/CommitTransaction",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}(
                    "resourceArn" => resourceArn,
                    "secretArn" => secretArn,
                    "transactionId" => transactionId,
                ),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    execute_sql(aws_secret_store_arn, db_cluster_or_instance_arn, sql_statements)
    execute_sql(aws_secret_store_arn, db_cluster_or_instance_arn, sql_statements, params::Dict{String,<:Any})

Runs one or more SQL statements.  This operation isn't supported for Aurora PostgreSQL
Serverless v2 and provisioned DB clusters, and for Aurora Serverless v1 DB clusters, the
operation is deprecated. Use the BatchExecuteStatement or ExecuteStatement operation.

# Arguments
- `aws_secret_store_arn`: The Amazon Resource Name (ARN) of the secret that enables access
  to the DB cluster. Enter the database user name and password for the credentials in the
  secret. For information about creating the secret, see Create a database secret.
- `db_cluster_or_instance_arn`: The ARN of the Aurora Serverless DB cluster.
- `sql_statements`: One or more SQL statements to run on the DB cluster. You can separate
  SQL statements from each other with a semicolon (;). Any valid SQL statement is permitted,
  including data definition, data manipulation, and commit statements.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"database"`: The name of the database.
- `"schema"`: The name of the database schema.
"""
function execute_sql(
    awsSecretStoreArn,
    dbClusterOrInstanceArn,
    sqlStatements;
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return rds_data(
        "POST",
        "/ExecuteSql",
        Dict{String,Any}(
            "awsSecretStoreArn" => awsSecretStoreArn,
            "dbClusterOrInstanceArn" => dbClusterOrInstanceArn,
            "sqlStatements" => sqlStatements,
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function execute_sql(
    awsSecretStoreArn,
    dbClusterOrInstanceArn,
    sqlStatements,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return rds_data(
        "POST",
        "/ExecuteSql",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}(
                    "awsSecretStoreArn" => awsSecretStoreArn,
                    "dbClusterOrInstanceArn" => dbClusterOrInstanceArn,
                    "sqlStatements" => sqlStatements,
                ),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    execute_statement(resource_arn, secret_arn, sql)
    execute_statement(resource_arn, secret_arn, sql, params::Dict{String,<:Any})

Runs a SQL statement against a database.  If a call isn't part of a transaction because it
doesn't include the transactionID parameter, changes that result from the call are
committed automatically. If the binary response data from the database is more than 1 MB,
the call is terminated.

# Arguments
- `resource_arn`: The Amazon Resource Name (ARN) of the Aurora Serverless DB cluster.
- `secret_arn`: The ARN of the secret that enables access to the DB cluster. Enter the
  database user name and password for the credentials in the secret. For information about
  creating the secret, see Create a database secret.
- `sql`: The SQL statement to run.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"continueAfterTimeout"`: A value that indicates whether to continue running the
  statement after the call times out. By default, the statement stops running when the call
  times out.  For DDL statements, we recommend continuing to run the statement after the call
  times out. When a DDL statement terminates before it is finished running, it can result in
  errors and possibly corrupted data structures.
- `"database"`: The name of the database.
- `"formatRecordsAs"`: A value that indicates whether to format the result set as a single
  JSON string. This parameter only applies to SELECT statements and is ignored for other
  types of statements. Allowed values are NONE and JSON. The default value is NONE. The
  result is returned in the formattedRecords field. For usage information about the JSON
  format for result sets, see Using the Data API in the Amazon Aurora User Guide.
- `"includeResultMetadata"`: A value that indicates whether to include metadata in the
  results.
- `"parameters"`: The parameters for the SQL statement.  Array parameters are not
  supported.
- `"resultSetOptions"`: Options that control how the result set is returned.
- `"schema"`: The name of the database schema.  Currently, the schema parameter isn't
  supported.
- `"transactionId"`: The identifier of a transaction that was started by using the
  BeginTransaction operation. Specify the transaction ID of the transaction that you want to
  include the SQL statement in. If the SQL statement is not part of a transaction, don't set
  this parameter.
"""
function execute_statement(
    resourceArn, secretArn, sql; aws_config::AbstractAWSConfig=global_aws_config()
)
    return rds_data(
        "POST",
        "/Execute",
        Dict{String,Any}(
            "resourceArn" => resourceArn, "secretArn" => secretArn, "sql" => sql
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function execute_statement(
    resourceArn,
    secretArn,
    sql,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return rds_data(
        "POST",
        "/Execute",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}(
                    "resourceArn" => resourceArn, "secretArn" => secretArn, "sql" => sql
                ),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    rollback_transaction(resource_arn, secret_arn, transaction_id)
    rollback_transaction(resource_arn, secret_arn, transaction_id, params::Dict{String,<:Any})

Performs a rollback of a transaction. Rolling back a transaction cancels its changes.

# Arguments
- `resource_arn`: The Amazon Resource Name (ARN) of the Aurora Serverless DB cluster.
- `secret_arn`: The name or ARN of the secret that enables access to the DB cluster.
- `transaction_id`: The identifier of the transaction to roll back.

"""
function rollback_transaction(
    resourceArn, secretArn, transactionId; aws_config::AbstractAWSConfig=global_aws_config()
)
    return rds_data(
        "POST",
        "/RollbackTransaction",
        Dict{String,Any}(
            "resourceArn" => resourceArn,
            "secretArn" => secretArn,
            "transactionId" => transactionId,
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function rollback_transaction(
    resourceArn,
    secretArn,
    transactionId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return rds_data(
        "POST",
        "/RollbackTransaction",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}(
                    "resourceArn" => resourceArn,
                    "secretArn" => secretArn,
                    "transactionId" => transactionId,
                ),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
