
package Paws::IoT::ListStreamsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Streams => (is => 'ro', isa => 'ArrayRef[Paws::IoT::StreamSummary]', traits => ['NameInRequest'], request_name => 'streams');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListStreamsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A token used to get the next set of results.


=head2 Streams => ArrayRef[L<Paws::IoT::StreamSummary>]

A list of streams.


=head2 _request_id => Str


=cut

