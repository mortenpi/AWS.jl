# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: rds_data
using AWS.Compat
using AWS.UUIDs

"""
    BatchExecuteStatement()

Runs a batch SQL statement over an array of data. You can run bulk update and insert operations for multiple records using a DML statement with different parameter sets. Bulk operations can provide a significant performance improvement over individual insert and update operations.  If a call isn't part of a transaction because it doesn't include the transactionID parameter, changes that result from the call are committed automatically. 

# Required Parameters
- `resourceArn`: The Amazon Resource Name (ARN) of the Aurora Serverless DB cluster.
- `secretArn`: The name or ARN of the secret that enables access to the DB cluster.
- `sql`: The SQL statement to run.

# Optional Parameters
- `database`: The name of the database.
- `parameterSets`: The parameter set for the batch operation. The SQL statement is executed as many times as the number of parameter sets provided. To execute a SQL statement with no parameters, use one of the following options:   Specify one or more empty parameter sets.   Use the ExecuteStatement operation instead of the BatchExecuteStatement operation.    Array parameters are not supported. 
- `schema`: The name of the database schema.
- `transactionId`: The identifier of a transaction that was started by using the BeginTransaction operation. Specify the transaction ID of the transaction that you want to include the SQL statement in. If the SQL statement is not part of a transaction, don't set this parameter.
"""
batch_execute_statement(resourceArn, secretArn, sql; aws_config::AbstractAWSConfig=global_aws_config()) = rds_data("POST", "/BatchExecute", Dict{String, Any}("resourceArn"=>resourceArn, "secretArn"=>secretArn, "sql"=>sql); aws_config=aws_config)
batch_execute_statement(resourceArn, secretArn, sql, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = rds_data("POST", "/BatchExecute", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("resourceArn"=>resourceArn, "secretArn"=>secretArn, "sql"=>sql), args)); aws_config=aws_config)

"""
    BeginTransaction()

Starts a SQL transaction.  &lt;important&gt; &lt;p&gt;A transaction can run for a maximum of 24 hours. A transaction is terminated and rolled back automatically after 24 hours.&lt;/p&gt; &lt;p&gt;A transaction times out if no calls use its transaction ID in three minutes. If a transaction times out before it's committed, it's rolled back automatically.&lt;/p&gt; &lt;p&gt;DDL statements inside a transaction cause an implicit commit. We recommend that you run each DDL statement in a separate &lt;code&gt;ExecuteStatement&lt;/code&gt; call with &lt;code&gt;continueAfterTimeout&lt;/code&gt; enabled.&lt;/p&gt; &lt;/important&gt; 

# Required Parameters
- `resourceArn`: The Amazon Resource Name (ARN) of the Aurora Serverless DB cluster.
- `secretArn`: The name or ARN of the secret that enables access to the DB cluster.

# Optional Parameters
- `database`: The name of the database.
- `schema`: The name of the database schema.
"""
begin_transaction(resourceArn, secretArn; aws_config::AbstractAWSConfig=global_aws_config()) = rds_data("POST", "/BeginTransaction", Dict{String, Any}("resourceArn"=>resourceArn, "secretArn"=>secretArn); aws_config=aws_config)
begin_transaction(resourceArn, secretArn, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = rds_data("POST", "/BeginTransaction", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("resourceArn"=>resourceArn, "secretArn"=>secretArn), args)); aws_config=aws_config)

"""
    CommitTransaction()

Ends a SQL transaction started with the BeginTransaction operation and commits the changes.

# Required Parameters
- `resourceArn`: The Amazon Resource Name (ARN) of the Aurora Serverless DB cluster.
- `secretArn`: The name or ARN of the secret that enables access to the DB cluster.
- `transactionId`: The identifier of the transaction to end and commit.

"""
commit_transaction(resourceArn, secretArn, transactionId; aws_config::AbstractAWSConfig=global_aws_config()) = rds_data("POST", "/CommitTransaction", Dict{String, Any}("resourceArn"=>resourceArn, "secretArn"=>secretArn, "transactionId"=>transactionId); aws_config=aws_config)
commit_transaction(resourceArn, secretArn, transactionId, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = rds_data("POST", "/CommitTransaction", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("resourceArn"=>resourceArn, "secretArn"=>secretArn, "transactionId"=>transactionId), args)); aws_config=aws_config)

"""
    ExecuteSql()

Runs one or more SQL statements.  This operation is deprecated. Use the BatchExecuteStatement or ExecuteStatement operation. 

# Required Parameters
- `awsSecretStoreArn`: The Amazon Resource Name (ARN) of the secret that enables access to the DB cluster.
- `dbClusterOrInstanceArn`: The ARN of the Aurora Serverless DB cluster.
- `sqlStatements`: One or more SQL statements to run on the DB cluster. You can separate SQL statements from each other with a semicolon (;). Any valid SQL statement is permitted, including data definition, data manipulation, and commit statements. 

# Optional Parameters
- `database`: The name of the database.
- `schema`: The name of the database schema.
"""
execute_sql(awsSecretStoreArn, dbClusterOrInstanceArn, sqlStatements; aws_config::AbstractAWSConfig=global_aws_config()) = rds_data("POST", "/ExecuteSql", Dict{String, Any}("awsSecretStoreArn"=>awsSecretStoreArn, "dbClusterOrInstanceArn"=>dbClusterOrInstanceArn, "sqlStatements"=>sqlStatements); aws_config=aws_config)
execute_sql(awsSecretStoreArn, dbClusterOrInstanceArn, sqlStatements, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = rds_data("POST", "/ExecuteSql", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("awsSecretStoreArn"=>awsSecretStoreArn, "dbClusterOrInstanceArn"=>dbClusterOrInstanceArn, "sqlStatements"=>sqlStatements), args)); aws_config=aws_config)

"""
    ExecuteStatement()

Runs a SQL statement against a database.  If a call isn't part of a transaction because it doesn't include the transactionID parameter, changes that result from the call are committed automatically.  The response size limit is 1 MB. If the call returns more than 1 MB of response data, the call is terminated.

# Required Parameters
- `resourceArn`: The Amazon Resource Name (ARN) of the Aurora Serverless DB cluster.
- `secretArn`: The name or ARN of the secret that enables access to the DB cluster.
- `sql`: The SQL statement to run.

# Optional Parameters
- `continueAfterTimeout`: A value that indicates whether to continue running the statement after the call times out. By default, the statement stops running when the call times out.  For DDL statements, we recommend continuing to run the statement after the call times out. When a DDL statement terminates before it is finished running, it can result in errors and possibly corrupted data structures. 
- `database`: The name of the database.
- `includeResultMetadata`: A value that indicates whether to include metadata in the results.
- `parameters`: The parameters for the SQL statement.  Array parameters are not supported. 
- `resultSetOptions`: Options that control how the result set is returned.
- `schema`: The name of the database schema.
- `transactionId`: The identifier of a transaction that was started by using the BeginTransaction operation. Specify the transaction ID of the transaction that you want to include the SQL statement in. If the SQL statement is not part of a transaction, don't set this parameter.
"""
execute_statement(resourceArn, secretArn, sql; aws_config::AbstractAWSConfig=global_aws_config()) = rds_data("POST", "/Execute", Dict{String, Any}("resourceArn"=>resourceArn, "secretArn"=>secretArn, "sql"=>sql); aws_config=aws_config)
execute_statement(resourceArn, secretArn, sql, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = rds_data("POST", "/Execute", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("resourceArn"=>resourceArn, "secretArn"=>secretArn, "sql"=>sql), args)); aws_config=aws_config)

"""
    RollbackTransaction()

Performs a rollback of a transaction. Rolling back a transaction cancels its changes.

# Required Parameters
- `resourceArn`: The Amazon Resource Name (ARN) of the Aurora Serverless DB cluster.
- `secretArn`: The name or ARN of the secret that enables access to the DB cluster.
- `transactionId`: The identifier of the transaction to roll back.

"""
rollback_transaction(resourceArn, secretArn, transactionId; aws_config::AbstractAWSConfig=global_aws_config()) = rds_data("POST", "/RollbackTransaction", Dict{String, Any}("resourceArn"=>resourceArn, "secretArn"=>secretArn, "transactionId"=>transactionId); aws_config=aws_config)
rollback_transaction(resourceArn, secretArn, transactionId, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = rds_data("POST", "/RollbackTransaction", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("resourceArn"=>resourceArn, "secretArn"=>secretArn, "transactionId"=>transactionId), args)); aws_config=aws_config)
