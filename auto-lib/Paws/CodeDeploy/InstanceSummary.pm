package Paws::CodeDeploy::InstanceSummary;
  use Moose;
  has DeploymentId => (is => 'ro', isa => 'Str', xmlname => 'deploymentId', request_name => 'deploymentId', traits => ['Unwrapped','NameInRequest']);
  has InstanceId => (is => 'ro', isa => 'Str', xmlname => 'instanceId', request_name => 'instanceId', traits => ['Unwrapped','NameInRequest']);
  has LastUpdatedAt => (is => 'ro', isa => 'Str', xmlname => 'lastUpdatedAt', request_name => 'lastUpdatedAt', traits => ['Unwrapped','NameInRequest']);
  has LifecycleEvents => (is => 'ro', isa => 'ArrayRef[Paws::CodeDeploy::LifecycleEvent]', xmlname => 'lifecycleEvents', request_name => 'lifecycleEvents', traits => ['Unwrapped','NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', xmlname => 'status', request_name => 'status', traits => ['Unwrapped','NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::InstanceSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeDeploy::InstanceSummary object:

  $service_obj->Method(Att1 => { DeploymentId => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeDeploy::InstanceSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->DeploymentId

=head1 DESCRIPTION

Information about an instance in a deployment.

=head1 ATTRIBUTES


=head2 DeploymentId => Str

  The deployment ID.


=head2 InstanceId => Str

  The instance ID.


=head2 LastUpdatedAt => Str

  A timestamp indicating when the instance information was last updated.


=head2 LifecycleEvents => ArrayRef[L<Paws::CodeDeploy::LifecycleEvent>]

  A list of lifecycle events for this instance.


=head2 Status => Str

  The deployment status for this instance:

=over

=item *

Pending: The deployment is pending for this instance.

=item *

In Progress: The deployment is in progress for this instance.

=item *

Succeeded: The deployment has succeeded for this instance.

=item *

Failed: The deployment has failed for this instance.

=item *

Skipped: The deployment has been skipped for this instance.

=item *

Unknown: The deployment status is unknown for this instance.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeDeploy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

