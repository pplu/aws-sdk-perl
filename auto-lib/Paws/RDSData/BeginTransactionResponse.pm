
package Paws::RDSData::BeginTransactionResponse;
  use Moose;
  has TransactionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'transactionId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDSData::BeginTransactionResponse

=head1 ATTRIBUTES


=head2 TransactionId => Str

The transaction ID of the transaction started by the call.


=head2 _request_id => Str


=cut

