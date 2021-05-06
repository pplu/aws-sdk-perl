
package Paws::RDS::PurchaseReservedDBInstancesOfferingResult;
  use Moose;
  has ReservedDBInstance => (is => 'ro', isa => 'Paws::RDS::ReservedDBInstance');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::PurchaseReservedDBInstancesOfferingResult

=head1 ATTRIBUTES


=head2 ReservedDBInstance => L<Paws::RDS::ReservedDBInstance>




=head2 _request_id => Str


=cut

