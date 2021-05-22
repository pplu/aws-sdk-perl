package Paws::Amplify;
  use Moose;
  sub service { 'amplify' }
  sub signing_name { 'amplify' }
  sub version { '2017-07-25' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CreateApp {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Amplify::CreateApp', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateBackendEnvironment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Amplify::CreateBackendEnvironment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateBranch {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Amplify::CreateBranch', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDeployment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Amplify::CreateDeployment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDomainAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Amplify::CreateDomainAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateWebhook {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Amplify::CreateWebhook', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteApp {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Amplify::DeleteApp', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteBackendEnvironment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Amplify::DeleteBackendEnvironment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteBranch {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Amplify::DeleteBranch', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDomainAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Amplify::DeleteDomainAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Amplify::DeleteJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteWebhook {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Amplify::DeleteWebhook', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GenerateAccessLogs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Amplify::GenerateAccessLogs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetApp {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Amplify::GetApp', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetArtifactUrl {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Amplify::GetArtifactUrl', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBackendEnvironment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Amplify::GetBackendEnvironment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBranch {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Amplify::GetBranch', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDomainAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Amplify::GetDomainAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Amplify::GetJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetWebhook {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Amplify::GetWebhook', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListApps {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Amplify::ListApps', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListArtifacts {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Amplify::ListArtifacts', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListBackendEnvironments {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Amplify::ListBackendEnvironments', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListBranches {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Amplify::ListBranches', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDomainAssociations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Amplify::ListDomainAssociations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Amplify::ListJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Amplify::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListWebhooks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Amplify::ListWebhooks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartDeployment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Amplify::StartDeployment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Amplify::StartJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Amplify::StopJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Amplify::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Amplify::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateApp {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Amplify::UpdateApp', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateBranch {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Amplify::UpdateBranch', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDomainAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Amplify::UpdateDomainAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateWebhook {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Amplify::UpdateWebhook', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllApps {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListApps(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListApps(@_, nextToken => $next_result->nextToken);
        push @{ $result->apps }, @{ $next_result->apps };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'apps') foreach (@{ $result->apps });
        $result = $self->ListApps(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'apps') foreach (@{ $result->apps });
    }

    return undef
  }
  sub ListAllBranches {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListBranches(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListBranches(@_, nextToken => $next_result->nextToken);
        push @{ $result->branches }, @{ $next_result->branches };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'branches') foreach (@{ $result->branches });
        $result = $self->ListBranches(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'branches') foreach (@{ $result->branches });
    }

    return undef
  }
  sub ListAllDomainAssociations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDomainAssociations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListDomainAssociations(@_, nextToken => $next_result->nextToken);
        push @{ $result->domainAssociations }, @{ $next_result->domainAssociations };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'domainAssociations') foreach (@{ $result->domainAssociations });
        $result = $self->ListDomainAssociations(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'domainAssociations') foreach (@{ $result->domainAssociations });
    }

    return undef
  }
  sub ListAllJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListJobs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListJobs(@_, nextToken => $next_result->nextToken);
        push @{ $result->jobSummaries }, @{ $next_result->jobSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'jobSummaries') foreach (@{ $result->jobSummaries });
        $result = $self->ListJobs(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'jobSummaries') foreach (@{ $result->jobSummaries });
    }

    return undef
  }


  sub operations { qw/CreateApp CreateBackendEnvironment CreateBranch CreateDeployment CreateDomainAssociation CreateWebhook DeleteApp DeleteBackendEnvironment DeleteBranch DeleteDomainAssociation DeleteJob DeleteWebhook GenerateAccessLogs GetApp GetArtifactUrl GetBackendEnvironment GetBranch GetDomainAssociation GetJob GetWebhook ListApps ListArtifacts ListBackendEnvironments ListBranches ListDomainAssociations ListJobs ListTagsForResource ListWebhooks StartDeployment StartJob StopJob TagResource UntagResource UpdateApp UpdateBranch UpdateDomainAssociation UpdateWebhook / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Amplify - Perl Interface to AWS AWS Amplify

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Amplify');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

Amplify enables developers to develop and deploy cloud-powered mobile
and web apps. The Amplify Console provides a continuous delivery and
hosting service for web applications. For more information, see the
Amplify Console User Guide
(https://docs.aws.amazon.com/amplify/latest/userguide/welcome.html).
The Amplify Framework is a comprehensive set of SDKs, libraries, tools,
and documentation for client app development. For more information, see
the Amplify Framework. (https://docs.amplify.aws/)

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25>


=head1 METHODS

=head2 CreateApp

=over

=item Name => Str

=item [AccessToken => Str]

=item [AutoBranchCreationConfig => L<Paws::Amplify::AutoBranchCreationConfig>]

=item [AutoBranchCreationPatterns => ArrayRef[Str|Undef]]

=item [BasicAuthCredentials => Str]

=item [BuildSpec => Str]

=item [CustomHeaders => Str]

=item [CustomRules => ArrayRef[L<Paws::Amplify::CustomRule>]]

=item [Description => Str]

=item [EnableAutoBranchCreation => Bool]

=item [EnableBasicAuth => Bool]

=item [EnableBranchAutoBuild => Bool]

=item [EnableBranchAutoDeletion => Bool]

=item [EnvironmentVariables => L<Paws::Amplify::EnvironmentVariables>]

=item [IamServiceRoleArn => Str]

=item [OauthToken => Str]

=item [Platform => Str]

=item [Repository => Str]

=item [Tags => L<Paws::Amplify::TagMap>]


=back

Each argument is described in detail in: L<Paws::Amplify::CreateApp>

Returns: a L<Paws::Amplify::CreateAppResult> instance

Creates a new Amplify app.


=head2 CreateBackendEnvironment

=over

=item AppId => Str

=item EnvironmentName => Str

=item [DeploymentArtifacts => Str]

=item [StackName => Str]


=back

Each argument is described in detail in: L<Paws::Amplify::CreateBackendEnvironment>

Returns: a L<Paws::Amplify::CreateBackendEnvironmentResult> instance

Creates a new backend environment for an Amplify app.


=head2 CreateBranch

=over

=item AppId => Str

=item BranchName => Str

=item [BackendEnvironmentArn => Str]

=item [BasicAuthCredentials => Str]

=item [BuildSpec => Str]

=item [Description => Str]

=item [DisplayName => Str]

=item [EnableAutoBuild => Bool]

=item [EnableBasicAuth => Bool]

=item [EnableNotification => Bool]

=item [EnablePerformanceMode => Bool]

=item [EnablePullRequestPreview => Bool]

=item [EnvironmentVariables => L<Paws::Amplify::EnvironmentVariables>]

=item [Framework => Str]

=item [PullRequestEnvironmentName => Str]

=item [Stage => Str]

=item [Tags => L<Paws::Amplify::TagMap>]

=item [Ttl => Str]


=back

Each argument is described in detail in: L<Paws::Amplify::CreateBranch>

Returns: a L<Paws::Amplify::CreateBranchResult> instance

Creates a new branch for an Amplify app.


=head2 CreateDeployment

=over

=item AppId => Str

=item BranchName => Str

=item [FileMap => L<Paws::Amplify::FileMap>]


=back

Each argument is described in detail in: L<Paws::Amplify::CreateDeployment>

Returns: a L<Paws::Amplify::CreateDeploymentResult> instance

Creates a deployment for a manually deployed Amplify app. Manually
deployed apps are not connected to a repository.


=head2 CreateDomainAssociation

=over

=item AppId => Str

=item DomainName => Str

=item SubDomainSettings => ArrayRef[L<Paws::Amplify::SubDomainSetting>]

=item [AutoSubDomainCreationPatterns => ArrayRef[Str|Undef]]

=item [AutoSubDomainIAMRole => Str]

=item [EnableAutoSubDomain => Bool]


=back

Each argument is described in detail in: L<Paws::Amplify::CreateDomainAssociation>

Returns: a L<Paws::Amplify::CreateDomainAssociationResult> instance

Creates a new domain association for an Amplify app. This action
associates a custom domain with the Amplify app


=head2 CreateWebhook

=over

=item AppId => Str

=item BranchName => Str

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::Amplify::CreateWebhook>

Returns: a L<Paws::Amplify::CreateWebhookResult> instance

Creates a new webhook on an Amplify app.


=head2 DeleteApp

=over

=item AppId => Str


=back

Each argument is described in detail in: L<Paws::Amplify::DeleteApp>

Returns: a L<Paws::Amplify::DeleteAppResult> instance

Deletes an existing Amplify app specified by an app ID.


=head2 DeleteBackendEnvironment

=over

=item AppId => Str

=item EnvironmentName => Str


=back

Each argument is described in detail in: L<Paws::Amplify::DeleteBackendEnvironment>

Returns: a L<Paws::Amplify::DeleteBackendEnvironmentResult> instance

Deletes a backend environment for an Amplify app.


=head2 DeleteBranch

=over

=item AppId => Str

=item BranchName => Str


=back

Each argument is described in detail in: L<Paws::Amplify::DeleteBranch>

Returns: a L<Paws::Amplify::DeleteBranchResult> instance

Deletes a branch for an Amplify app.


=head2 DeleteDomainAssociation

=over

=item AppId => Str

=item DomainName => Str


=back

Each argument is described in detail in: L<Paws::Amplify::DeleteDomainAssociation>

Returns: a L<Paws::Amplify::DeleteDomainAssociationResult> instance

Deletes a domain association for an Amplify app.


=head2 DeleteJob

=over

=item AppId => Str

=item BranchName => Str

=item JobId => Str


=back

Each argument is described in detail in: L<Paws::Amplify::DeleteJob>

Returns: a L<Paws::Amplify::DeleteJobResult> instance

Deletes a job for a branch of an Amplify app.


=head2 DeleteWebhook

=over

=item WebhookId => Str


=back

Each argument is described in detail in: L<Paws::Amplify::DeleteWebhook>

Returns: a L<Paws::Amplify::DeleteWebhookResult> instance

Deletes a webhook.


=head2 GenerateAccessLogs

=over

=item AppId => Str

=item DomainName => Str

=item [EndTime => Str]

=item [StartTime => Str]


=back

Each argument is described in detail in: L<Paws::Amplify::GenerateAccessLogs>

Returns: a L<Paws::Amplify::GenerateAccessLogsResult> instance

Returns the website access logs for a specific time range using a
presigned URL.


=head2 GetApp

=over

=item AppId => Str


=back

Each argument is described in detail in: L<Paws::Amplify::GetApp>

Returns: a L<Paws::Amplify::GetAppResult> instance

Returns an existing Amplify app by appID.


=head2 GetArtifactUrl

=over

=item ArtifactId => Str


=back

Each argument is described in detail in: L<Paws::Amplify::GetArtifactUrl>

Returns: a L<Paws::Amplify::GetArtifactUrlResult> instance

Returns the artifact info that corresponds to an artifact id.


=head2 GetBackendEnvironment

=over

=item AppId => Str

=item EnvironmentName => Str


=back

Each argument is described in detail in: L<Paws::Amplify::GetBackendEnvironment>

Returns: a L<Paws::Amplify::GetBackendEnvironmentResult> instance

Returns a backend environment for an Amplify app.


=head2 GetBranch

=over

=item AppId => Str

=item BranchName => Str


=back

Each argument is described in detail in: L<Paws::Amplify::GetBranch>

Returns: a L<Paws::Amplify::GetBranchResult> instance

Returns a branch for an Amplify app.


=head2 GetDomainAssociation

=over

=item AppId => Str

=item DomainName => Str


=back

Each argument is described in detail in: L<Paws::Amplify::GetDomainAssociation>

Returns: a L<Paws::Amplify::GetDomainAssociationResult> instance

Returns the domain information for an Amplify app.


=head2 GetJob

=over

=item AppId => Str

=item BranchName => Str

=item JobId => Str


=back

Each argument is described in detail in: L<Paws::Amplify::GetJob>

Returns: a L<Paws::Amplify::GetJobResult> instance

Returns a job for a branch of an Amplify app.


=head2 GetWebhook

=over

=item WebhookId => Str


=back

Each argument is described in detail in: L<Paws::Amplify::GetWebhook>

Returns: a L<Paws::Amplify::GetWebhookResult> instance

Returns the webhook information that corresponds to a specified webhook
ID.


=head2 ListApps

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Amplify::ListApps>

Returns: a L<Paws::Amplify::ListAppsResult> instance

Returns a list of the existing Amplify apps.


=head2 ListArtifacts

=over

=item AppId => Str

=item BranchName => Str

=item JobId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Amplify::ListArtifacts>

Returns: a L<Paws::Amplify::ListArtifactsResult> instance

Returns a list of artifacts for a specified app, branch, and job.


=head2 ListBackendEnvironments

=over

=item AppId => Str

=item [EnvironmentName => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Amplify::ListBackendEnvironments>

Returns: a L<Paws::Amplify::ListBackendEnvironmentsResult> instance

Lists the backend environments for an Amplify app.


=head2 ListBranches

=over

=item AppId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Amplify::ListBranches>

Returns: a L<Paws::Amplify::ListBranchesResult> instance

Lists the branches of an Amplify app.


=head2 ListDomainAssociations

=over

=item AppId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Amplify::ListDomainAssociations>

Returns: a L<Paws::Amplify::ListDomainAssociationsResult> instance

Returns the domain associations for an Amplify app.


=head2 ListJobs

=over

=item AppId => Str

=item BranchName => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Amplify::ListJobs>

Returns: a L<Paws::Amplify::ListJobsResult> instance

Lists the jobs for a branch of an Amplify app.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::Amplify::ListTagsForResource>

Returns: a L<Paws::Amplify::ListTagsForResourceResponse> instance

Returns a list of tags for a specified Amazon Resource Name (ARN).


=head2 ListWebhooks

=over

=item AppId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Amplify::ListWebhooks>

Returns: a L<Paws::Amplify::ListWebhooksResult> instance

Returns a list of webhooks for an Amplify app.


=head2 StartDeployment

=over

=item AppId => Str

=item BranchName => Str

=item [JobId => Str]

=item [SourceUrl => Str]


=back

Each argument is described in detail in: L<Paws::Amplify::StartDeployment>

Returns: a L<Paws::Amplify::StartDeploymentResult> instance

Starts a deployment for a manually deployed app. Manually deployed apps
are not connected to a repository.


=head2 StartJob

=over

=item AppId => Str

=item BranchName => Str

=item JobType => Str

=item [CommitId => Str]

=item [CommitMessage => Str]

=item [CommitTime => Str]

=item [JobId => Str]

=item [JobReason => Str]


=back

Each argument is described in detail in: L<Paws::Amplify::StartJob>

Returns: a L<Paws::Amplify::StartJobResult> instance

Starts a new job for a branch of an Amplify app.


=head2 StopJob

=over

=item AppId => Str

=item BranchName => Str

=item JobId => Str


=back

Each argument is described in detail in: L<Paws::Amplify::StopJob>

Returns: a L<Paws::Amplify::StopJobResult> instance

Stops a job that is in progress for a branch of an Amplify app.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::Amplify::TagMap>


=back

Each argument is described in detail in: L<Paws::Amplify::TagResource>

Returns: a L<Paws::Amplify::TagResourceResponse> instance

Tags the resource with a tag key and value.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Amplify::UntagResource>

Returns: a L<Paws::Amplify::UntagResourceResponse> instance

Untags a resource with a specified Amazon Resource Name (ARN).


=head2 UpdateApp

=over

=item AppId => Str

=item [AccessToken => Str]

=item [AutoBranchCreationConfig => L<Paws::Amplify::AutoBranchCreationConfig>]

=item [AutoBranchCreationPatterns => ArrayRef[Str|Undef]]

=item [BasicAuthCredentials => Str]

=item [BuildSpec => Str]

=item [CustomHeaders => Str]

=item [CustomRules => ArrayRef[L<Paws::Amplify::CustomRule>]]

=item [Description => Str]

=item [EnableAutoBranchCreation => Bool]

=item [EnableBasicAuth => Bool]

=item [EnableBranchAutoBuild => Bool]

=item [EnableBranchAutoDeletion => Bool]

=item [EnvironmentVariables => L<Paws::Amplify::EnvironmentVariables>]

=item [IamServiceRoleArn => Str]

=item [Name => Str]

=item [OauthToken => Str]

=item [Platform => Str]

=item [Repository => Str]


=back

Each argument is described in detail in: L<Paws::Amplify::UpdateApp>

Returns: a L<Paws::Amplify::UpdateAppResult> instance

Updates an existing Amplify app.


=head2 UpdateBranch

=over

=item AppId => Str

=item BranchName => Str

=item [BackendEnvironmentArn => Str]

=item [BasicAuthCredentials => Str]

=item [BuildSpec => Str]

=item [Description => Str]

=item [DisplayName => Str]

=item [EnableAutoBuild => Bool]

=item [EnableBasicAuth => Bool]

=item [EnableNotification => Bool]

=item [EnablePerformanceMode => Bool]

=item [EnablePullRequestPreview => Bool]

=item [EnvironmentVariables => L<Paws::Amplify::EnvironmentVariables>]

=item [Framework => Str]

=item [PullRequestEnvironmentName => Str]

=item [Stage => Str]

=item [Ttl => Str]


=back

Each argument is described in detail in: L<Paws::Amplify::UpdateBranch>

Returns: a L<Paws::Amplify::UpdateBranchResult> instance

Updates a branch for an Amplify app.


=head2 UpdateDomainAssociation

=over

=item AppId => Str

=item DomainName => Str

=item SubDomainSettings => ArrayRef[L<Paws::Amplify::SubDomainSetting>]

=item [AutoSubDomainCreationPatterns => ArrayRef[Str|Undef]]

=item [AutoSubDomainIAMRole => Str]

=item [EnableAutoSubDomain => Bool]


=back

Each argument is described in detail in: L<Paws::Amplify::UpdateDomainAssociation>

Returns: a L<Paws::Amplify::UpdateDomainAssociationResult> instance

Creates a new domain association for an Amplify app.


=head2 UpdateWebhook

=over

=item WebhookId => Str

=item [BranchName => Str]

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::Amplify::UpdateWebhook>

Returns: a L<Paws::Amplify::UpdateWebhookResult> instance

Updates a webhook.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllApps(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllApps([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - apps, passing the object as the first parameter, and the string 'apps' as the second parameter 

If not, it will return a a L<Paws::Amplify::ListAppsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllBranches(sub { },AppId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllBranches(AppId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - branches, passing the object as the first parameter, and the string 'branches' as the second parameter 

If not, it will return a a L<Paws::Amplify::ListBranchesResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDomainAssociations(sub { },AppId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllDomainAssociations(AppId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - domainAssociations, passing the object as the first parameter, and the string 'domainAssociations' as the second parameter 

If not, it will return a a L<Paws::Amplify::ListDomainAssociationsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllJobs(sub { },AppId => Str, BranchName => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllJobs(AppId => Str, BranchName => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - jobSummaries, passing the object as the first parameter, and the string 'jobSummaries' as the second parameter 

If not, it will return a a L<Paws::Amplify::ListJobsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

