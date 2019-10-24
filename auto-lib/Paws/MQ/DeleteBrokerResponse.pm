
package Paws::MQ::DeleteBrokerResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MQ::Types qw//;
  has BrokerId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'BrokerId' => {
                               'type' => 'Str'
                             }
             },
  'NameInRequest' => {
                       'BrokerId' => 'brokerId'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MQ::DeleteBrokerResponse

=head1 ATTRIBUTES


=head2 BrokerId => Str

The unique ID that Amazon MQ generates for the broker.


=head2 _request_id => Str


=cut

