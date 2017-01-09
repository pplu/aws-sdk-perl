
package Paws::Firehose::PutRecordBatchOutput;
  use Moose;
  has FailedPutCount => (is => 'ro', isa => 'Int', required => 1);
  has RequestResponses => (is => 'ro', isa => 'ArrayRef[Paws::Firehose::PutRecordBatchResponseEntry]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Firehose::PutRecordBatchOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> FailedPutCount => Int

The number of records that might have failed processing.


=head2 B<REQUIRED> RequestResponses => ArrayRef[L<Paws::Firehose::PutRecordBatchResponseEntry>]

The results array. For each record, the index of the response element
is the same as the index used in the request array.


=head2 _request_id => Str


=cut

1;