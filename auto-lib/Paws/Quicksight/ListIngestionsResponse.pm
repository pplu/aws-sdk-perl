
package Paws::Quicksight::ListIngestionsResponse;
  use Moose;
  has Ingestions => (is => 'ro', isa => 'ArrayRef[Paws::Quicksight::Ingestion]');
  has NextToken => (is => 'ro', isa => 'Str');
  has RequestId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::ListIngestionsResponse

=head1 ATTRIBUTES


=head2 Ingestions => ArrayRef[L<Paws::Quicksight::Ingestion>]

A list of the ingestions.


=head2 NextToken => Str

The token for the next set of results, or null if there are no more
results.


=head2 RequestId => Str

The AWS request ID for this operation.


=head2 Status => Int

The HTTP status of the request.


=head2 _request_id => Str


=cut

