package Paws::AutoScaling::LoadBalancerState;
  use Moose;
  has LoadBalancerName => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::LoadBalancerState

=head1 DESCRIPTION

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

=head1 ATTRIBUTES

=head2 LoadBalancerName => Str

  The name of the load balancer.

=head2 State => Str

  The state of the load balancer.

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

C<Removing> - The instances are being deregistered from the load
balancer. If connection draining is enabled, Elastic Load Balancing
waits for in-flight requests to complete before deregistering the
instances.

=back



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

