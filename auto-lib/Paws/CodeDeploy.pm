package Paws::CodeDeploy;
  use Moose;
  sub service { 'codedeploy' }
  sub signing_name { 'codedeploy' }
  sub version { '2014-10-06' }
  sub target_prefix { 'CodeDeploy_20141006' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
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
  sub BatchGetDeploymentTargets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeDeploy::BatchGetDeploymentTargets', @_);
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
  sub DeleteGitHubAccountToken {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeDeploy::DeleteGitHubAccountToken', @_);
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
  sub GetDeploymentTarget {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeDeploy::GetDeploymentTarget', @_);
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
  sub ListDeploymentTargets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeDeploy::ListDeploymentTargets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListGitHubAccountTokenNames {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeDeploy::ListGitHubAccountTokenNames', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListOnPremisesInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeDeploy::ListOnPremisesInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutLifecycleEventHookExecutionStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeDeploy::PutLifecycleEventHookExecutionStatus', @_);
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
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListApplicationRevisions(@_, nextToken => $next_result->nextToken);
        push @{ $result->revisions }, @{ $next_result->revisions };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'revisions') foreach (@{ $result->revisions });
        $result = $self->ListApplicationRevisions(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'revisions') foreach (@{ $result->revisions });
    }

    return undef
  }
  sub ListAllApplications {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListApplications(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListApplications(@_, nextToken => $next_result->nextToken);
        push @{ $result->applications }, @{ $next_result->applications };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'applications') foreach (@{ $result->applications });
        $result = $self->ListApplications(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'applications') foreach (@{ $result->applications });
    }

    return undef
  }
  sub ListAllDeploymentConfigs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDeploymentConfigs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListDeploymentConfigs(@_, nextToken => $next_result->nextToken);
        push @{ $result->deploymentConfigsList }, @{ $next_result->deploymentConfigsList };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'deploymentConfigsList') foreach (@{ $result->deploymentConfigsList });
        $result = $self->ListDeploymentConfigs(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'deploymentConfigsList') foreach (@{ $result->deploymentConfigsList });
    }

    return undef
  }
  sub ListAllDeploymentGroups {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDeploymentGroups(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListDeploymentGroups(@_, nextToken => $next_result->nextToken);
        push @{ $result->deploymentGroups }, @{ $next_result->deploymentGroups };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'deploymentGroups') foreach (@{ $result->deploymentGroups });
        $result = $self->ListDeploymentGroups(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'deploymentGroups') foreach (@{ $result->deploymentGroups });
    }

    return undef
  }
  sub ListAllDeploymentInstances {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDeploymentInstances(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListDeploymentInstances(@_, nextToken => $next_result->nextToken);
        push @{ $result->instancesList }, @{ $next_result->instancesList };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'instancesList') foreach (@{ $result->instancesList });
        $result = $self->ListDeploymentInstances(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'instancesList') foreach (@{ $result->instancesList });
    }

    return undef
  }
  sub ListAllDeployments {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDeployments(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListDeployments(@_, nextToken => $next_result->nextToken);
        push @{ $result->deployments }, @{ $next_result->deployments };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'deployments') foreach (@{ $result->deployments });
        $result = $self->ListDeployments(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'deployments') foreach (@{ $result->deployments });
    }

    return undef
  }
  sub ListAllDeploymentTargets {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDeploymentTargets(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListDeploymentTargets(@_, nextToken => $next_result->nextToken);
        push @{ $result->targetIds }, @{ $next_result->targetIds };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'targetIds') foreach (@{ $result->targetIds });
        $result = $self->ListDeploymentTargets(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'targetIds') foreach (@{ $result->targetIds });
    }

    return undef
  }
  sub ListAllGitHubAccountTokenNames {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListGitHubAccountTokenNames(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListGitHubAccountTokenNames(@_, nextToken => $next_result->nextToken);
        push @{ $result->tokenNameList }, @{ $next_result->tokenNameList };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'tokenNameList') foreach (@{ $result->tokenNameList });
        $result = $self->ListGitHubAccountTokenNames(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'tokenNameList') foreach (@{ $result->tokenNameList });
    }

    return undef
  }
  sub ListAllOnPremisesInstances {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListOnPremisesInstances(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListOnPremisesInstances(@_, nextToken => $next_result->nextToken);
        push @{ $result->instanceNames }, @{ $next_result->instanceNames };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'instanceNames') foreach (@{ $result->instanceNames });
        $result = $self->ListOnPremisesInstances(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'instanceNames') foreach (@{ $result->instanceNames });
    }

    return undef
  }


  sub operations { qw/AddTagsToOnPremisesInstances BatchGetApplicationRevisions BatchGetApplications BatchGetDeploymentGroups BatchGetDeploymentInstances BatchGetDeployments BatchGetDeploymentTargets BatchGetOnPremisesInstances ContinueDeployment CreateApplication CreateDeployment CreateDeploymentConfig CreateDeploymentGroup DeleteApplication DeleteDeploymentConfig DeleteDeploymentGroup DeleteGitHubAccountToken DeregisterOnPremisesInstance GetApplication GetApplicationRevision GetDeployment GetDeploymentConfig GetDeploymentGroup GetDeploymentInstance GetDeploymentTarget GetOnPremisesInstance ListApplicationRevisions ListApplications ListDeploymentConfigs ListDeploymentGroups ListDeploymentInstances ListDeployments ListDeploymentTargets ListGitHubAccountTokenNames ListOnPremisesInstances PutLifecycleEventHookExecutionStatus RegisterApplicationRevision RegisterOnPremisesInstance RemoveTagsFromOnPremisesInstances SkipWaitTimeForInstanceTermination StopDeployment UpdateApplication UpdateDeploymentGroup / }

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

AWS CodeDeploy is a deployment service that automates application
deployments to Amazon EC2 instances, on-premises instances running in
your own facility, serverless AWS Lambda functions, or applications in
an Amazon ECS service.

You can deploy a nearly unlimited variety of application content, such
as an updated Lambda function, updated applications in an Amazon ECS
service, code, web and configuration files, executables, packages,
scripts, multimedia files, and so on. AWS CodeDeploy can deploy
application content stored in Amazon S3 buckets, GitHub repositories,
or Bitbucket repositories. You do not need to make changes to your
existing code before you can use AWS CodeDeploy.

AWS CodeDeploy makes it easier for you to rapidly release new features,
helps you avoid downtime during application deployment, and handles the
complexity of updating your applications, without many of the risks
associated with error-prone manual deployments.

B<AWS CodeDeploy Components>

Use the information in this guide to help you work with the following
AWS CodeDeploy components:

=over

=item *

B<Application>: A name that uniquely identifies the application you
want to deploy. AWS CodeDeploy uses this name, which functions as a
container, to ensure the correct combination of revision, deployment
configuration, and deployment group are referenced during a deployment.

=item *

B<Deployment group>: A set of individual instances, CodeDeploy Lambda
deployment configuration settings, or an Amazon ECS service and network
details. A Lambda deployment group specifies how to route traffic to a
new version of a Lambda function. An Amazon ECS deployment group
specifies the service created in Amazon ECS to deploy, a load balancer,
and a listener to reroute production traffic to an updated
containerized application. An EC2/On-premises deployment group contains
individually tagged instances, Amazon EC2 instances in Amazon EC2 Auto
Scaling groups, or both. All deployment groups can specify optional
trigger, alarm, and rollback settings.

=item *

B<Deployment configuration>: A set of deployment rules and deployment
success and failure conditions used by AWS CodeDeploy during a
deployment.

=item *

B<Deployment>: The process and the components used when updating a
Lambda function, a containerized application in an Amazon ECS service,
or of installing content on one or more instances.

=item *

B<Application revisions>: For an AWS Lambda deployment, this is an
AppSpec file that specifies the Lambda function to be updated and one
or more functions to validate deployment lifecycle events. For an
Amazon ECS deployment, this is an AppSpec file that specifies the
Amazon ECS task definition, container, and port where production
traffic is rerouted. For an EC2/On-premises deployment, this is an
archive file that contains source contentE<mdash>source code, webpages,
executable files, and deployment scriptsE<mdash>along with an AppSpec
file. Revisions are stored in Amazon S3 buckets or GitHub repositories.
For Amazon S3, a revision is uniquely identified by its Amazon S3
object key and its ETag, version, or both. For GitHub, a revision is
uniquely identified by its commit ID.

=back

This guide also contains information to help you get details about the
instances in your deployments, to make on-premises instances available
for AWS CodeDeploy deployments, to get details about a Lambda function
deployment, and to get details about Amazon ECS service deployments.

B<AWS CodeDeploy Information Resources>

=over

=item *

AWS CodeDeploy User Guide
(http://docs.aws.amazon.com/codedeploy/latest/userguide)

=item *

AWS CodeDeploy API Reference Guide
(http://docs.aws.amazon.com/codedeploy/latest/APIReference/)

=item *

AWS CLI Reference for AWS CodeDeploy
(http://docs.aws.amazon.com/cli/latest/reference/deploy/index.html)

=item *

AWS CodeDeploy Developer Forum
(https://forums.aws.amazon.com/forum.jspa?forumID=179)

=back


For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06>


=head1 METHODS

=head2 AddTagsToOnPremisesInstances

=over

=item InstanceNames => ArrayRef[Str|Undef]

=item Tags => ArrayRef[L<Paws::CodeDeploy::Tag>]


=back

Each argument is described in detail in: L<Paws::CodeDeploy::AddTagsToOnPremisesInstances>

Returns: nothing

Adds tags to on-premises instances.


=head2 BatchGetApplicationRevisions

=over

=item ApplicationName => Str

=item Revisions => ArrayRef[L<Paws::CodeDeploy::RevisionLocation>]


=back

Each argument is described in detail in: L<Paws::CodeDeploy::BatchGetApplicationRevisions>

Returns: a L<Paws::CodeDeploy::BatchGetApplicationRevisionsOutput> instance

Gets information about one or more application revisions.


=head2 BatchGetApplications

=over

=item ApplicationNames => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::CodeDeploy::BatchGetApplications>

Returns: a L<Paws::CodeDeploy::BatchGetApplicationsOutput> instance

Gets information about one or more applications.


=head2 BatchGetDeploymentGroups

=over

=item ApplicationName => Str

=item DeploymentGroupNames => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::CodeDeploy::BatchGetDeploymentGroups>

Returns: a L<Paws::CodeDeploy::BatchGetDeploymentGroupsOutput> instance

Gets information about one or more deployment groups.


=head2 BatchGetDeploymentInstances

=over

=item DeploymentId => Str

=item InstanceIds => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::CodeDeploy::BatchGetDeploymentInstances>

Returns: a L<Paws::CodeDeploy::BatchGetDeploymentInstancesOutput> instance

This method works, but is deprecated. Use C<BatchGetDeploymentTargets>
instead.

Returns an array of instances associated with a deployment. This method
works with EC2/On-premises and AWS Lambda compute platforms. The newer
C<BatchGetDeploymentTargets> works with all compute platforms.


=head2 BatchGetDeployments

=over

=item DeploymentIds => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::CodeDeploy::BatchGetDeployments>

Returns: a L<Paws::CodeDeploy::BatchGetDeploymentsOutput> instance

Gets information about one or more deployments.


=head2 BatchGetDeploymentTargets

=over

=item [DeploymentId => Str]

=item [TargetIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::CodeDeploy::BatchGetDeploymentTargets>

Returns: a L<Paws::CodeDeploy::BatchGetDeploymentTargetsOutput> instance

Returns an array of targets associated with a deployment. This method
works with all compute types and should be used instead of the
deprecated C<BatchGetDeploymentInstances>.

The type of targets returned depends on the deployment's compute
platform:

=over

=item *

B<EC2/On-premises>: Information about EC2 instance targets.

=item *

B<AWS Lambda>: Information about Lambda functions targets.

=item *

B<Amazon ECS>: Information about Amazon ECS service targets.

=back



=head2 BatchGetOnPremisesInstances

=over

=item InstanceNames => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::CodeDeploy::BatchGetOnPremisesInstances>

Returns: a L<Paws::CodeDeploy::BatchGetOnPremisesInstancesOutput> instance

Gets information about one or more on-premises instances.


=head2 ContinueDeployment

=over

=item [DeploymentId => Str]

=item [DeploymentWaitType => Str]


=back

Each argument is described in detail in: L<Paws::CodeDeploy::ContinueDeployment>

Returns: nothing

For a blue/green deployment, starts the process of rerouting traffic
from instances in the original environment to instances in the
replacement environment without waiting for a specified wait time to
elapse. (Traffic rerouting, which is achieved by registering instances
in the replacement environment with the load balancer, can start as
soon as all instances have a status of Ready.)


=head2 CreateApplication

=over

=item ApplicationName => Str

=item [ComputePlatform => Str]


=back

Each argument is described in detail in: L<Paws::CodeDeploy::CreateApplication>

Returns: a L<Paws::CodeDeploy::CreateApplicationOutput> instance

Creates an application.


=head2 CreateDeployment

=over

=item ApplicationName => Str

=item [AutoRollbackConfiguration => L<Paws::CodeDeploy::AutoRollbackConfiguration>]

=item [DeploymentConfigName => Str]

=item [DeploymentGroupName => Str]

=item [Description => Str]

=item [FileExistsBehavior => Str]

=item [IgnoreApplicationStopFailures => Bool]

=item [Revision => L<Paws::CodeDeploy::RevisionLocation>]

=item [TargetInstances => L<Paws::CodeDeploy::TargetInstances>]

=item [UpdateOutdatedInstancesOnly => Bool]


=back

Each argument is described in detail in: L<Paws::CodeDeploy::CreateDeployment>

Returns: a L<Paws::CodeDeploy::CreateDeploymentOutput> instance

Deploys an application revision through the specified deployment group.


=head2 CreateDeploymentConfig

=over

=item DeploymentConfigName => Str

=item [ComputePlatform => Str]

=item [MinimumHealthyHosts => L<Paws::CodeDeploy::MinimumHealthyHosts>]

=item [TrafficRoutingConfig => L<Paws::CodeDeploy::TrafficRoutingConfig>]


=back

Each argument is described in detail in: L<Paws::CodeDeploy::CreateDeploymentConfig>

Returns: a L<Paws::CodeDeploy::CreateDeploymentConfigOutput> instance

Creates a deployment configuration.


=head2 CreateDeploymentGroup

=over

=item ApplicationName => Str

=item DeploymentGroupName => Str

=item ServiceRoleArn => Str

=item [AlarmConfiguration => L<Paws::CodeDeploy::AlarmConfiguration>]

=item [AutoRollbackConfiguration => L<Paws::CodeDeploy::AutoRollbackConfiguration>]

=item [AutoScalingGroups => ArrayRef[Str|Undef]]

=item [BlueGreenDeploymentConfiguration => L<Paws::CodeDeploy::BlueGreenDeploymentConfiguration>]

=item [DeploymentConfigName => Str]

=item [DeploymentStyle => L<Paws::CodeDeploy::DeploymentStyle>]

=item [Ec2TagFilters => ArrayRef[L<Paws::CodeDeploy::EC2TagFilter>]]

=item [Ec2TagSet => L<Paws::CodeDeploy::EC2TagSet>]

=item [EcsServices => ArrayRef[L<Paws::CodeDeploy::ECSService>]]

=item [LoadBalancerInfo => L<Paws::CodeDeploy::LoadBalancerInfo>]

=item [OnPremisesInstanceTagFilters => ArrayRef[L<Paws::CodeDeploy::TagFilter>]]

=item [OnPremisesTagSet => L<Paws::CodeDeploy::OnPremisesTagSet>]

=item [TriggerConfigurations => ArrayRef[L<Paws::CodeDeploy::TriggerConfig>]]


=back

Each argument is described in detail in: L<Paws::CodeDeploy::CreateDeploymentGroup>

Returns: a L<Paws::CodeDeploy::CreateDeploymentGroupOutput> instance

Creates a deployment group to which application revisions are deployed.


=head2 DeleteApplication

=over

=item ApplicationName => Str


=back

Each argument is described in detail in: L<Paws::CodeDeploy::DeleteApplication>

Returns: nothing

Deletes an application.


=head2 DeleteDeploymentConfig

=over

=item DeploymentConfigName => Str


=back

Each argument is described in detail in: L<Paws::CodeDeploy::DeleteDeploymentConfig>

Returns: nothing

Deletes a deployment configuration.

A deployment configuration cannot be deleted if it is currently in use.
Predefined configurations cannot be deleted.


=head2 DeleteDeploymentGroup

=over

=item ApplicationName => Str

=item DeploymentGroupName => Str


=back

Each argument is described in detail in: L<Paws::CodeDeploy::DeleteDeploymentGroup>

Returns: a L<Paws::CodeDeploy::DeleteDeploymentGroupOutput> instance

Deletes a deployment group.


=head2 DeleteGitHubAccountToken

=over

=item [TokenName => Str]


=back

Each argument is described in detail in: L<Paws::CodeDeploy::DeleteGitHubAccountToken>

Returns: a L<Paws::CodeDeploy::DeleteGitHubAccountTokenOutput> instance

Deletes a GitHub account connection.


=head2 DeregisterOnPremisesInstance

=over

=item InstanceName => Str


=back

Each argument is described in detail in: L<Paws::CodeDeploy::DeregisterOnPremisesInstance>

Returns: nothing

Deregisters an on-premises instance.


=head2 GetApplication

=over

=item ApplicationName => Str


=back

Each argument is described in detail in: L<Paws::CodeDeploy::GetApplication>

Returns: a L<Paws::CodeDeploy::GetApplicationOutput> instance

Gets information about an application.


=head2 GetApplicationRevision

=over

=item ApplicationName => Str

=item Revision => L<Paws::CodeDeploy::RevisionLocation>


=back

Each argument is described in detail in: L<Paws::CodeDeploy::GetApplicationRevision>

Returns: a L<Paws::CodeDeploy::GetApplicationRevisionOutput> instance

Gets information about an application revision.


=head2 GetDeployment

=over

=item DeploymentId => Str


=back

Each argument is described in detail in: L<Paws::CodeDeploy::GetDeployment>

Returns: a L<Paws::CodeDeploy::GetDeploymentOutput> instance

Gets information about a deployment.


=head2 GetDeploymentConfig

=over

=item DeploymentConfigName => Str


=back

Each argument is described in detail in: L<Paws::CodeDeploy::GetDeploymentConfig>

Returns: a L<Paws::CodeDeploy::GetDeploymentConfigOutput> instance

Gets information about a deployment configuration.


=head2 GetDeploymentGroup

=over

=item ApplicationName => Str

=item DeploymentGroupName => Str


=back

Each argument is described in detail in: L<Paws::CodeDeploy::GetDeploymentGroup>

Returns: a L<Paws::CodeDeploy::GetDeploymentGroupOutput> instance

Gets information about a deployment group.


=head2 GetDeploymentInstance

=over

=item DeploymentId => Str

=item InstanceId => Str


=back

Each argument is described in detail in: L<Paws::CodeDeploy::GetDeploymentInstance>

Returns: a L<Paws::CodeDeploy::GetDeploymentInstanceOutput> instance

Gets information about an instance as part of a deployment.


=head2 GetDeploymentTarget

=over

=item [DeploymentId => Str]

=item [TargetId => Str]


=back

Each argument is described in detail in: L<Paws::CodeDeploy::GetDeploymentTarget>

Returns: a L<Paws::CodeDeploy::GetDeploymentTargetOutput> instance

Returns information about a deployment target.


=head2 GetOnPremisesInstance

=over

=item InstanceName => Str


=back

Each argument is described in detail in: L<Paws::CodeDeploy::GetOnPremisesInstance>

Returns: a L<Paws::CodeDeploy::GetOnPremisesInstanceOutput> instance

Gets information about an on-premises instance.


=head2 ListApplicationRevisions

=over

=item ApplicationName => Str

=item [Deployed => Str]

=item [NextToken => Str]

=item [S3Bucket => Str]

=item [S3KeyPrefix => Str]

=item [SortBy => Str]

=item [SortOrder => Str]


=back

Each argument is described in detail in: L<Paws::CodeDeploy::ListApplicationRevisions>

Returns: a L<Paws::CodeDeploy::ListApplicationRevisionsOutput> instance

Lists information about revisions for an application.


=head2 ListApplications

=over

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CodeDeploy::ListApplications>

Returns: a L<Paws::CodeDeploy::ListApplicationsOutput> instance

Lists the applications registered with the IAM user or AWS account.


=head2 ListDeploymentConfigs

=over

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CodeDeploy::ListDeploymentConfigs>

Returns: a L<Paws::CodeDeploy::ListDeploymentConfigsOutput> instance

Lists the deployment configurations with the IAM user or AWS account.


=head2 ListDeploymentGroups

=over

=item ApplicationName => Str

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CodeDeploy::ListDeploymentGroups>

Returns: a L<Paws::CodeDeploy::ListDeploymentGroupsOutput> instance

Lists the deployment groups for an application registered with the IAM
user or AWS account.


=head2 ListDeploymentInstances

=over

=item DeploymentId => Str

=item [InstanceStatusFilter => ArrayRef[Str|Undef]]

=item [InstanceTypeFilter => ArrayRef[Str|Undef]]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CodeDeploy::ListDeploymentInstances>

Returns: a L<Paws::CodeDeploy::ListDeploymentInstancesOutput> instance

The newer BatchGetDeploymentTargets should be used instead because it
works with all compute types. C<ListDeploymentInstances> throws an
exception if it is used with a compute platform other than
EC2/On-premises or AWS Lambda.

Lists the instance for a deployment associated with the IAM user or AWS
account.


=head2 ListDeployments

=over

=item [ApplicationName => Str]

=item [CreateTimeRange => L<Paws::CodeDeploy::TimeRange>]

=item [DeploymentGroupName => Str]

=item [IncludeOnlyStatuses => ArrayRef[Str|Undef]]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CodeDeploy::ListDeployments>

Returns: a L<Paws::CodeDeploy::ListDeploymentsOutput> instance

Lists the deployments in a deployment group for an application
registered with the IAM user or AWS account.


=head2 ListDeploymentTargets

=over

=item [DeploymentId => Str]

=item [NextToken => Str]

=item [TargetFilters => L<Paws::CodeDeploy::TargetFilters>]


=back

Each argument is described in detail in: L<Paws::CodeDeploy::ListDeploymentTargets>

Returns: a L<Paws::CodeDeploy::ListDeploymentTargetsOutput> instance

Returns an array of target IDs that are associated a deployment.


=head2 ListGitHubAccountTokenNames

=over

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CodeDeploy::ListGitHubAccountTokenNames>

Returns: a L<Paws::CodeDeploy::ListGitHubAccountTokenNamesOutput> instance

Lists the names of stored connections to GitHub accounts.


=head2 ListOnPremisesInstances

=over

=item [NextToken => Str]

=item [RegistrationStatus => Str]

=item [TagFilters => ArrayRef[L<Paws::CodeDeploy::TagFilter>]]


=back

Each argument is described in detail in: L<Paws::CodeDeploy::ListOnPremisesInstances>

Returns: a L<Paws::CodeDeploy::ListOnPremisesInstancesOutput> instance

Gets a list of names for one or more on-premises instances.

Unless otherwise specified, both registered and deregistered
on-premises instance names are listed. To list only registered or
deregistered on-premises instance names, use the registration status
parameter.


=head2 PutLifecycleEventHookExecutionStatus

=over

=item [DeploymentId => Str]

=item [LifecycleEventHookExecutionId => Str]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::CodeDeploy::PutLifecycleEventHookExecutionStatus>

Returns: a L<Paws::CodeDeploy::PutLifecycleEventHookExecutionStatusOutput> instance

Sets the result of a Lambda validation function. The function validates
one or both lifecycle events (C<BeforeAllowTraffic> and
C<AfterAllowTraffic>) and returns C<Succeeded> or C<Failed>.


=head2 RegisterApplicationRevision

=over

=item ApplicationName => Str

=item Revision => L<Paws::CodeDeploy::RevisionLocation>

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::CodeDeploy::RegisterApplicationRevision>

Returns: nothing

Registers with AWS CodeDeploy a revision for the specified application.


=head2 RegisterOnPremisesInstance

=over

=item InstanceName => Str

=item [IamSessionArn => Str]

=item [IamUserArn => Str]


=back

Each argument is described in detail in: L<Paws::CodeDeploy::RegisterOnPremisesInstance>

Returns: nothing

Registers an on-premises instance.

Only one IAM ARN (an IAM session ARN or IAM user ARN) is supported in
the request. You cannot use both.


=head2 RemoveTagsFromOnPremisesInstances

=over

=item InstanceNames => ArrayRef[Str|Undef]

=item Tags => ArrayRef[L<Paws::CodeDeploy::Tag>]


=back

Each argument is described in detail in: L<Paws::CodeDeploy::RemoveTagsFromOnPremisesInstances>

Returns: nothing

Removes one or more tags from one or more on-premises instances.


=head2 SkipWaitTimeForInstanceTermination

=over

=item [DeploymentId => Str]


=back

Each argument is described in detail in: L<Paws::CodeDeploy::SkipWaitTimeForInstanceTermination>

Returns: nothing

In a blue/green deployment, overrides any specified wait time and
starts terminating instances immediately after the traffic routing is
complete.


=head2 StopDeployment

=over

=item DeploymentId => Str

=item [AutoRollbackEnabled => Bool]


=back

Each argument is described in detail in: L<Paws::CodeDeploy::StopDeployment>

Returns: a L<Paws::CodeDeploy::StopDeploymentOutput> instance

Attempts to stop an ongoing deployment.


=head2 UpdateApplication

=over

=item [ApplicationName => Str]

=item [NewApplicationName => Str]


=back

Each argument is described in detail in: L<Paws::CodeDeploy::UpdateApplication>

Returns: nothing

Changes the name of an application.


=head2 UpdateDeploymentGroup

=over

=item ApplicationName => Str

=item CurrentDeploymentGroupName => Str

=item [AlarmConfiguration => L<Paws::CodeDeploy::AlarmConfiguration>]

=item [AutoRollbackConfiguration => L<Paws::CodeDeploy::AutoRollbackConfiguration>]

=item [AutoScalingGroups => ArrayRef[Str|Undef]]

=item [BlueGreenDeploymentConfiguration => L<Paws::CodeDeploy::BlueGreenDeploymentConfiguration>]

=item [DeploymentConfigName => Str]

=item [DeploymentStyle => L<Paws::CodeDeploy::DeploymentStyle>]

=item [Ec2TagFilters => ArrayRef[L<Paws::CodeDeploy::EC2TagFilter>]]

=item [Ec2TagSet => L<Paws::CodeDeploy::EC2TagSet>]

=item [EcsServices => ArrayRef[L<Paws::CodeDeploy::ECSService>]]

=item [LoadBalancerInfo => L<Paws::CodeDeploy::LoadBalancerInfo>]

=item [NewDeploymentGroupName => Str]

=item [OnPremisesInstanceTagFilters => ArrayRef[L<Paws::CodeDeploy::TagFilter>]]

=item [OnPremisesTagSet => L<Paws::CodeDeploy::OnPremisesTagSet>]

=item [ServiceRoleArn => Str]

=item [TriggerConfigurations => ArrayRef[L<Paws::CodeDeploy::TriggerConfig>]]


=back

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


=head2 ListAllDeploymentTargets(sub { },[DeploymentId => Str, NextToken => Str, TargetFilters => L<Paws::CodeDeploy::TargetFilters>])

=head2 ListAllDeploymentTargets([DeploymentId => Str, NextToken => Str, TargetFilters => L<Paws::CodeDeploy::TargetFilters>])


If passed a sub as first parameter, it will call the sub for each element found in :

 - targetIds, passing the object as the first parameter, and the string 'targetIds' as the second parameter 

If not, it will return a a L<Paws::CodeDeploy::ListDeploymentTargetsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllGitHubAccountTokenNames(sub { },[NextToken => Str])

=head2 ListAllGitHubAccountTokenNames([NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - tokenNameList, passing the object as the first parameter, and the string 'tokenNameList' as the second parameter 

If not, it will return a a L<Paws::CodeDeploy::ListGitHubAccountTokenNamesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllOnPremisesInstances(sub { },[NextToken => Str, RegistrationStatus => Str, TagFilters => ArrayRef[L<Paws::CodeDeploy::TagFilter>]])

=head2 ListAllOnPremisesInstances([NextToken => Str, RegistrationStatus => Str, TagFilters => ArrayRef[L<Paws::CodeDeploy::TagFilter>]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - instanceNames, passing the object as the first parameter, and the string 'instanceNames' as the second parameter 

If not, it will return a a L<Paws::CodeDeploy::ListOnPremisesInstancesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

