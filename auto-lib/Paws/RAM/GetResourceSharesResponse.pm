
package Paws::RAM::GetResourceSharesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has ResourceShares => (is => 'ro', isa => 'ArrayRef[Paws::RAM::ResourceShare]', traits => ['NameInRequest'], request_name => 'resourceShares');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RAM::GetResourceSharesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 ResourceShares => ArrayRef[L<Paws::RAM::ResourceShare>]

Information about the resource shares.


=head2 _request_id => Str


=cut

