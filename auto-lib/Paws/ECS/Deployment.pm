package Paws::ECS::Deployment;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Paws::API::TimeStamp', xmlname => 'createdAt', request_name => 'createdAt', traits => ['Unwrapped','NameInRequest']);
  has DesiredCount => (is => 'ro', isa => 'Int', xmlname => 'desiredCount', request_name => 'desiredCount', traits => ['Unwrapped','NameInRequest']);
  has Id => (is => 'ro', isa => 'Str', xmlname => 'id', request_name => 'id', traits => ['Unwrapped','NameInRequest']);
  has PendingCount => (is => 'ro', isa => 'Int', xmlname => 'pendingCount', request_name => 'pendingCount', traits => ['Unwrapped','NameInRequest']);
  has RunningCount => (is => 'ro', isa => 'Int', xmlname => 'runningCount', request_name => 'runningCount', traits => ['Unwrapped','NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', xmlname => 'status', request_name => 'status', traits => ['Unwrapped','NameInRequest']);
  has TaskDefinition => (is => 'ro', isa => 'Str', xmlname => 'taskDefinition', request_name => 'taskDefinition', traits => ['Unwrapped','NameInRequest']);
  has UpdatedAt => (is => 'ro', isa => 'Paws::API::TimeStamp', xmlname => 'updatedAt', request_name => 'updatedAt', traits => ['Unwrapped','NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::Deployment

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ECS::Deployment object:

  $service_obj->Method(Att1 => { CreatedAt => $value, ..., UpdatedAt => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ECS::Deployment object:

  $result = $service_obj->Method(...);
  $result->Att1->CreatedAt

=head1 DESCRIPTION

The details of an Amazon ECS service deployment.

=head1 ATTRIBUTES


=head2 CreatedAt => L<Paws::API::TimeStamp>

  The Unix time in seconds and milliseconds when the service was created.


=head2 DesiredCount => Int

  The most recent desired count of tasks that was specified for the
service to deploy or maintain.


=head2 Id => Str

  The ID of the deployment.


=head2 PendingCount => Int

  The number of tasks in the deployment that are in the C<PENDING>
status.


=head2 RunningCount => Int

  The number of tasks in the deployment that are in the C<RUNNING>
status.


=head2 Status => Str

  The status of the deployment. Valid values are C<PRIMARY> (for the most
recent deployment), C<ACTIVE> (for previous deployments that still have
tasks running, but are being replaced with the C<PRIMARY> deployment),
and C<INACTIVE> (for deployments that have been completely replaced).


=head2 TaskDefinition => Str

  The most recent task definition that was specified for the service to
use.


=head2 UpdatedAt => L<Paws::API::TimeStamp>

  The Unix time in seconds and milliseconds when the service was last
updated.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

