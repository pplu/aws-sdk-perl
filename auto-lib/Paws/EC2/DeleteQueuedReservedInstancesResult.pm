
package Paws::EC2::DeleteQueuedReservedInstancesResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_SuccessfulQueuedPurchaseDeletion EC2_FailedQueuedPurchaseDeletion/;
  has FailedQueuedPurchaseDeletions => (is => 'ro', isa => ArrayRef[EC2_FailedQueuedPurchaseDeletion]);
  has SuccessfulQueuedPurchaseDeletions => (is => 'ro', isa => ArrayRef[EC2_SuccessfulQueuedPurchaseDeletion]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'FailedQueuedPurchaseDeletions' => 'failedQueuedPurchaseDeletionSet',
                       'SuccessfulQueuedPurchaseDeletions' => 'successfulQueuedPurchaseDeletionSet'
                     },
  'types' => {
               'FailedQueuedPurchaseDeletions' => {
                                                    'class' => 'Paws::EC2::FailedQueuedPurchaseDeletion',
                                                    'type' => 'ArrayRef[EC2_FailedQueuedPurchaseDeletion]'
                                                  },
               'SuccessfulQueuedPurchaseDeletions' => {
                                                        'type' => 'ArrayRef[EC2_SuccessfulQueuedPurchaseDeletion]',
                                                        'class' => 'Paws::EC2::SuccessfulQueuedPurchaseDeletion'
                                                      },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DeleteQueuedReservedInstancesResult

=head1 ATTRIBUTES


=head2 FailedQueuedPurchaseDeletions => ArrayRef[EC2_FailedQueuedPurchaseDeletion]

Information about the queued purchases that could not be deleted.


=head2 SuccessfulQueuedPurchaseDeletions => ArrayRef[EC2_SuccessfulQueuedPurchaseDeletion]

Information about the queued purchases that were successfully deleted.


=head2 _request_id => Str


=cut

