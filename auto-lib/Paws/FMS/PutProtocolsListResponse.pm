
package Paws::FMS::PutProtocolsListResponse;
  use Moose;
  has ProtocolsList => (is => 'ro', isa => 'Paws::FMS::ProtocolsListData');
  has ProtocolsListArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::FMS::PutProtocolsListResponse

=head1 ATTRIBUTES


=head2 ProtocolsList => L<Paws::FMS::ProtocolsListData>

The details of the AWS Firewall Manager protocols list.


=head2 ProtocolsListArn => Str

The Amazon Resource Name (ARN) of the protocols list.


=head2 _request_id => Str


=cut

1;