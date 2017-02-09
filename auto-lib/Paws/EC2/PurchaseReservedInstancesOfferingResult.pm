
package Paws::EC2::PurchaseReservedInstancesOfferingResult;
  use Moose;
  has ReservedInstancesId => (is => 'ro', isa => 'Str', request_name => 'reservedInstancesId', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::PurchaseReservedInstancesOfferingResult

=head1 ATTRIBUTES


=head2 ReservedInstancesId => Str

The IDs of the purchased Reserved Instances.


=head2 _request_id => Str


=cut

