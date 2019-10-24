# Generated from json/callresult_class.tt

package Paws::Firehose::PutRecordBatchOutput;
  use Moo;
  use Types::Standard qw/Str Bool Int ArrayRef/;
  use Paws::Firehose::Types qw/Firehose_PutRecordBatchResponseEntry/;
  has Encrypted => (is => 'ro', isa => Bool);
  has FailedPutCount => (is => 'ro', isa => Int, required => 1);
  has RequestResponses => (is => 'ro', isa => ArrayRef[Firehose_PutRecordBatchResponseEntry], required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RequestResponses' => {
                                       'class' => 'Paws::Firehose::PutRecordBatchResponseEntry',
                                       'type' => 'ArrayRef[Firehose_PutRecordBatchResponseEntry]'
                                     },
               'FailedPutCount' => {
                                     'type' => 'Int'
                                   },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Encrypted' => {
                                'type' => 'Bool'
                              }
             },
  'IsRequired' => {
                    'RequestResponses' => 1,
                    'FailedPutCount' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Firehose::PutRecordBatchOutput

=head1 ATTRIBUTES


=head2 Encrypted => Bool

Indicates whether server-side encryption (SSE) was enabled during this
operation.


=head2 B<REQUIRED> FailedPutCount => Int

The number of records that might have failed processing. This number
might be greater than 0 even if the PutRecordBatch call succeeds. Check
C<FailedPutCount> to determine whether there are records that you need
to resend.


=head2 B<REQUIRED> RequestResponses => ArrayRef[Firehose_PutRecordBatchResponseEntry]

The results array. For each record, the index of the response element
is the same as the index used in the request array.


=head2 _request_id => Str


=cut

1;