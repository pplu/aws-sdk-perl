
package Paws::CloudHSM::ListLunaClientsResponse;
  use Moose;
  has ClientList => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudHSM::ListLunaClientsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClientList => ArrayRef[Str|Undef]

The list of clients.


=head2 NextToken => Str

If not null, more results are available. Pass this to
C<ListLunaClients> to retrieve the next set of items.


=head2 _request_id => Str


=cut

1;