
package Paws::MQ::UpdateBrokerResponse;
  use Moose;
  has AutoMinorVersionUpgrade => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'autoMinorVersionUpgrade');
  has BrokerId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'brokerId');
  has Configuration => (is => 'ro', isa => 'Paws::MQ::ConfigurationId', traits => ['NameInRequest'], request_name => 'configuration');
  has EngineVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'engineVersion');
  has Logs => (is => 'ro', isa => 'Paws::MQ::Logs', traits => ['NameInRequest'], request_name => 'logs');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MQ::UpdateBrokerResponse

=head1 ATTRIBUTES


=head2 AutoMinorVersionUpgrade => Bool

The new value of automatic upgrades to new minor version for brokers.


=head2 BrokerId => Str

Required. The unique ID that Amazon MQ generates for the broker.


=head2 Configuration => L<Paws::MQ::ConfigurationId>

The ID of the updated configuration.


=head2 EngineVersion => Str

The version of the broker engine to upgrade to. For a list of supported
engine versions, see
https://docs.aws.amazon.com/amazon-mq/latest/developer-guide/broker-engine.html


=head2 Logs => L<Paws::MQ::Logs>

The list of information about logs to be enabled for the specified
broker.


=head2 _request_id => Str


=cut

