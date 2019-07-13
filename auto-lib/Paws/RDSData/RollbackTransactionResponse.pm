
package Paws::RDSData::RollbackTransactionResponse;
  use Moose;
  has TransactionStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'transactionStatus');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDSData::RollbackTransactionResponse

=head1 ATTRIBUTES


=head2 TransactionStatus => Str

The status of the rollback operation.


=head2 _request_id => Str


=cut

