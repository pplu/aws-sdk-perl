
package Paws::EC2::MoveAddressToVpcResult;
  use Moose;
  has AllocationId => (is => 'ro', isa => 'Str', request_name => 'allocationId', traits => ['NameInRequest',]);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::MoveAddressToVpcResult

=head1 ATTRIBUTES


=head2 AllocationId => Str

The allocation ID for the Elastic IP address.


=head2 Status => Str

The status of the move of the IP address.

Valid values are: C<"MoveInProgress">, C<"InVpc">, C<"InClassic">
=head2 _request_id => Str


=cut

