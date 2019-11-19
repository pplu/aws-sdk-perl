
package Paws::MQ::CreateBrokerResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MQ::Types qw//;
  has BrokerArn => (is => 'ro', isa => Str);
  has BrokerId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'BrokerArn' => 'brokerArn',
                       'BrokerId' => 'brokerId'
                     },
  'types' => {
               'BrokerId' => {
                               'type' => 'Str'
                             },
               'BrokerArn' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
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

Paws::MQ::CreateBrokerResponse

=head1 ATTRIBUTES


=head2 BrokerArn => Str

The Amazon Resource Name (ARN) of the broker.


=head2 BrokerId => Str

The unique ID that Amazon MQ generates for the broker.


=head2 _request_id => Str


=cut

