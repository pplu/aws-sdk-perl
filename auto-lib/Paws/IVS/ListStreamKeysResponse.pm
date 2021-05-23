
package Paws::IVS::ListStreamKeysResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has StreamKeys => (is => 'ro', isa => 'ArrayRef[Paws::IVS::StreamKeySummary]', traits => ['NameInRequest'], request_name => 'streamKeys', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IVS::ListStreamKeysResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If there are more stream keys than C<maxResults>, use C<nextToken> in
the request to get the next set.


=head2 B<REQUIRED> StreamKeys => ArrayRef[L<Paws::IVS::StreamKeySummary>]

List of stream keys.


=head2 _request_id => Str


=cut

