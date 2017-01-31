package Paws::CodeDeploy;
  use Moose;
  sub service { 'codedeploy' }
  sub version { '2014-10-06' }
  sub target_prefix { 'CodeDeploy_20141006' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller', 'Paws::Net::JsonResponse';

  
  sub AddTagsToOnPremisesInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeDeploy::AddTagsToOnPremisesInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchGetApplicationRevisions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeDeploy::BatchGetApplicationRevisions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchGetApplications {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeDeploy::BatchGetApplications', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchGetDeploymentGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeDeploy::BatchGetDeploymentGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchGetDeploymentInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeDeploy::BatchGetDeploymentInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchGetDeployments {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeDeploy::BatchGetDeployments', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchGetOnPremisesInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeDeploy::BatchGetOnPremisesInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ContinueDeployment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeDeploy::ContinueDeployment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeDeploy::CreateApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDeployment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeDeploy::CreateDeployment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDeploymentConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeDeploy::CreateDeploymentConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDeploymentGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeDeploy::CreateDeploymentGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeDeploy::DeleteApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDeploymentConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeDeploy::DeleteDeploymentConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDeploymentGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeDeploy::DeleteDeploymentGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeregisterOnPremisesInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeDeploy::DeregisterOnPremisesInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeDeploy::GetApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetApplicationRevision {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeDeploy::GetApplicationRevision', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDeployment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeDeploy::GetDeployment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDeploymentConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeDeploy::GetDeploymentConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDeploymentGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeDeploy::GetDeploymentGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDeploymentInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeDeploy::GetDeploymentInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetOnPremisesInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeDeploy::GetOnPremisesInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListApplicationRevisions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeDeploy::ListApplicationRevisions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListApplications {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeDeploy::ListApplications', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDeploymentConfigs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeDeploy::ListDeploymentConfigs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDeploymentGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeDeploy::ListDeploymentGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDeploymentInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeDeploy::ListDeploymentInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDeployments {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeDeploy::ListDeployments', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListOnPremisesInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeDeploy::ListOnPremisesInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RegisterApplicationRevision {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeDeploy::RegisterApplicationRevision', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RegisterOnPremisesInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeDeploy::RegisterOnPremisesInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RemoveTagsFromOnPremisesInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeDeploy::RemoveTagsFromOnPremisesInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SkipWaitTimeForInstanceTermination {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeDeploy::SkipWaitTimeForInstanceTermination', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopDeployment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeDeploy::StopDeployment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeDeploy::UpdateApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDeploymentGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeDeploy::UpdateDeploymentGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllApplicationRevisions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListApplicationRevisions(@_);

    if (not defined $callback) {
      while ($result->nextToken) {
        $result = $self->ListApplicationRevisions(@_, nextToken => $result->nextToken);
        push @{ $result->revisions }, @{ $result->revisions };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $result = $self->ListApplicationRevisions(@_, nextToken => $result->nextToken);
        $callback->($_ => 'revisions') foreach (@{ $result->revisions });
      }
    }

    return undef
  }
  sub ListAllApplications {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListApplications(@_);

    if (not defined $callback) {
      while ($result->nextToken) {
        $result = $self->ListApplications(@_, nextToken => $result->nextToken);
        push @{ $result->applications }, @{ $result->applications };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $result = $self->ListApplications(@_, nextToken => $result->nextToken);
        $callback->($_ => 'applications') foreach (@{ $result->applications });
      }
    }

    return undef
  }
  sub ListAllDeploymentConfigs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDeploymentConfigs(@_);

    if (not defined $callback) {
      while ($result->nextToken) {
        $result = $self->ListDeploymentConfigs(@_, nextToken => $result->nextToken);
        push @{ $result->deploymentConfigsList }, @{ $result->deploymentConfigsList };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $result = $self->ListDeploymentConfigs(@_, nextToken => $result->nextToken);
        $callback->($_ => 'deploymentConfigsList') foreach (@{ $result->deploymentConfigsList });
      }
    }

    return undef
  }
  sub ListAllDeploymentGroups {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDeploymentGroups(@_);

    if (not defined $callback) {
      while ($result->nextToken) {
        $result = $self->ListDeploymentGroups(@_, nextToken => $result->nextToken);
        push @{ $result->deploymentGroups }, @{ $result->deploymentGroups };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $result = $self->ListDeploymentGroups(@_, nextToken => $result->nextToken);
        $callback->($_ => 'deploymentGroups') foreach (@{ $result->deploymentGroups });
      }
    }

    return undef
  }
  sub ListAllDeploymentInstances {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDeploymentInstances(@_);

    if (not defined $callback) {
      while ($result->nextToken) {
        $result = $self->ListDeploymentInstances(@_, nextToken => $result->nextToken);
        push @{ $result->instancesList }, @{ $result->instancesList };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $result = $self->ListDeploymentInstances(@_, nextToken => $result->nextToken);
        $callback->($_ => 'instancesList') foreach (@{ $result->instancesList });
      }
    }

    return undef
  }
  sub ListAllDeployments {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDeployments(@_);

    if (not defined $callback) {
      while ($result->nextToken) {
        $result = $self->ListDeployments(@_, nextToken => $result->nextToken);
        push @{ $result->deployments }, @{ $result->deployments };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $result = $self->ListDeployments(@_, nextToken => $result->nextToken);
        $callback->($_ => 'deployments') foreach (@{ $result->deployments });
      }
    }

    return undef
  }


  sub operations { qw/AddTagsToOnPremisesInstances BatchGetApplicationRevisions BatchGetApplications BatchGetDeploymentGroups BatchGetDeploymentInstances BatchGetDeployments BatchGetOnPremisesInstances ContinueDeployment CreateApplication CreateDeployment CreateDeploymentConfig CreateDeploymentGroup DeleteApplication DeleteDeploymentConfig DeleteDeploymentGroup DeregisterOnPremisesInstance GetApplication GetApplicationRevision GetDeployment GetDeploymentConfig GetDeploymentGroup GetDeploymentInstance GetOnPremisesInstance ListApplicationRevisions ListApplications ListDeploymentConfigs ListDeploymentGroups ListDeploymentInstances ListDeployments ListOnPremisesInstances RegisterApplicationRevision RegisterOnPremisesInstance RemoveTagsFromOnPremisesInstances SkipWaitTimeForInstanceTermination StopDeployment UpdateApplication UpdateDeploymentGroup / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy - Perl Interface to AWS AWS CodeDeploy

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('CodeDeploy');
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

AWS CodeDeploy

B<Overview>

This reference guide provides descriptions of the AWS CodeDeploy APIs.
For more information about AWS CodeDeploy, see the AWS CodeDeploy User
Guide.

B<Using the APIs>

You can use the AWS CodeDeploy APIs to work with the following:

=over

=item *

Applications are unique identifiers used by AWS CodeDeploy to ensure
the correct combinations of revisions, deployment configurations, and
deployment groups are being referenced during deployments.

You can use the AWS CodeDeploy APIs to create, delete, get, list, and
update applications.

=item *

Deployment configurations are sets of deployment rules and success and
failure conditions used by AWS CodeDeploy during deployments.

You can use the AWS CodeDeploy APIs to create, delete, get, and list
deployment configurations.

=item *

Deployment groups are groups of instances to which application
revisions can be deployed.

You can use the AWS CodeDeploy APIs to create, delete, get, list, and
update deployment groups.

=item *

Instances represent Amazon EC2 instances to which application revisions
are deployed. Instances are identified by their Amazon EC2 tags or Auto
Scaling group names. Instances belong to deployment groups.

You can use the AWS CodeDeploy APIs to get and list instance.

=item *

Deployments represent the process of deploying revisions to instances.

You can use the AWS CodeDeploy APIs to create, get, list, and stop
deployments.

=item *

Application revisions are archive files stored in Amazon S3 buckets or
GitHub repositories. These revisions contain source content (such as
source code, web pages, executable files, and deployment scripts) along
with an application specification (AppSpec) file. (The AppSpec file is
unique to AWS CodeDeploy; it defines the deployment actions you want
AWS CodeDeploy to execute.) For application revisions stored in Amazon
S3 buckets, an application revision is uniquely identified by its
Amazon S3 object key and its ETag, version, or both. For application
revisions stored in GitHub repositories, an application revision is
uniquely identified by its repository name and commit ID. Application
revisions are deployed through deployment groups.

You can use the AWS CodeDeploy APIs to get, list, and register
application revisions.

=back


=head1 METHODS

=head2 AddTagsToOnPremisesInstances(InstanceNames => ArrayRef[Str|Undef], Tags => ArrayRef[L<Paws::CodeDeploy::Tag>])

Each argument is described in detail in: L<Paws::CodeDeploy::AddTagsToOnPremisesInstances>

Returns: nothing

  Adds tags to on-premises instances.


=head2 BatchGetApplicationRevisions(ApplicationName => Str, Revisions => ArrayRef[L<Paws::CodeDeploy::RevisionLocation>])

Each argument is described in detail in: L<Paws::CodeDeploy::BatchGetApplicationRevisions>

Returns: a L<Paws::CodeDeploy::BatchGetApplicationRevisionsOutput> instance

  Gets information about one or more application revisions.


=head2 BatchGetApplications([ApplicationNames => ArrayRef[Str|Undef]])

Each argument is described in detail in: L<Paws::CodeDeploy::BatchGetApplications>

Returns: a L<Paws::CodeDeploy::BatchGetApplicationsOutput> instance

  Gets information about one or more applications.


=head2 BatchGetDeploymentGroups(ApplicationName => Str, DeploymentGroupNames => ArrayRef[Str|Undef])

Each argument is described in detail in: L<Paws::CodeDeploy::BatchGetDeploymentGroups>

Returns: a L<Paws::CodeDeploy::BatchGetDeploymentGroupsOutput> instance

  Gets information about one or more deployment groups.


=head2 BatchGetDeploymentInstances(DeploymentId => Str, InstanceIds => ArrayRef[Str|Undef])

Each argument is described in detail in: L<Paws::CodeDeploy::BatchGetDeploymentInstances>

Returns: a L<Paws::CodeDeploy::BatchGetDeploymentInstancesOutput> instance

  Gets information about one or more instance that are part of a
deployment group.


=head2 BatchGetDeployments([DeploymentIds => ArrayRef[Str|Undef]])

Each argument is described in detail in: L<Paws::CodeDeploy::BatchGetDeployments>

Returns: a L<Paws::CodeDeploy::BatchGetDeploymentsOutput> instance

  Gets information about one or more deployments.


=head2 BatchGetOnPremisesInstances([InstanceNames => ArrayRef[Str|Undef]])

Each argument is described in detail in: L<Paws::CodeDeploy::BatchGetOnPremisesInstances>

Returns: a L<Paws::CodeDeploy::BatchGetOnPremisesInstancesOutput> instance

  Gets information about one or more on-premises instances.


=head2 ContinueDeployment([DeploymentId => Str])

Each argument is described in detail in: L<Paws::CodeDeploy::ContinueDeployment>

Returns: nothing

  Starts the process of rerouting traffic from instances in the original
environment to instances in thereplacement environment without waiting
for a specified wait time to elapse. (Traffic rerouting, which is
achieved by registering instances in the replacement environment with
the load balancer, can start as soon as all instances have a status of
Ready.)


=head2 CreateApplication(ApplicationName => Str)

Each argument is described in detail in: L<Paws::CodeDeploy::CreateApplication>

Returns: a L<Paws::CodeDeploy::CreateApplicationOutput> instance

  Creates an application.


=head2 CreateDeployment(ApplicationName => Str, [AutoRollbackConfiguration => L<Paws::CodeDeploy::AutoRollbackConfiguration>, DeploymentConfigName => Str, DeploymentGroupName => Str, Description => Str, IgnoreApplicationStopFailures => Bool, Revision => L<Paws::CodeDeploy::RevisionLocation>, TargetInstances => L<Paws::CodeDeploy::TargetInstances>, UpdateOutdatedInstancesOnly => Bool])

Each argument is described in detail in: L<Paws::CodeDeploy::CreateDeployment>

Returns: a L<Paws::CodeDeploy::CreateDeploymentOutput> instance

  Deploys an application revision through the specified deployment group.


=head2 CreateDeploymentConfig(DeploymentConfigName => Str, [MinimumHealthyHosts => L<Paws::CodeDeploy::MinimumHealthyHosts>])

Each argument is described in detail in: L<Paws::CodeDeploy::CreateDeploymentConfig>

Returns: a L<Paws::CodeDeploy::CreateDeploymentConfigOutput> instance

  Creates a deployment configuration.


=head2 CreateDeploymentGroup(ApplicationName => Str, DeploymentGroupName => Str, ServiceRoleArn => Str, [AlarmConfiguration => L<Paws::CodeDeploy::AlarmConfiguration>, AutoRollbackConfiguration => L<Paws::CodeDeploy::AutoRollbackConfiguration>, AutoScalingGroups => ArrayRef[Str|Undef], BlueGreenDeploymentConfiguration => L<Paws::CodeDeploy::BlueGreenDeploymentConfiguration>, DeploymentConfigName => Str, DeploymentStyle => L<Paws::CodeDeploy::DeploymentStyle>, Ec2TagFilters => ArrayRef[L<Paws::CodeDeploy::EC2TagFilter>], LoadBalancerInfo => L<Paws::CodeDeploy::LoadBalancerInfo>, OnPremisesInstanceTagFilters => ArrayRef[L<Paws::CodeDeploy::TagFilter>], TriggerConfigurations => ArrayRef[L<Paws::CodeDeploy::TriggerConfig>]])

Each argument is described in detail in: L<Paws::CodeDeploy::CreateDeploymentGroup>

Returns: a L<Paws::CodeDeploy::CreateDeploymentGroupOutput> instance

  Creates a deployment group to which application revisions will be
deployed.


=head2 DeleteApplication(ApplicationName => Str)

Each argument is described in detail in: L<Paws::CodeDeploy::DeleteApplication>

Returns: nothing

  Deletes an application.


=head2 DeleteDeploymentConfig(DeploymentConfigName => Str)

Each argument is described in detail in: L<Paws::CodeDeploy::DeleteDeploymentConfig>

Returns: nothing

  Deletes a deployment configuration.

A deployment configuration cannot be deleted if it is currently in use.
Predefined configurations cannot be deleted.


=head2 DeleteDeploymentGroup(ApplicationName => Str, DeploymentGroupName => Str)

Each argument is described in detail in: L<Paws::CodeDeploy::DeleteDeploymentGroup>

Returns: a L<Paws::CodeDeploy::DeleteDeploymentGroupOutput> instance

  Deletes a deployment group.


=head2 DeregisterOnPremisesInstance(InstanceName => Str)

Each argument is described in detail in: L<Paws::CodeDeploy::DeregisterOnPremisesInstance>

Returns: nothing

  Deregisters an on-premises instance.


=head2 GetApplication(ApplicationName => Str)

Each argument is described in detail in: L<Paws::CodeDeploy::GetApplication>

Returns: a L<Paws::CodeDeploy::GetApplicationOutput> instance

  Gets information about an application.


=head2 GetApplicationRevision(ApplicationName => Str, Revision => L<Paws::CodeDeploy::RevisionLocation>)

Each argument is described in detail in: L<Paws::CodeDeploy::GetApplicationRevision>

Returns: a L<Paws::CodeDeploy::GetApplicationRevisionOutput> instance

  Gets information about an application revision.


=head2 GetDeployment(DeploymentId => Str)

Each argument is described in detail in: L<Paws::CodeDeploy::GetDeployment>

Returns: a L<Paws::CodeDeploy::GetDeploymentOutput> instance

  Gets information about a deployment.


=head2 GetDeploymentConfig(DeploymentConfigName => Str)

Each argument is described in detail in: L<Paws::CodeDeploy::GetDeploymentConfig>

Returns: a L<Paws::CodeDeploy::GetDeploymentConfigOutput> instance

  Gets information about a deployment configuration.


=head2 GetDeploymentGroup(ApplicationName => Str, DeploymentGroupName => Str)

Each argument is described in detail in: L<Paws::CodeDeploy::GetDeploymentGroup>

Returns: a L<Paws::CodeDeploy::GetDeploymentGroupOutput> instance

  Gets information about a deployment group.


=head2 GetDeploymentInstance(DeploymentId => Str, InstanceId => Str)

Each argument is described in detail in: L<Paws::CodeDeploy::GetDeploymentInstance>

Returns: a L<Paws::CodeDeploy::GetDeploymentInstanceOutput> instance

  Gets information about an instance as part of a deployment.


=head2 GetOnPremisesInstance(InstanceName => Str)

Each argument is described in detail in: L<Paws::CodeDeploy::GetOnPremisesInstance>

Returns: a L<Paws::CodeDeploy::GetOnPremisesInstanceOutput> instance

  Gets information about an on-premises instance.


=head2 ListApplicationRevisions(ApplicationName => Str, [Deployed => Str, NextToken => Str, S3Bucket => Str, S3KeyPrefix => Str, SortBy => Str, SortOrder => Str])

Each argument is described in detail in: L<Paws::CodeDeploy::ListApplicationRevisions>

Returns: a L<Paws::CodeDeploy::ListApplicationRevisionsOutput> instance

  Lists information about revisions for an application.


=head2 ListApplications([NextToken => Str])

Each argument is described in detail in: L<Paws::CodeDeploy::ListApplications>

Returns: a L<Paws::CodeDeploy::ListApplicationsOutput> instance

  Lists the applications registered with the applicable IAM user or AWS
account.


=head2 ListDeploymentConfigs([NextToken => Str])

Each argument is described in detail in: L<Paws::CodeDeploy::ListDeploymentConfigs>

Returns: a L<Paws::CodeDeploy::ListDeploymentConfigsOutput> instance

  Lists the deployment configurations with the applicable IAM user or AWS
account.


=head2 ListDeploymentGroups(ApplicationName => Str, [NextToken => Str])

Each argument is described in detail in: L<Paws::CodeDeploy::ListDeploymentGroups>

Returns: a L<Paws::CodeDeploy::ListDeploymentGroupsOutput> instance

  Lists the deployment groups for an application registered with the
applicable IAM user or AWS account.


=head2 ListDeploymentInstances(DeploymentId => Str, [InstanceStatusFilter => ArrayRef[Str|Undef], InstanceTypeFilter => ArrayRef[Str|Undef], NextToken => Str])

Each argument is described in detail in: L<Paws::CodeDeploy::ListDeploymentInstances>

Returns: a L<Paws::CodeDeploy::ListDeploymentInstancesOutput> instance

  Lists the instance for a deployment associated with the applicable IAM
user or AWS account.


=head2 ListDeployments([ApplicationName => Str, CreateTimeRange => L<Paws::CodeDeploy::TimeRange>, DeploymentGroupName => Str, IncludeOnlyStatuses => ArrayRef[Str|Undef], NextToken => Str])

Each argument is described in detail in: L<Paws::CodeDeploy::ListDeployments>

Returns: a L<Paws::CodeDeploy::ListDeploymentsOutput> instance

  Lists the deployments in a deployment group for an application
registered with the applicable IAM user or AWS account.


=head2 ListOnPremisesInstances([NextToken => Str, RegistrationStatus => Str, TagFilters => ArrayRef[L<Paws::CodeDeploy::TagFilter>]])

Each argument is described in detail in: L<Paws::CodeDeploy::ListOnPremisesInstances>

Returns: a L<Paws::CodeDeploy::ListOnPremisesInstancesOutput> instance

  Gets a list of names for one or more on-premises instances.

Unless otherwise specified, both registered and deregistered
on-premises instance names will be listed. To list only registered or
deregistered on-premises instance names, use the registration status
parameter.


=head2 RegisterApplicationRevision(ApplicationName => Str, Revision => L<Paws::CodeDeploy::RevisionLocation>, [Description => Str])

Each argument is described in detail in: L<Paws::CodeDeploy::RegisterApplicationRevision>

Returns: nothing

  Registers with AWS CodeDeploy a revision for the specified application.


=head2 RegisterOnPremisesInstance(InstanceName => Str, [IamSessionArn => Str, IamUserArn => Str])

Each argument is described in detail in: L<Paws::CodeDeploy::RegisterOnPremisesInstance>

Returns: nothing

  Registers an on-premises instance.

Only one IAM ARN (an IAM session ARN or IAM user ARN) is supported in
the request. You cannot use both.


=head2 RemoveTagsFromOnPremisesInstances(InstanceNames => ArrayRef[Str|Undef], Tags => ArrayRef[L<Paws::CodeDeploy::Tag>])

Each argument is described in detail in: L<Paws::CodeDeploy::RemoveTagsFromOnPremisesInstances>

Returns: nothing

  Removes one or more tags from one or more on-premises instances.


=head2 SkipWaitTimeForInstanceTermination([DeploymentId => Str])

Each argument is described in detail in: L<Paws::CodeDeploy::SkipWaitTimeForInstanceTermination>

Returns: nothing

  In a blue/green deployment, overrides any specified wait time and
starts terminating instances immediately after the traffic routing is
completed.


=head2 StopDeployment(DeploymentId => Str, [AutoRollbackEnabled => Bool])

Each argument is described in detail in: L<Paws::CodeDeploy::StopDeployment>

Returns: a L<Paws::CodeDeploy::StopDeploymentOutput> instance

  Attempts to stop an ongoing deployment.


=head2 UpdateApplication([ApplicationName => Str, NewApplicationName => Str])

Each argument is described in detail in: L<Paws::CodeDeploy::UpdateApplication>

Returns: nothing

  Changes the name of an application.


=head2 UpdateDeploymentGroup(ApplicationName => Str, CurrentDeploymentGroupName => Str, [AlarmConfiguration => L<Paws::CodeDeploy::AlarmConfiguration>, AutoRollbackConfiguration => L<Paws::CodeDeploy::AutoRollbackConfiguration>, AutoScalingGroups => ArrayRef[Str|Undef], BlueGreenDeploymentConfiguration => L<Paws::CodeDeploy::BlueGreenDeploymentConfiguration>, DeploymentConfigName => Str, DeploymentStyle => L<Paws::CodeDeploy::DeploymentStyle>, Ec2TagFilters => ArrayRef[L<Paws::CodeDeploy::EC2TagFilter>], LoadBalancerInfo => L<Paws::CodeDeploy::LoadBalancerInfo>, NewDeploymentGroupName => Str, OnPremisesInstanceTagFilters => ArrayRef[L<Paws::CodeDeploy::TagFilter>], ServiceRoleArn => Str, TriggerConfigurations => ArrayRef[L<Paws::CodeDeploy::TriggerConfig>]])

Each argument is described in detail in: L<Paws::CodeDeploy::UpdateDeploymentGroup>

Returns: a L<Paws::CodeDeploy::UpdateDeploymentGroupOutput> instance

  Changes information about a deployment group.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllApplicationRevisions(sub { },ApplicationName => Str, [Deployed => Str, NextToken => Str, S3Bucket => Str, S3KeyPrefix => Str, SortBy => Str, SortOrder => Str])

=head2 ListAllApplicationRevisions(ApplicationName => Str, [Deployed => Str, NextToken => Str, S3Bucket => Str, S3KeyPrefix => Str, SortBy => Str, SortOrder => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - revisions, passing the object as the first parameter, and the string 'revisions' as the second parameter 

If not, it will return a a L<Paws::CodeDeploy::ListApplicationRevisionsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllApplications(sub { },[NextToken => Str])

=head2 ListAllApplications([NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - applications, passing the object as the first parameter, and the string 'applications' as the second parameter 

If not, it will return a a L<Paws::CodeDeploy::ListApplicationsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDeploymentConfigs(sub { },[NextToken => Str])

=head2 ListAllDeploymentConfigs([NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - deploymentConfigsList, passing the object as the first parameter, and the string 'deploymentConfigsList' as the second parameter 

If not, it will return a a L<Paws::CodeDeploy::ListDeploymentConfigsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDeploymentGroups(sub { },ApplicationName => Str, [NextToken => Str])

=head2 ListAllDeploymentGroups(ApplicationName => Str, [NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - deploymentGroups, passing the object as the first parameter, and the string 'deploymentGroups' as the second parameter 

If not, it will return a a L<Paws::CodeDeploy::ListDeploymentGroupsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDeploymentInstances(sub { },DeploymentId => Str, [InstanceStatusFilter => ArrayRef[Str|Undef], InstanceTypeFilter => ArrayRef[Str|Undef], NextToken => Str])

=head2 ListAllDeploymentInstances(DeploymentId => Str, [InstanceStatusFilter => ArrayRef[Str|Undef], InstanceTypeFilter => ArrayRef[Str|Undef], NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - instancesList, passing the object as the first parameter, and the string 'instancesList' as the second parameter 

If not, it will return a a L<Paws::CodeDeploy::ListDeploymentInstancesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDeployments(sub { },[ApplicationName => Str, CreateTimeRange => L<Paws::CodeDeploy::TimeRange>, DeploymentGroupName => Str, IncludeOnlyStatuses => ArrayRef[Str|Undef], NextToken => Str])

=head2 ListAllDeployments([ApplicationName => Str, CreateTimeRange => L<Paws::CodeDeploy::TimeRange>, DeploymentGroupName => Str, IncludeOnlyStatuses => ArrayRef[Str|Undef], NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - deployments, passing the object as the first parameter, and the string 'deployments' as the second parameter 

If not, it will return a a L<Paws::CodeDeploy::ListDeploymentsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

