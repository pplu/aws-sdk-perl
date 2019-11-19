
package Paws::RDSData::RollbackTransactionResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::RDSData::Types qw//;
  has TransactionStatus => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'TransactionStatus' => {
                                        'type' => 'Str'
                                      }
             },
  'NameInRequest' => {
                       'TransactionStatus' => 'transactionStatus'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::RDSData::RollbackTransactionResponse

=head1 ATTRIBUTES


=head2 TransactionStatus => Str

The status of the rollback operation.


=head2 _request_id => Str


=cut

