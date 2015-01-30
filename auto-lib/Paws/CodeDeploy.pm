
use Paws::API;


package Paws::CodeDeploy {
  use Moose;
  sub service { 'codedeploy' }
  sub version { '2014-10-06' }
  sub target_prefix { 'CodeDeploy_20141006' }
  sub json_version { "1.1" }

  with 'Paws::API::Caller', 'Paws::API::RegionalEndpointCaller', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller', 'Paws::Net::JsonResponse';

  
  sub BatchGetApplications {
    my $self = shift;
    return $self->caller->do_call('Paws::CodeDeploy::BatchGetApplications', @_);
  }
  sub BatchGetDeployments {
    my $self = shift;
    return $self->caller->do_call('Paws::CodeDeploy::BatchGetDeployments', @_);
  }
  sub CreateApplication {
    my $self = shift;
    return $self->caller->do_call('Paws::CodeDeploy::CreateApplication', @_);
  }
  sub CreateDeployment {
    my $self = shift;
    return $self->caller->do_call('Paws::CodeDeploy::CreateDeployment', @_);
  }
  sub CreateDeploymentConfig {
    my $self = shift;
    return $self->caller->do_call('Paws::CodeDeploy::CreateDeploymentConfig', @_);
  }
  sub CreateDeploymentGroup {
    my $self = shift;
    return $self->caller->do_call('Paws::CodeDeploy::CreateDeploymentGroup', @_);
  }
  sub DeleteApplication {
    my $self = shift;
    return $self->caller->do_call('Paws::CodeDeploy::DeleteApplication', @_);
  }
  sub DeleteDeploymentConfig {
    my $self = shift;
    return $self->caller->do_call('Paws::CodeDeploy::DeleteDeploymentConfig', @_);
  }
  sub DeleteDeploymentGroup {
    my $self = shift;
    return $self->caller->do_call('Paws::CodeDeploy::DeleteDeploymentGroup', @_);
  }
  sub GetApplication {
    my $self = shift;
    return $self->caller->do_call('Paws::CodeDeploy::GetApplication', @_);
  }
  sub GetApplicationRevision {
    my $self = shift;
    return $self->caller->do_call('Paws::CodeDeploy::GetApplicationRevision', @_);
  }
  sub GetDeployment {
    my $self = shift;
    return $self->caller->do_call('Paws::CodeDeploy::GetDeployment', @_);
  }
  sub GetDeploymentConfig {
    my $self = shift;
    return $self->caller->do_call('Paws::CodeDeploy::GetDeploymentConfig', @_);
  }
  sub GetDeploymentGroup {
    my $self = shift;
    return $self->caller->do_call('Paws::CodeDeploy::GetDeploymentGroup', @_);
  }
  sub GetDeploymentInstance {
    my $self = shift;
    return $self->caller->do_call('Paws::CodeDeploy::GetDeploymentInstance', @_);
  }
  sub ListApplicationRevisions {
    my $self = shift;
    return $self->caller->do_call('Paws::CodeDeploy::ListApplicationRevisions', @_);
  }
  sub ListApplications {
    my $self = shift;
    return $self->caller->do_call('Paws::CodeDeploy::ListApplications', @_);
  }
  sub ListDeploymentConfigs {
    my $self = shift;
    return $self->caller->do_call('Paws::CodeDeploy::ListDeploymentConfigs', @_);
  }
  sub ListDeploymentGroups {
    my $self = shift;
    return $self->caller->do_call('Paws::CodeDeploy::ListDeploymentGroups', @_);
  }
  sub ListDeploymentInstances {
    my $self = shift;
    return $self->caller->do_call('Paws::CodeDeploy::ListDeploymentInstances', @_);
  }
  sub ListDeployments {
    my $self = shift;
    return $self->caller->do_call('Paws::CodeDeploy::ListDeployments', @_);
  }
  sub RegisterApplicationRevision {
    my $self = shift;
    return $self->caller->do_call('Paws::CodeDeploy::RegisterApplicationRevision', @_);
  }
  sub StopDeployment {
    my $self = shift;
    return $self->caller->do_call('Paws::CodeDeploy::StopDeployment', @_);
  }
  sub UpdateApplication {
    my $self = shift;
    return $self->caller->do_call('Paws::CodeDeploy::UpdateApplication', @_);
  }
  sub UpdateDeploymentGroup {
    my $self = shift;
    return $self->caller->do_call('Paws::CodeDeploy::UpdateDeploymentGroup', @_);
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

I<Applications>, which are unique identifiers that AWS CodeDeploy uses
to ensure that the correct combinations of revisions, deployment
configurations, and deployment groups are being referenced during
deployments.

You can work with applications by calling CreateApplication,
DeleteApplication, GetApplication, ListApplications,
BatchGetApplications, and UpdateApplication to create, delete, and get
information about applications, and to change information about an
application, respectively.

=item *

I<Deployment configurations>, which are sets of deployment rules and
deployment success and failure conditions that AWS CodeDeploy uses
during deployments.

You can work with deployment configurations by calling
CreateDeploymentConfig, DeleteDeploymentConfig, GetDeploymentConfig,
and ListDeploymentConfigs to create, delete, and get information about
deployment configurations, respectively.

=item *

I<Deployment groups>, which represent groups of Amazon EC2 instances to
which application revisions can be deployed.

You can work with deployment groups by calling CreateDeploymentGroup,
DeleteDeploymentGroup, GetDeploymentGroup, ListDeploymentGroups, and
UpdateDeploymentGroup to create, delete, and get information about
single and multiple deployment groups, and to change information about
a deployment group, respectively.

=item *

I<Deployment instances> (also known simply as I<instances>), which
represent Amazon EC2 instances to which application revisions are
deployed. Deployment instances are identified by their Amazon EC2 tags
or Auto Scaling group names. Deployment instances belong to deployment
groups.

You can work with deployment instances by calling GetDeploymentInstance
and ListDeploymentInstances to get information about single and
multiple deployment instances, respectively.

=item *

I<Deployments>, which represent the process of deploying revisions to
deployment groups.

You can work with deployments by calling CreateDeployment,
GetDeployment, ListDeployments, BatchGetDeployments, and StopDeployment
to create and get information about deployments, and to stop a
deployment, respectively.

=item *

I<Application revisions> (also known simply as I<revisions>), which are
archive files that are stored in Amazon S3 buckets or GitHub
repositories. These revisions contain source content (such as source
code, web pages, executable files, any deployment scripts, and similar)
along with an Application Specification file (AppSpec file). (The
AppSpec file is unique to AWS CodeDeploy; it defines a series of
deployment actions that you want AWS CodeDeploy to execute.) An
application revision is uniquely identified by its Amazon S3 object key
and its ETag, version, or both. Application revisions are deployed to
deployment groups.

You can work with application revisions by calling
GetApplicationRevision, ListApplicationRevisions, and
RegisterApplicationRevision to get information about application
revisions and to inform AWS CodeDeploy about an application revision,
respectively.

=back










=head1 METHODS

=head2 BatchGetApplications()

  Arguments described in: L<Paws::CodeDeploy::BatchGetApplications>

  Returns: L<Paws::CodeDeploy::BatchGetApplicationsOutput>

  

Gets information about one or more applications.











=head2 BatchGetDeployments()

  Arguments described in: L<Paws::CodeDeploy::BatchGetDeployments>

  Returns: L<Paws::CodeDeploy::BatchGetDeploymentsOutput>

  

Gets information about one or more deployments.











=head2 CreateApplication()

  Arguments described in: L<Paws::CodeDeploy::CreateApplication>

  Returns: L<Paws::CodeDeploy::CreateApplicationOutput>

  

Creates a new application.











=head2 CreateDeployment()

  Arguments described in: L<Paws::CodeDeploy::CreateDeployment>

  Returns: L<Paws::CodeDeploy::CreateDeploymentOutput>

  

Deploys an application revision to the specified deployment group.











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

  

Gets information about an Amazon EC2 instance as part of a deployment.











=head2 ListApplicationRevisions()

  Arguments described in: L<Paws::CodeDeploy::ListApplicationRevisions>

  Returns: L<Paws::CodeDeploy::ListApplicationRevisionsOutput>

  

Lists information about revisions for an application.











=head2 ListApplications()

  Arguments described in: L<Paws::CodeDeploy::ListApplications>

  Returns: L<Paws::CodeDeploy::ListApplicationsOutput>

  

Lists the applications registered within the AWS user account.











=head2 ListDeploymentConfigs()

  Arguments described in: L<Paws::CodeDeploy::ListDeploymentConfigs>

  Returns: L<Paws::CodeDeploy::ListDeploymentConfigsOutput>

  

Lists the deployment configurations within the AWS user account.











=head2 ListDeploymentGroups()

  Arguments described in: L<Paws::CodeDeploy::ListDeploymentGroups>

  Returns: L<Paws::CodeDeploy::ListDeploymentGroupsOutput>

  

Lists the deployment groups for an application registered within the
AWS user account.











=head2 ListDeploymentInstances()

  Arguments described in: L<Paws::CodeDeploy::ListDeploymentInstances>

  Returns: L<Paws::CodeDeploy::ListDeploymentInstancesOutput>

  

Lists the Amazon EC2 instances for a deployment within the AWS user
account.











=head2 ListDeployments()

  Arguments described in: L<Paws::CodeDeploy::ListDeployments>

  Returns: L<Paws::CodeDeploy::ListDeploymentsOutput>

  

Lists the deployments under a deployment group for an application
registered within the AWS user account.











=head2 RegisterApplicationRevision()

  Arguments described in: L<Paws::CodeDeploy::RegisterApplicationRevision>

  Returns: nothing

  

Registers with AWS CodeDeploy a revision for the specified application.











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

