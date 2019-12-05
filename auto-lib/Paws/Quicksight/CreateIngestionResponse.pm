
package Paws::Quicksight::CreateIngestionResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has IngestionId => (is => 'ro', isa => 'Str');
  has IngestionStatus => (is => 'ro', isa => 'Str');
  has RequestId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::CreateIngestionResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) for the data ingestion.


=head2 IngestionId => Str

An ID for the ingestion.


=head2 IngestionStatus => Str

The ingestion status.

Valid values are: C<"INITIALIZED">, C<"QUEUED">, C<"RUNNING">, C<"FAILED">, C<"COMPLETED">, C<"CANCELLED">
=head2 RequestId => Str

The AWS request ID for this operation.


=head2 Status => Int

The HTTP status of the request.


=head2 _request_id => Str


=cut

