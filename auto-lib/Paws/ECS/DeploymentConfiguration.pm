package Paws::ECS::DeploymentConfiguration;
  use Moose;
  has MaximumPercent => (is => 'ro', isa => 'Int', request_name => 'maximumPercent', traits => ['NameInRequest']);
  has MinimumHealthyPercent => (is => 'ro', isa => 'Int', request_name => 'minimumHealthyPercent', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::DeploymentConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ECS::DeploymentConfiguration object:

  $service_obj->Method(Att1 => { MaximumPercent => $value, ..., MinimumHealthyPercent => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ECS::DeploymentConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->MaximumPercent

=head1 DESCRIPTION

Optional deployment parameters that control how many tasks run during
the deployment and the ordering of stopping and starting tasks.

=head1 ATTRIBUTES


=head2 MaximumPercent => Int

  If a service is using the rolling update (C<ECS>) deployment type, the
B<maximum percent> parameter represents an upper limit on the number of
tasks in a service that are allowed in the C<RUNNING> or C<PENDING>
state during a deployment, as a percentage of the desired number of
tasks (rounded down to the nearest integer), and while any container
instances are in the C<DRAINING> state if the service contains tasks
using the EC2 launch type. This parameter enables you to define the
deployment batch size. For example, if your service has a desired
number of four tasks and a maximum percent value of 200%, the scheduler
may start four new tasks before stopping the four older tasks (provided
that the cluster resources required to do this are available). The
default value for maximum percent is 200%.

If a service is using the blue/green (C<CODE_DEPLOY>) deployment type
and tasks that use the EC2 launch type, the B<maximum percent> value is
set to the default value and is used to define the upper limit on the
number of the tasks in the service that remain in the C<RUNNING> state
while the container instances are in the C<DRAINING> state. If the
tasks in the service use the Fargate launch type, the maximum percent
value is not used, although it is returned when describing your
service.


=head2 MinimumHealthyPercent => Int

  If a service is using the rolling update (C<ECS>) deployment type, the
B<minimum healthy percent> represents a lower limit on the number of
tasks in a service that must remain in the C<RUNNING> state during a
deployment, as a percentage of the desired number of tasks (rounded up
to the nearest integer), and while any container instances are in the
C<DRAINING> state if the service contains tasks using the EC2 launch
type. This parameter enables you to deploy without using additional
cluster capacity. For example, if your service has a desired number of
four tasks and a minimum healthy percent of 50%, the scheduler may stop
two existing tasks to free up cluster capacity before starting two new
tasks. Tasks for services that I<do not> use a load balancer are
considered healthy if they are in the C<RUNNING> state; tasks for
services that I<do> use a load balancer are considered healthy if they
are in the C<RUNNING> state and they are reported as healthy by the
load balancer. The default value for minimum healthy percent is 100%.

If a service is using the blue/green (C<CODE_DEPLOY>) deployment type
and tasks that use the EC2 launch type, the B<minimum healthy percent>
value is set to the default value and is used to define the lower limit
on the number of the tasks in the service that remain in the C<RUNNING>
state while the container instances are in the C<DRAINING> state. If
the tasks in the service use the Fargate launch type, the minimum
healthy percent value is not used, although it is returned when
describing your service.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

