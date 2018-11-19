package Paws::AutoScaling::LoadBalancerTargetGroupState;
  use Moose;
  has LoadBalancerTargetGroupARN => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::LoadBalancerTargetGroupState

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AutoScaling::LoadBalancerTargetGroupState object:

  $service_obj->Method(Att1 => { LoadBalancerTargetGroupARN => $value, ..., State => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AutoScaling::LoadBalancerTargetGroupState object:

  $result = $service_obj->Method(...);
  $result->Att1->LoadBalancerTargetGroupARN

=head1 DESCRIPTION

Describes the state of a target group.

If you attach a target group to an existing Auto Scaling group, the
initial state is C<Adding>. The state transitions to C<Added> after all
Auto Scaling instances are registered with the target group. If Elastic
Load Balancing health checks are enabled, the state transitions to
C<InService> after at least one Auto Scaling instance passes the health
check. If EC2 health checks are enabled instead, the target group
remains in the C<Added> state.

=head1 ATTRIBUTES


=head2 LoadBalancerTargetGroupARN => Str

  The Amazon Resource Name (ARN) of the target group.


=head2 State => Str

  The state of the target group.

=over

=item *

C<Adding> - The Auto Scaling instances are being registered with the
target group.

=item *

C<Added> - All Auto Scaling instances are registered with the target
group.

=item *

C<InService> - At least one Auto Scaling instance passed an ELB health
check.

=item *

C<Removing> - The Auto Scaling instances are being deregistered from
the target group. If connection draining is enabled, Elastic Load
Balancing waits for in-flight requests to complete before deregistering
the instances.

=item *

C<Removed> - All Auto Scaling instances are deregistered from the
target group.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

