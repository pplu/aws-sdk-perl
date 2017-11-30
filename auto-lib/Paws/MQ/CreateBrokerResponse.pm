
package Paws::MQ::CreateBrokerResponse;
  use Moose;
  has BrokerArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'brokerArn');
  has BrokerId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'brokerId');

  has _request_id => (is => 'ro', isa => 'Str');
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

