
package Paws::Kafka::GetBootstrapBrokersResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Kafka::Types qw//;
  has BootstrapBrokerString => (is => 'ro', isa => Str);
  has BootstrapBrokerStringTls => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'BootstrapBrokerStringTls' => {
                                               'type' => 'Str'
                                             },
               'BootstrapBrokerString' => {
                                            'type' => 'Str'
                                          },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'BootstrapBrokerStringTls' => 'bootstrapBrokerStringTls',
                       'BootstrapBrokerString' => 'bootstrapBrokerString'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Kafka::GetBootstrapBrokersResponse

=head1 ATTRIBUTES


=head2 BootstrapBrokerString => Str

A string containing one or more hostname:port pairs.


=head2 BootstrapBrokerStringTls => Str

A string containing one or more DNS names (or IP) and TLS port pairs.


=head2 _request_id => Str


=cut

