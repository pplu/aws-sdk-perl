# Generated from callresult_class.tt

package Paws::SQS::ChangeMessageVisibilityBatchResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SQS::Types qw/SQS_ChangeMessageVisibilityBatchResultEntry SQS_BatchResultErrorEntry/;
  has Failed => (is => 'ro', isa => ArrayRef[SQS_BatchResultErrorEntry], required => 1);
  has Successful => (is => 'ro', isa => ArrayRef[SQS_ChangeMessageVisibilityBatchResultEntry], required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Successful' => {
                                 'type' => 'ArrayRef[SQS_ChangeMessageVisibilityBatchResultEntry]',
                                 'class' => 'Paws::SQS::ChangeMessageVisibilityBatchResultEntry'
                               },
               'Failed' => {
                             'type' => 'ArrayRef[SQS_BatchResultErrorEntry]',
                             'class' => 'Paws::SQS::BatchResultErrorEntry'
                           },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'Successful' => 1,
                    'Failed' => 1
                  },
  'NameInRequest' => {
                       'Successful' => 'ChangeMessageVisibilityBatchResultEntry',
                       'Failed' => 'BatchResultErrorEntry'
                     }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::SQS::ChangeMessageVisibilityBatchResult

=head1 ATTRIBUTES


=head2 B<REQUIRED> Failed => ArrayRef[SQS_BatchResultErrorEntry]

A list of C< BatchResultErrorEntry > items.


=head2 B<REQUIRED> Successful => ArrayRef[SQS_ChangeMessageVisibilityBatchResultEntry]

A list of C< ChangeMessageVisibilityBatchResultEntry > items.


=head2 _request_id => Str


=cut

