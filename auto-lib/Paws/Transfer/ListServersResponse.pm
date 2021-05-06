
package Paws::Transfer::ListServersResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Servers => (is => 'ro', isa => 'ArrayRef[Paws::Transfer::ListedServer]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Transfer::ListServersResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

When you can get additional results from the C<ListServers> operation,
a C<NextToken> parameter is returned in the output. In a following
command, you can pass in the C<NextToken> parameter to continue listing
additional servers.


=head2 B<REQUIRED> Servers => ArrayRef[L<Paws::Transfer::ListedServer>]

An array of servers that were listed.


=head2 _request_id => Str


=cut

1;