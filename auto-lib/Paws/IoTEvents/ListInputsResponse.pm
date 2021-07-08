
package Paws::IoTEvents::ListInputsResponse;
  use Moose;
  has InputSummaries => (is => 'ro', isa => 'ArrayRef[Paws::IoTEvents::InputSummary]', traits => ['NameInRequest'], request_name => 'inputSummaries');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTEvents::ListInputsResponse

=head1 ATTRIBUTES


=head2 InputSummaries => ArrayRef[L<Paws::IoTEvents::InputSummary>]

Summary information about the inputs.


=head2 NextToken => Str

The token that you can use to return the next set of results, or
C<null> if there are no more results.


=head2 _request_id => Str


=cut

