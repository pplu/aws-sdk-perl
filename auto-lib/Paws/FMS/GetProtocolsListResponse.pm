
package Paws::FMS::GetProtocolsListResponse;
  use Moose;
  has ProtocolsList => (is => 'ro', isa => 'Paws::FMS::ProtocolsListData');
  has ProtocolsListArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::FMS::GetProtocolsListResponse

=head1 ATTRIBUTES


=head2 ProtocolsList => L<Paws::FMS::ProtocolsListData>

Information about the specified AWS Firewall Manager protocols list.


=head2 ProtocolsListArn => Str

The Amazon Resource Name (ARN) of the specified protocols list.


=head2 _request_id => Str


=cut

1;