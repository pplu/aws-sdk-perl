
package Paws::Kafka::DescribeConfigurationResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn');
  has CreationTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationTime');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has KafkaVersions => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'kafkaVersions');
  has LatestRevision => (is => 'ro', isa => 'Paws::Kafka::ConfigurationRevision', traits => ['NameInRequest'], request_name => 'latestRevision');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has State => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'state');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kafka::DescribeConfigurationResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) of the configuration.


=head2 CreationTime => Str

The time when the configuration was created.


=head2 Description => Str

The description of the configuration.


=head2 KafkaVersions => ArrayRef[Str|Undef]

The versions of Apache Kafka with which you can use this MSK
configuration.


=head2 LatestRevision => L<Paws::Kafka::ConfigurationRevision>

Latest revision of the configuration.


=head2 Name => Str

The name of the configuration.


=head2 State => Str

The state of the configuration. The possible states are ACTIVE,
DELETING, and DELETE_FAILED.

Valid values are: C<"ACTIVE">, C<"DELETING">, C<"DELETE_FAILED">
=head2 _request_id => Str


=cut

