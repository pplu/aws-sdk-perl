# Generated from callresult_class.tt

package Paws::SQS::SendMessageBatchResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SQS::Types qw/SQS_SendMessageBatchResultEntry SQS_BatchResultErrorEntry/;
  has Failed => (is => 'ro', isa => ArrayRef[SQS_BatchResultErrorEntry], required => 1);
  has Successful => (is => 'ro', isa => ArrayRef[SQS_SendMessageBatchResultEntry], required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Successful' => {
                                 'class' => 'Paws::SQS::SendMessageBatchResultEntry',
                                 'type' => 'ArrayRef[SQS_SendMessageBatchResultEntry]'
                               },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Failed' => {
                             'class' => 'Paws::SQS::BatchResultErrorEntry',
                             'type' => 'ArrayRef[SQS_BatchResultErrorEntry]'
                           }
             },
  'NameInRequest' => {
                       'Successful' => 'SendMessageBatchResultEntry',
                       'Failed' => 'BatchResultErrorEntry'
                     },
  'IsRequired' => {
                    'Successful' => 1,
                    'Failed' => 1
                  }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::SQS::SendMessageBatchResult

=head1 ATTRIBUTES


=head2 B<REQUIRED> Failed => ArrayRef[SQS_BatchResultErrorEntry]

A list of C< BatchResultErrorEntry > items with error details about
each message that can't be enqueued.


=head2 B<REQUIRED> Successful => ArrayRef[SQS_SendMessageBatchResultEntry]

A list of C< SendMessageBatchResultEntry > items.


=head2 _request_id => Str


=cut

