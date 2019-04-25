package Paws::Kafka::ClusterInfo;
  use Moose;
  has BrokerNodeGroupInfo => (is => 'ro', isa => 'Paws::Kafka::BrokerNodeGroupInfo', request_name => 'brokerNodeGroupInfo', traits => ['NameInRequest']);
  has ClusterArn => (is => 'ro', isa => 'Str', request_name => 'clusterArn', traits => ['NameInRequest']);
  has ClusterName => (is => 'ro', isa => 'Str', request_name => 'clusterName', traits => ['NameInRequest']);
  has CreationTime => (is => 'ro', isa => 'Str', request_name => 'creationTime', traits => ['NameInRequest']);
  has CurrentBrokerSoftwareInfo => (is => 'ro', isa => 'Paws::Kafka::BrokerSoftwareInfo', request_name => 'currentBrokerSoftwareInfo', traits => ['NameInRequest']);
  has CurrentVersion => (is => 'ro', isa => 'Str', request_name => 'currentVersion', traits => ['NameInRequest']);
  has EncryptionInfo => (is => 'ro', isa => 'Paws::Kafka::EncryptionInfo', request_name => 'encryptionInfo', traits => ['NameInRequest']);
  has EnhancedMonitoring => (is => 'ro', isa => 'Str', request_name => 'enhancedMonitoring', traits => ['NameInRequest']);
  has NumberOfBrokerNodes => (is => 'ro', isa => 'Int', request_name => 'numberOfBrokerNodes', traits => ['NameInRequest']);
  has State => (is => 'ro', isa => 'Str', request_name => 'state', traits => ['NameInRequest']);
  has ZookeeperConnectString => (is => 'ro', isa => 'Str', request_name => 'zookeeperConnectString', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kafka::ClusterInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Kafka::ClusterInfo object:

  $service_obj->Method(Att1 => { BrokerNodeGroupInfo => $value, ..., ZookeeperConnectString => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Kafka::ClusterInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->BrokerNodeGroupInfo

=head1 DESCRIPTION

Returns information about a cluster.

=head1 ATTRIBUTES


=head2 BrokerNodeGroupInfo => L<Paws::Kafka::BrokerNodeGroupInfo>

  Information about the broker nodes.


=head2 ClusterArn => Str

  The Amazon Resource Name (ARN) that uniquely identifies the cluster.


=head2 ClusterName => Str

  The name of the cluster.


=head2 CreationTime => Str

  The time when the cluster was created.


=head2 CurrentBrokerSoftwareInfo => L<Paws::Kafka::BrokerSoftwareInfo>

  Information about the version of software currently deployed on the
Kafka brokers in the cluster.


=head2 CurrentVersion => Str

  The current version of the MSK cluster.


=head2 EncryptionInfo => L<Paws::Kafka::EncryptionInfo>

  Includes all encryption-related information.


=head2 EnhancedMonitoring => Str

  Specifies which metrics are gathered for the MSK cluster. This property
has three possible values: DEFAULT, PER_BROKER, and
PER_TOPIC_PER_BROKER.


=head2 NumberOfBrokerNodes => Int

  The number of Kafka broker nodes in the cluster.


=head2 State => Str

  The state of the cluster. The possible states are CREATING, ACTIVE, and
FAILED.


=head2 ZookeeperConnectString => Str

  The connection string to use to connect to the Apache ZooKeeper
cluster.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Kafka>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

