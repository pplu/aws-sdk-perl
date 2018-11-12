package Paws::RedShift::ReservedNode;
  use Moose;
  has CurrencyCode => (is => 'ro', isa => 'Str');
  has Duration => (is => 'ro', isa => 'Int');
  has FixedPrice => (is => 'ro', isa => 'Num');
  has NodeCount => (is => 'ro', isa => 'Int');
  has NodeType => (is => 'ro', isa => 'Str');
  has OfferingType => (is => 'ro', isa => 'Str');
  has RecurringCharges => (is => 'ro', isa => 'ArrayRef[Paws::RedShift::RecurringCharge]', request_name => 'RecurringCharge', traits => ['NameInRequest']);
  has ReservedNodeId => (is => 'ro', isa => 'Str');
  has ReservedNodeOfferingId => (is => 'ro', isa => 'Str');
  has ReservedNodeOfferingType => (is => 'ro', isa => 'Str');
  has StartTime => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');
  has UsagePrice => (is => 'ro', isa => 'Num');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::ReservedNode

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RedShift::ReservedNode object:

  $service_obj->Method(Att1 => { CurrencyCode => $value, ..., UsagePrice => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RedShift::ReservedNode object:

  $result = $service_obj->Method(...);
  $result->Att1->CurrencyCode

=head1 DESCRIPTION

Describes a reserved node. You can call the
DescribeReservedNodeOfferings API to obtain the available reserved node
offerings.

=head1 ATTRIBUTES


=head2 CurrencyCode => Str

  The currency code for the reserved cluster.


=head2 Duration => Int

  The duration of the node reservation in seconds.


=head2 FixedPrice => Num

  The fixed cost Amazon Redshift charges you for this reserved node.


=head2 NodeCount => Int

  The number of reserved compute nodes.


=head2 NodeType => Str

  The node type of the reserved node.


=head2 OfferingType => Str

  The anticipated utilization of the reserved node, as defined in the
reserved node offering.


=head2 RecurringCharges => ArrayRef[L<Paws::RedShift::RecurringCharge>]

  The recurring charges for the reserved node.


=head2 ReservedNodeId => Str

  The unique identifier for the reservation.


=head2 ReservedNodeOfferingId => Str

  The identifier for the reserved node offering.


=head2 ReservedNodeOfferingType => Str

  


=head2 StartTime => Str

  The time the reservation started. You purchase a reserved node offering
for a duration. This is the start time of that duration.


=head2 State => Str

  The state of the reserved compute node.

Possible Values:

=over

=item *

pending-payment-This reserved node has recently been purchased, and the
sale has been approved, but payment has not yet been confirmed.

=item *

active-This reserved node is owned by the caller and is available for
use.

=item *

payment-failed-Payment failed for the purchase attempt.

=item *

retired-The reserved node is no longer available.

=item *

exchanging-The owner is exchanging the reserved node for another
reserved node.

=back



=head2 UsagePrice => Num

  The hourly rate Amazon Redshift charges you for this reserved node.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

