
package Paws::SQS::ChangeMessageVisibilityBatchResult;
  use Moose;
  has Failed => (is => 'ro', isa => 'ArrayRef[Paws::SQS::BatchResultErrorEntry]', request_name => 'BatchResultErrorEntry', traits => ['NameInRequest',], required => 1);
  has Successful => (is => 'ro', isa => 'ArrayRef[Paws::SQS::ChangeMessageVisibilityBatchResultEntry]', request_name => 'ChangeMessageVisibilityBatchResultEntry', traits => ['NameInRequest',], required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SQS::ChangeMessageVisibilityBatchResult

=head1 ATTRIBUTES


=head2 B<REQUIRED> Failed => ArrayRef[L<Paws::SQS::BatchResultErrorEntry>]

A list of C< BatchResultErrorEntry > items.


=head2 B<REQUIRED> Successful => ArrayRef[L<Paws::SQS::ChangeMessageVisibilityBatchResultEntry>]

A list of C< ChangeMessageVisibilityBatchResultEntry > items.


=head2 _request_id => Str


=cut

