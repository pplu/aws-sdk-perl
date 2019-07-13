package Paws::EMR::SpotProvisioningSpecification;
  use Moose;
  has BlockDurationMinutes => (is => 'ro', isa => 'Int');
  has TimeoutAction => (is => 'ro', isa => 'Str', required => 1);
  has TimeoutDurationMinutes => (is => 'ro', isa => 'Int', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMR::SpotProvisioningSpecification

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EMR::SpotProvisioningSpecification object:

  $service_obj->Method(Att1 => { BlockDurationMinutes => $value, ..., TimeoutDurationMinutes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EMR::SpotProvisioningSpecification object:

  $result = $service_obj->Method(...);
  $result->Att1->BlockDurationMinutes

=head1 DESCRIPTION

The launch specification for Spot instances in the instance fleet,
which determines the defined duration and provisioning timeout
behavior.

The instance fleet configuration is available only in Amazon EMR
versions 4.8.0 and later, excluding 5.0.x versions.

=head1 ATTRIBUTES


=head2 BlockDurationMinutes => Int

  The defined duration for Spot instances (also known as Spot blocks) in
minutes. When specified, the Spot instance does not terminate before
the defined duration expires, and defined duration pricing for Spot
instances applies. Valid values are 60, 120, 180, 240, 300, or 360. The
duration period starts as soon as a Spot instance receives its instance
ID. At the end of the duration, Amazon EC2 marks the Spot instance for
termination and provides a Spot instance termination notice, which
gives the instance a two-minute warning before it terminates.


=head2 B<REQUIRED> TimeoutAction => Str

  The action to take when C<TargetSpotCapacity> has not been fulfilled
when the C<TimeoutDurationMinutes> has expired; that is, when all Spot
instances could not be provisioned within the Spot provisioning
timeout. Valid values are C<TERMINATE_CLUSTER> and
C<SWITCH_TO_ON_DEMAND>. SWITCH_TO_ON_DEMAND specifies that if no Spot
instances are available, On-Demand Instances should be provisioned to
fulfill any remaining Spot capacity.


=head2 B<REQUIRED> TimeoutDurationMinutes => Int

  The spot provisioning timeout period in minutes. If Spot instances are
not provisioned within this time period, the C<TimeOutAction> is taken.
Minimum value is 5 and maximum value is 1440. The timeout applies only
during initial provisioning, when the cluster is first created.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

