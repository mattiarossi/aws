policy "dynamodb" {
    title = "DynamoDB controls"
    check "1" {
      title = "DynamoDB tables should automatically scale capacity with demand"
      query = file("queries/dynamodb/autoscale_or_ondemand.sql")
    }

    check "2" {
      title = "DynamoDB tables should have point-in-time recovery enabled"
      query = file("queries/dynamodb/point_in_time_recovery.sql")
    }

    check "3" {
      title = "DynamoDB Accelerator (DAX) clusters should be encrypted at rest"
      query = file("queries/dynamodb/dax_encrypted_at_rest.sql")
    }
  }