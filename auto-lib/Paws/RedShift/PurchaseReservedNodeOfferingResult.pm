
package Paws::RedShift::PurchaseReservedNodeOfferingResult;
  use Moose;
  has ReservedNode => (is => 'ro', isa => 'Paws::RedShift::ReservedNode');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::PurchaseReservedNodeOfferingResult

=head1 ATTRIBUTES


=head2 ReservedNode => L<Paws::RedShift::ReservedNode>




=head2 _request_id => Str


=cut

