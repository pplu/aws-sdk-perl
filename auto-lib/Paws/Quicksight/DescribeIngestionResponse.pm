
package Paws::Quicksight::DescribeIngestionResponse;
  use Moose;
  has Ingestion => (is => 'ro', isa => 'Paws::Quicksight::Ingestion');
  has RequestId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::DescribeIngestionResponse

=head1 ATTRIBUTES


=head2 Ingestion => L<Paws::Quicksight::Ingestion>

Information about the ingestion.


=head2 RequestId => Str

The AWS request ID for this operation.


=head2 Status => Int

The HTTP status of the request.


=head2 _request_id => Str


=cut

