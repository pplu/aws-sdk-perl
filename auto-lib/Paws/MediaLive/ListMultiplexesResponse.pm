
package Paws::MediaLive::ListMultiplexesResponse;
  use Moose;
  has Multiplexes => (is => 'ro', isa => 'ArrayRef[Paws::MediaLive::MultiplexSummary]', traits => ['NameInRequest'], request_name => 'multiplexes');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::ListMultiplexesResponse

=head1 ATTRIBUTES


=head2 Multiplexes => ArrayRef[L<Paws::MediaLive::MultiplexSummary>]

List of multiplexes.


=head2 NextToken => Str

Token for the next ListMultiplexes request.


=head2 _request_id => Str


=cut

