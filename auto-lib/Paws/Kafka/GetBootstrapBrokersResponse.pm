
package Paws::Kafka::GetBootstrapBrokersResponse;
  use Moose;
  has BootstrapBrokerString => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'bootstrapBrokerString');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kafka::GetBootstrapBrokersResponse

=head1 ATTRIBUTES


=head2 BootstrapBrokerString => Str

A string containing one or more hostname:port pairs.


=head2 _request_id => Str


=cut

