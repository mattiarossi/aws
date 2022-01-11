policy "codebuild" {
  title = "codebuild controls"
  check "CodeBuild.1" {
    title = "CodeBuild GitHub or Bitbucket source repository URLs should use OAuth"
    query = file("queries/codebuild/check_oauth_usage_for_sources.sql")
  }

  check "CodeBuild.2" {
    title = "CodeBuild project environment variables should not contain clear text credentials"
    query = file("queries/codebuild/check_environment_variables.sql")
  }
}