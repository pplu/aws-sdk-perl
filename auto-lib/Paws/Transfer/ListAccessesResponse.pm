
package Paws::Transfer::ListAccessesResponse;
  use Moose;
  has Accesses => (is => 'ro', isa => 'ArrayRef[Paws::Transfer::ListedAccess]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');
  has ServerId => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Transfer::ListAccessesResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Accesses => ArrayRef[L<Paws::Transfer::ListedAccess>]

Returns the accesses and their properties for the C<ServerId> value
that you specify.


=head2 NextToken => Str

When you can get additional results from the C<ListAccesses> call, a
C<NextToken> parameter is returned in the output. You can then pass in
a subsequent command to the C<NextToken> parameter to continue listing
additional accesses.


=head2 B<REQUIRED> ServerId => Str

A system-assigned unique identifier for a server that has users
assigned to it.


=head2 _request_id => Str


=cut

1;