
package Paws::RDSData::CommitTransactionResponse;
  use Moose;
  has TransactionStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'transactionStatus');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDSData::CommitTransactionResponse

=head1 ATTRIBUTES


=head2 TransactionStatus => Str

The status of the commit operation.


=head2 _request_id => Str


=cut

