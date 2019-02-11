package Paws::AutoScaling::LoadBalancerState;
  use Moose;
  has LoadBalancerName => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::LoadBalancerState

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AutoScaling::LoadBalancerState object:

  $service_obj->Method(Att1 => { LoadBalancerName => $value, ..., State => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AutoScaling::LoadBalancerState object:

  $result = $service_obj->Method(...);
  $result->Att1->LoadBalancerName

=head1 DESCRIPTION

Describes the state of a Classic Load Balancer.

If you specify a load balancer when creating the Auto Scaling group,
the state of the load balancer is C<InService>.

If you attach a load balancer to an existing Auto Scaling group, the
initial state is C<Adding>. The state transitions to C<Added> after all
instances in the group are registered with the load balancer. If
Elastic Load Balancing health checks are enabled for the load balancer,
the state transitions to C<InService> after at least one instance in
the group passes the health check. If EC2 health checks are enabled
instead, the load balancer remains in the C<Added> state.

=head1 ATTRIBUTES


=head2 LoadBalancerName => Str

  The name of the load balancer.


=head2 State => Str

  One of the following load balancer states:

=over

=item *

C<Adding> - The instances in the group are being registered with the
load balancer.

=item *

C<Added> - All instances in the group are registered with the load
balancer.

=item *

C<InService> - At least one instance in the group passed an ELB health
check.

=item *

C<Removing> - The instances in the group are being deregistered from
the load balancer. If connection draining is enabled, Elastic Load
Balancing waits for in-flight requests to complete before deregistering
the instances.

=item *

C<Removed> - All instances in the group are deregistered from the load
balancer.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

