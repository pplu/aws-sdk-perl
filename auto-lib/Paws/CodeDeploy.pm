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
  sub BatchGetApplications {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeDeploy::BatchGetApplications', @_);
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

  sub operations { qw/AddTagsToOnPremisesInstances BatchGetApplications BatchGetDeployments BatchGetOnPremisesInstances CreateApplication CreateDeployment CreateDeploymentConfig CreateDeploymentGroup DeleteApplication DeleteDeploymentConfig DeleteDeploymentGroup DeregisterOnPremisesInstance GetApplication GetApplicationRevision GetDeployment GetDeploymentConfig GetDeploymentGroup GetDeploymentInstance GetOnPremisesInstance ListApplicationRevisions ListApplications ListDeploymentConfigs ListDeploymentGroups ListDeploymentInstances ListDeployments ListOnPremisesInstances RegisterApplicationRevision RegisterOnPremisesInstance RemoveTagsFromOnPremisesInstances StopDeployment UpdateApplication UpdateDeploymentGroup / }

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

AWS CodeDeploy B<Overview>

This is the AWS CodeDeploy API Reference. This guide provides
descriptions of the AWS CodeDeploy APIs. For additional information,
see the AWS CodeDeploy User Guide.

B<Using the APIs>

You can use the AWS CodeDeploy APIs to work with the following items:

=over

=item *

Applications are unique identifiers that AWS CodeDeploy uses to ensure
that the correct combinations of revisions, deployment configurations,
and deployment groups are being referenced during deployments.

You can use the AWS CodeDeploy APIs to create, delete, get, list, and
update applications.

=item *

Deployment configurations are sets of deployment rules and deployment
success and failure conditions that AWS CodeDeploy uses during
deployments.

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

You can use the AWS CodeDeploy APIs to get and list instances.

=item *

Deployments represent the process of deploying revisions to instances.

You can use the AWS CodeDeploy APIs to create, get, list, and stop
deployments.

=item *

Application revisions are archive files that are stored in Amazon S3
buckets or GitHub repositories. These revisions contain source content
(such as source code, web pages, executable files, any deployment
scripts, and similar) along with an Application Specification file
(AppSpec file). (The AppSpec file is unique to AWS CodeDeploy; it
defines a series of deployment actions that you want AWS CodeDeploy to
execute.) An application revision is uniquely identified by its Amazon
S3 object key and its ETag, version, or both (for application revisions
that are stored in Amazon S3 buckets) or by its repository name and
commit ID (for applications revisions that are stored in GitHub
repositories). Application revisions are deployed through deployment
groups.

You can use the AWS CodeDeploy APIs to get, list, and register
application revisions.

=back


=head1 METHODS

=head2 AddTagsToOnPremisesInstances(InstanceNames => ArrayRef[Str], Tags => ArrayRef[L<Paws::CodeDeploy::Tag>])

Each argument is described in detail in: L<Paws::CodeDeploy::AddTagsToOnPremisesInstances>

Returns: nothing

  Adds tags to on-premises instances.


=head2 BatchGetApplications([ApplicationNames => ArrayRef[Str]])

Each argument is described in detail in: L<Paws::CodeDeploy::BatchGetApplications>

Returns: a L<Paws::CodeDeploy::BatchGetApplicationsOutput> instance

  Gets information about one or more applications.


=head2 BatchGetDeployments([DeploymentIds => ArrayRef[Str]])

Each argument is described in detail in: L<Paws::CodeDeploy::BatchGetDeployments>

Returns: a L<Paws::CodeDeploy::BatchGetDeploymentsOutput> instance

  Gets information about one or more deployments.


=head2 BatchGetOnPremisesInstances([InstanceNames => ArrayRef[Str]])

Each argument is described in detail in: L<Paws::CodeDeploy::BatchGetOnPremisesInstances>

Returns: a L<Paws::CodeDeploy::BatchGetOnPremisesInstancesOutput> instance

  Gets information about one or more on-premises instances.


=head2 CreateApplication(ApplicationName => Str)

Each argument is described in detail in: L<Paws::CodeDeploy::CreateApplication>

Returns: a L<Paws::CodeDeploy::CreateApplicationOutput> instance

  Creates a new application.


=head2 CreateDeployment(ApplicationName => Str, [DeploymentConfigName => Str, DeploymentGroupName => Str, Description => Str, IgnoreApplicationStopFailures => Bool, Revision => L<Paws::CodeDeploy::RevisionLocation>])

Each argument is described in detail in: L<Paws::CodeDeploy::CreateDeployment>

Returns: a L<Paws::CodeDeploy::CreateDeploymentOutput> instance

  Deploys an application revision through the specified deployment group.


=head2 CreateDeploymentConfig(DeploymentConfigName => Str, [MinimumHealthyHosts => L<Paws::CodeDeploy::MinimumHealthyHosts>])

Each argument is described in detail in: L<Paws::CodeDeploy::CreateDeploymentConfig>

Returns: a L<Paws::CodeDeploy::CreateDeploymentConfigOutput> instance

  Creates a new deployment configuration.


=head2 CreateDeploymentGroup(ApplicationName => Str, DeploymentGroupName => Str, ServiceRoleArn => Str, [AutoScalingGroups => ArrayRef[Str], DeploymentConfigName => Str, Ec2TagFilters => ArrayRef[L<Paws::CodeDeploy::EC2TagFilter>], OnPremisesInstanceTagFilters => ArrayRef[L<Paws::CodeDeploy::TagFilter>]])

Each argument is described in detail in: L<Paws::CodeDeploy::CreateDeploymentGroup>

Returns: a L<Paws::CodeDeploy::CreateDeploymentGroupOutput> instance

  Creates a new deployment group for application revisions to be deployed
to.


=head2 DeleteApplication(ApplicationName => Str)

Each argument is described in detail in: L<Paws::CodeDeploy::DeleteApplication>

Returns: nothing

  Deletes an application.


=head2 DeleteDeploymentConfig(DeploymentConfigName => Str)

Each argument is described in detail in: L<Paws::CodeDeploy::DeleteDeploymentConfig>

Returns: nothing

  Deletes a deployment configuration.

A deployment configuration cannot be deleted if it is currently in use.
Also, predefined configurations cannot be deleted.


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


=head2 ListDeploymentInstances(DeploymentId => Str, [InstanceStatusFilter => ArrayRef[Str], NextToken => Str])

Each argument is described in detail in: L<Paws::CodeDeploy::ListDeploymentInstances>

Returns: a L<Paws::CodeDeploy::ListDeploymentInstancesOutput> instance

  Lists the instances for a deployment associated with the applicable IAM
user or AWS account.


=head2 ListDeployments([ApplicationName => Str, CreateTimeRange => L<Paws::CodeDeploy::TimeRange>, DeploymentGroupName => Str, IncludeOnlyStatuses => ArrayRef[Str], NextToken => Str])

Each argument is described in detail in: L<Paws::CodeDeploy::ListDeployments>

Returns: a L<Paws::CodeDeploy::ListDeploymentsOutput> instance

  Lists the deployments within a deployment group for an application
registered with the applicable IAM user or AWS account.


=head2 ListOnPremisesInstances([NextToken => Str, RegistrationStatus => Str, TagFilters => ArrayRef[L<Paws::CodeDeploy::TagFilter>]])

Each argument is described in detail in: L<Paws::CodeDeploy::ListOnPremisesInstances>

Returns: a L<Paws::CodeDeploy::ListOnPremisesInstancesOutput> instance

  Gets a list of one or more on-premises instance names.

Unless otherwise specified, both registered and deregistered
on-premises instance names will be listed. To list only registered or
deregistered on-premises instance names, use the registration status
parameter.


=head2 RegisterApplicationRevision(ApplicationName => Str, Revision => L<Paws::CodeDeploy::RevisionLocation>, [Description => Str])

Each argument is described in detail in: L<Paws::CodeDeploy::RegisterApplicationRevision>

Returns: nothing

  Registers with AWS CodeDeploy a revision for the specified application.


=head2 RegisterOnPremisesInstance(IamUserArn => Str, InstanceName => Str)

Each argument is described in detail in: L<Paws::CodeDeploy::RegisterOnPremisesInstance>

Returns: nothing

  Registers an on-premises instance.


=head2 RemoveTagsFromOnPremisesInstances(InstanceNames => ArrayRef[Str], Tags => ArrayRef[L<Paws::CodeDeploy::Tag>])

Each argument is described in detail in: L<Paws::CodeDeploy::RemoveTagsFromOnPremisesInstances>

Returns: nothing

  Removes one or more tags from one or more on-premises instances.


=head2 StopDeployment(DeploymentId => Str)

Each argument is described in detail in: L<Paws::CodeDeploy::StopDeployment>

Returns: a L<Paws::CodeDeploy::StopDeploymentOutput> instance

  Attempts to stop an ongoing deployment.


=head2 UpdateApplication([ApplicationName => Str, NewApplicationName => Str])

Each argument is described in detail in: L<Paws::CodeDeploy::UpdateApplication>

Returns: nothing

  Changes an existing application's name.


=head2 UpdateDeploymentGroup(ApplicationName => Str, CurrentDeploymentGroupName => Str, [AutoScalingGroups => ArrayRef[Str], DeploymentConfigName => Str, Ec2TagFilters => ArrayRef[L<Paws::CodeDeploy::EC2TagFilter>], NewDeploymentGroupName => Str, OnPremisesInstanceTagFilters => ArrayRef[L<Paws::CodeDeploy::TagFilter>], ServiceRoleArn => Str])

Each argument is described in detail in: L<Paws::CodeDeploy::UpdateDeploymentGroup>

Returns: a L<Paws::CodeDeploy::UpdateDeploymentGroupOutput> instance

  Changes information about an existing deployment group.


=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

