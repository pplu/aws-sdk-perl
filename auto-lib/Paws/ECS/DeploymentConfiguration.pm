package Paws::ECS::DeploymentConfiguration;
  use Moose;
  has MaximumPercent => (is => 'ro', isa => 'Int', xmlname => 'maximumPercent', request_name => 'maximumPercent', traits => ['Unwrapped','NameInRequest']);
  has MinimumHealthyPercent => (is => 'ro', isa => 'Int', xmlname => 'minimumHealthyPercent', request_name => 'minimumHealthyPercent', traits => ['Unwrapped','NameInRequest']);
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

  The upper limit (as a percentage of the service's C<desiredCount>) of
the number of tasks that are allowed in the C<RUNNING> or C<PENDING>
state in a service during a deployment. The maximum number of tasks
during a deployment is the C<desiredCount> multiplied by the
C<maximumPercent>/100, rounded down to the nearest integer value.


=head2 MinimumHealthyPercent => Int

  The lower limit (as a percentage of the service's C<desiredCount>) of
the number of running tasks that must remain in the C<RUNNING> state in
a service during a deployment. The minimum healthy tasks during a
deployment is the C<desiredCount> multiplied by the
C<minimumHealthyPercent>/100, rounded up to the nearest integer value.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

