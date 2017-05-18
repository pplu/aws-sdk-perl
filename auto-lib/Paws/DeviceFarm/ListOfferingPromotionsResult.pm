
package Paws::DeviceFarm::ListOfferingPromotionsResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has OfferingPromotions => (is => 'ro', isa => 'ArrayRef[Paws::DeviceFarm::OfferingPromotion]', traits => ['NameInRequest'], request_name => 'offeringPromotions' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::ListOfferingPromotionsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

An identifier to be used in the next call to this operation, to return
the next set of items in the list.


=head2 OfferingPromotions => ArrayRef[L<Paws::DeviceFarm::OfferingPromotion>]

Information about the offering promotions.


=head2 _request_id => Str


=cut

1;