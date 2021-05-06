
package Paws::SQS::SendMessageBatchResult;
  use Moose;
  has Failed => (is => 'ro', isa => 'ArrayRef[Paws::SQS::BatchResultErrorEntry]', request_name => 'BatchResultErrorEntry', traits => ['NameInRequest',], required => 1);
  has Successful => (is => 'ro', isa => 'ArrayRef[Paws::SQS::SendMessageBatchResultEntry]', request_name => 'SendMessageBatchResultEntry', traits => ['NameInRequest',], required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SQS::SendMessageBatchResult

=head1 ATTRIBUTES


=head2 B<REQUIRED> Failed => ArrayRef[L<Paws::SQS::BatchResultErrorEntry>]

A list of C< BatchResultErrorEntry > items with error details about
each message that can't be enqueued.


=head2 B<REQUIRED> Successful => ArrayRef[L<Paws::SQS::SendMessageBatchResultEntry>]

A list of C< SendMessageBatchResultEntry > items.


=head2 _request_id => Str


=cut

