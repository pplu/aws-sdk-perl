
package Paws::EC2::DeleteQueuedReservedInstancesResult;
  use Moose;
  has FailedQueuedPurchaseDeletions => (is => 'ro', isa => 'ArrayRef[Paws::EC2::FailedQueuedPurchaseDeletion]', request_name => 'failedQueuedPurchaseDeletionSet', traits => ['NameInRequest',]);
  has SuccessfulQueuedPurchaseDeletions => (is => 'ro', isa => 'ArrayRef[Paws::EC2::SuccessfulQueuedPurchaseDeletion]', request_name => 'successfulQueuedPurchaseDeletionSet', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DeleteQueuedReservedInstancesResult

=head1 ATTRIBUTES


=head2 FailedQueuedPurchaseDeletions => ArrayRef[L<Paws::EC2::FailedQueuedPurchaseDeletion>]

Information about the queued purchases that could not be deleted.


=head2 SuccessfulQueuedPurchaseDeletions => ArrayRef[L<Paws::EC2::SuccessfulQueuedPurchaseDeletion>]

Information about the queued purchases that were successfully deleted.


=head2 _request_id => Str


=cut

