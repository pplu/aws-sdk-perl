
package Paws::EC2::ModifyReservedInstancesResult;
  use Moose;
  has ReservedInstancesModificationId => (is => 'ro', isa => 'Str', request_name => 'reservedInstancesModificationId', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ModifyReservedInstancesResult

=head1 ATTRIBUTES


=head2 ReservedInstancesModificationId => Str

The ID for the modification.


=head2 _request_id => Str


=cut

