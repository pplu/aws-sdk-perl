package Paws::ECS::Deployment;
  use Moose;
  has createdAt => (is => 'ro', isa => 'Str');
  has desiredCount => (is => 'ro', isa => 'Int');
  has id => (is => 'ro', isa => 'Str');
  has pendingCount => (is => 'ro', isa => 'Int');
  has runningCount => (is => 'ro', isa => 'Int');
  has status => (is => 'ro', isa => 'Str');
  has taskDefinition => (is => 'ro', isa => 'Str');
  has updatedAt => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::Deployment

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ECS::Deployment object:

  $service_obj->Method(Att1 => { createdAt => $value, ..., updatedAt => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ECS::Deployment object:

  $result = $service_obj->Method(...);
  $result->Att1->createdAt

=head1 ATTRIBUTES

=head2 createdAt => Str

  The Unix time in seconds and milliseconds when the service was created.

=head2 desiredCount => Int

  The most recent desired count of tasks that was specified for the
service to deploy or maintain.

=head2 id => Str

  The ID of the deployment.

=head2 pendingCount => Int

  The number of tasks in the deployment that are in the C<PENDING>
status.

=head2 runningCount => Int

  The number of tasks in the deployment that are in the C<RUNNING>
status.

=head2 status => Str

  The status of the deployment. Valid values are C<PRIMARY> (for the most
recent deployment), C<ACTIVE> (for previous deployments that still have
tasks running, but are being replaced with the C<PRIMARY> deployment),
and C<INACTIVE> (for deployments that have been completely replaced).

=head2 taskDefinition => Str

  The most recent task definition that was specified for the service to
use.

=head2 updatedAt => Str

  The Unix time in seconds and milliseconds when the service was last
updated.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

