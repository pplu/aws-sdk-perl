
package Paws::IVS::ListStreamsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Streams => (is => 'ro', isa => 'ArrayRef[Paws::IVS::StreamSummary]', traits => ['NameInRequest'], request_name => 'streams', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IVS::ListStreamsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If there are more streams than C<maxResults>, use C<nextToken> in the
request to get the next set.


=head2 B<REQUIRED> Streams => ArrayRef[L<Paws::IVS::StreamSummary>]

List of streams.


=head2 _request_id => Str


=cut

