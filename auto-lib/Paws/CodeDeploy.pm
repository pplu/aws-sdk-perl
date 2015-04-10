
use Paws::API;


package Paws::CodeDeploy {
  use Moose;
  sub service { 'codedeploy' }
  sub version { '2014-10-06' }
  sub target_prefix { 'CodeDeploy_20141006' }
  sub json_version { "1.1" }

  with 'Paws::API::Caller', 'Paws::API::RegionalEndpointCaller', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller', 'Paws::Net::JsonResponse';

  
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
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy - Perl Interface to AWS AWS CodeDeploy

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('...')->new;
  my $res = $obj->Method(Arg1 => $val1, Arg2 => $val2);

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

=head2 AddTagsToOnPremisesInstances()

  Arguments described in: L<Paws::CodeDeploy::AddTagsToOnPremisesInstances>

  Returns: nothing

  

Adds tags to on-premises instances.











=head2 BatchGetApplications()

  Arguments described in: L<Paws::CodeDeploy::BatchGetApplications>

  Returns: L<Paws::CodeDeploy::BatchGetApplicationsOutput>

  

Gets information about one or more applications.











=head2 BatchGetDeployments()

  Arguments described in: L<Paws::CodeDeploy::BatchGetDeployments>

  Returns: L<Paws::CodeDeploy::BatchGetDeploymentsOutput>

  

Gets information about one or more deployments.











=head2 BatchGetOnPremisesInstances()

  Arguments described in: L<Paws::CodeDeploy::BatchGetOnPremisesInstances>

  Returns: L<Paws::CodeDeploy::BatchGetOnPremisesInstancesOutput>

  

Gets information about one or more on-premises instances.











=head2 CreateApplication()

  Arguments described in: L<Paws::CodeDeploy::CreateApplication>

  Returns: L<Paws::CodeDeploy::CreateApplicationOutput>

  

Creates a new application.











=head2 CreateDeployment()

  Arguments described in: L<Paws::CodeDeploy::CreateDeployment>

  Returns: L<Paws::CodeDeploy::CreateDeploymentOutput>

  

Deploys an application revision through the specified deployment group.











=head2 CreateDeploymentConfig()

  Arguments described in: L<Paws::CodeDeploy::CreateDeploymentConfig>

  Returns: L<Paws::CodeDeploy::CreateDeploymentConfigOutput>

  

Creates a new deployment configuration.











=head2 CreateDeploymentGroup()

  Arguments described in: L<Paws::CodeDeploy::CreateDeploymentGroup>

  Returns: L<Paws::CodeDeploy::CreateDeploymentGroupOutput>

  

Creates a new deployment group for application revisions to be deployed
to.











=head2 DeleteApplication()

  Arguments described in: L<Paws::CodeDeploy::DeleteApplication>

  Returns: nothing

  

Deletes an application.











=head2 DeleteDeploymentConfig()

  Arguments described in: L<Paws::CodeDeploy::DeleteDeploymentConfig>

  Returns: nothing

  

Deletes a deployment configuration.

A deployment configuration cannot be deleted if it is currently in use.
Also, predefined configurations cannot be deleted.











=head2 DeleteDeploymentGroup()

  Arguments described in: L<Paws::CodeDeploy::DeleteDeploymentGroup>

  Returns: L<Paws::CodeDeploy::DeleteDeploymentGroupOutput>

  

Deletes a deployment group.











=head2 DeregisterOnPremisesInstance()

  Arguments described in: L<Paws::CodeDeploy::DeregisterOnPremisesInstance>

  Returns: nothing

  

Deregisters an on-premises instance.











=head2 GetApplication()

  Arguments described in: L<Paws::CodeDeploy::GetApplication>

  Returns: L<Paws::CodeDeploy::GetApplicationOutput>

  

Gets information about an application.











=head2 GetApplicationRevision()

  Arguments described in: L<Paws::CodeDeploy::GetApplicationRevision>

  Returns: L<Paws::CodeDeploy::GetApplicationRevisionOutput>

  

Gets information about an application revision.











=head2 GetDeployment()

  Arguments described in: L<Paws::CodeDeploy::GetDeployment>

  Returns: L<Paws::CodeDeploy::GetDeploymentOutput>

  

Gets information about a deployment.











=head2 GetDeploymentConfig()

  Arguments described in: L<Paws::CodeDeploy::GetDeploymentConfig>

  Returns: L<Paws::CodeDeploy::GetDeploymentConfigOutput>

  

Gets information about a deployment configuration.











=head2 GetDeploymentGroup()

  Arguments described in: L<Paws::CodeDeploy::GetDeploymentGroup>

  Returns: L<Paws::CodeDeploy::GetDeploymentGroupOutput>

  

Gets information about a deployment group.











=head2 GetDeploymentInstance()

  Arguments described in: L<Paws::CodeDeploy::GetDeploymentInstance>

  Returns: L<Paws::CodeDeploy::GetDeploymentInstanceOutput>

  

Gets information about an instance as part of a deployment.











=head2 GetOnPremisesInstance()

  Arguments described in: L<Paws::CodeDeploy::GetOnPremisesInstance>

  Returns: L<Paws::CodeDeploy::GetOnPremisesInstanceOutput>

  

Gets information about an on-premises instance.











=head2 ListApplicationRevisions()

  Arguments described in: L<Paws::CodeDeploy::ListApplicationRevisions>

  Returns: L<Paws::CodeDeploy::ListApplicationRevisionsOutput>

  

Lists information about revisions for an application.











=head2 ListApplications()

  Arguments described in: L<Paws::CodeDeploy::ListApplications>

  Returns: L<Paws::CodeDeploy::ListApplicationsOutput>

  

Lists the applications registered with the applicable IAM user or AWS
account.











=head2 ListDeploymentConfigs()

  Arguments described in: L<Paws::CodeDeploy::ListDeploymentConfigs>

  Returns: L<Paws::CodeDeploy::ListDeploymentConfigsOutput>

  

Lists the deployment configurations with the applicable IAM user or AWS
account.











=head2 ListDeploymentGroups()

  Arguments described in: L<Paws::CodeDeploy::ListDeploymentGroups>

  Returns: L<Paws::CodeDeploy::ListDeploymentGroupsOutput>

  

Lists the deployment groups for an application registered with the
applicable IAM user or AWS account.











=head2 ListDeploymentInstances()

  Arguments described in: L<Paws::CodeDeploy::ListDeploymentInstances>

  Returns: L<Paws::CodeDeploy::ListDeploymentInstancesOutput>

  

Lists the instances for a deployment associated with the applicable IAM
user or AWS account.











=head2 ListDeployments()

  Arguments described in: L<Paws::CodeDeploy::ListDeployments>

  Returns: L<Paws::CodeDeploy::ListDeploymentsOutput>

  

Lists the deployments within a deployment group for an application
registered with the applicable IAM user or AWS account.











=head2 ListOnPremisesInstances()

  Arguments described in: L<Paws::CodeDeploy::ListOnPremisesInstances>

  Returns: L<Paws::CodeDeploy::ListOnPremisesInstancesOutput>

  

Gets a list of one or more on-premises instance names.

Unless otherwise specified, both registered and deregistered
on-premises instance names will be listed. To list only registered or
deregistered on-premises instance names, use the registration status
parameter.











=head2 RegisterApplicationRevision()

  Arguments described in: L<Paws::CodeDeploy::RegisterApplicationRevision>

  Returns: nothing

  

Registers with AWS CodeDeploy a revision for the specified application.











=head2 RegisterOnPremisesInstance()

  Arguments described in: L<Paws::CodeDeploy::RegisterOnPremisesInstance>

  Returns: nothing

  

Registers an on-premises instance.











=head2 RemoveTagsFromOnPremisesInstances()

  Arguments described in: L<Paws::CodeDeploy::RemoveTagsFromOnPremisesInstances>

  Returns: nothing

  

Removes one or more tags from one or more on-premises instances.











=head2 StopDeployment()

  Arguments described in: L<Paws::CodeDeploy::StopDeployment>

  Returns: L<Paws::CodeDeploy::StopDeploymentOutput>

  

Attempts to stop an ongoing deployment.











=head2 UpdateApplication()

  Arguments described in: L<Paws::CodeDeploy::UpdateApplication>

  Returns: nothing

  

Changes an existing application's name.











=head2 UpdateDeploymentGroup()

  Arguments described in: L<Paws::CodeDeploy::UpdateDeploymentGroup>

  Returns: L<Paws::CodeDeploy::UpdateDeploymentGroupOutput>

  

Changes information about an existing deployment group.











=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

