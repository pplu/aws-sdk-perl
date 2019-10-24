
package Paws::RDSData::BeginTransactionResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::RDSData::Types qw//;
  has TransactionId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'TransactionId' => {
                                    'type' => 'Str'
                                  }
             },
  'NameInRequest' => {
                       'TransactionId' => 'transactionId'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::RDSData::BeginTransactionResponse

=head1 ATTRIBUTES


=head2 TransactionId => Str

The transaction ID of the transaction started by the call.


=head2 _request_id => Str


=cut

