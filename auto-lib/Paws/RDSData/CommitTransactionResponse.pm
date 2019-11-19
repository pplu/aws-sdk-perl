
package Paws::RDSData::CommitTransactionResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::RDSData::Types qw//;
  has TransactionStatus => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'TransactionStatus' => 'transactionStatus'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'TransactionStatus' => {
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

Paws::RDSData::CommitTransactionResponse

=head1 ATTRIBUTES


=head2 TransactionStatus => Str

The status of the commit operation.


=head2 _request_id => Str


=cut

