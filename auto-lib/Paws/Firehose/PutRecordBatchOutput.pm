
package Paws::Firehose::PutRecordBatchOutput;
  use Moose;
  has FailedPutCount => (is => 'ro', isa => 'Int', required => 1);
  has RequestResponses => (is => 'ro', isa => 'ArrayRef[Paws::Firehose::PutRecordBatchResponseEntry]', required => 1);


### main pod documentation begin ###

=head1 NAME

Paws::Firehose::PutRecordBatchOutput

=head1 ATTRIBUTES

=head2 B<REQUIRED> FailedPutCount => Int

  The number of unsuccessfully written records.
=head2 B<REQUIRED> RequestResponses => ArrayRef[L<Paws::Firehose::PutRecordBatchResponseEntry>]

  The results for the individual records. The index of each element
matches the same index in which records were sent.


=cut

1;