package Paws::ECS::Deployment;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str', request_name => 'createdAt', traits => ['NameInRequest']);
  has DesiredCount => (is => 'ro', isa => 'Int', request_name => 'desiredCount', traits => ['NameInRequest']);
  has Id => (is => 'ro', isa => 'Str', request_name => 'id', traits => ['NameInRequest']);
  has NetworkConfiguration => (is => 'ro', isa => 'Paws::ECS::NetworkConfiguration', request_name => 'networkConfiguration', traits => ['NameInRequest']);
  has PendingCount => (is => 'ro', isa => 'Int', request_name => 'pendingCount', traits => ['NameInRequest']);
  has RunningCount => (is => 'ro', isa => 'Int', request_name => 'runningCount', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);
  has TaskDefinition => (is => 'ro', isa => 'Str', request_name => 'taskDefinition', traits => ['NameInRequest']);
  has UpdatedAt => (is => 'ro', isa => 'Str', request_name => 'updatedAt', traits => ['NameInRequest']);
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


=head2 CreatedAt => Str

  The Unix timestamp for when the service was created.


=head2 DesiredCount => Int

  The most recent desired count of tasks that was specified for the
service to deploy or maintain.


=head2 Id => Str

  The ID of the deployment.


=head2 NetworkConfiguration => L<Paws::ECS::NetworkConfiguration>

  The VPC subnet and security group configuration for tasks that receive
their own Elastic Network Interface by using the C<awsvpc> networking
mode.


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


=head2 UpdatedAt => Str

  The Unix timestamp for when the service was last updated.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

