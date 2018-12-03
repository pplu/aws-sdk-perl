
package Paws::Kafka::CreateCluster;
  use Moose;
  has BrokerNodeGroupInfo => (is => 'ro', isa => 'Paws::Kafka::BrokerNodeGroupInfo', traits => ['NameInRequest'], request_name => 'brokerNodeGroupInfo', required => 1);
  has ClusterName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clusterName', required => 1);
  has EncryptionInfo => (is => 'ro', isa => 'Paws::Kafka::EncryptionInfo', traits => ['NameInRequest'], request_name => 'encryptionInfo');
  has EnhancedMonitoring => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'enhancedMonitoring');
  has KafkaVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'kafkaVersion', required => 1);
  has NumberOfBrokerNodes => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'numberOfBrokerNodes', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCluster');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/clusters');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Kafka::CreateClusterResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kafka::CreateCluster - Arguments for method CreateCluster on L<Paws::Kafka>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateCluster on the
L<Managed Streaming for Kafka|Paws::Kafka> service. Use the attributes of this class
as arguments to method CreateCluster.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateCluster.

=head1 SYNOPSIS

    my $kafka = Paws->service('Kafka');
    my $CreateClusterResponse = $kafka->CreateCluster(
      BrokerNodeGroupInfo => {
        ClientSubnets => [ 'My__string', ... ],
        InstanceType  => 'My__stringMin5Max32',    # min: 5, max: 32
        BrokerAZDistribution => 'DEFAULT',         # values: DEFAULT; OPTIONAL
        SecurityGroups => [ 'My__string', ... ],
        StorageInfo    => {
          EbsStorageInfo => {
            VolumeSize => 1,    # min: 1, max: 16384; OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
      },
      ClusterName         => 'My__stringMin1Max64',
      KafkaVersion        => 'My__stringMin1Max128',
      NumberOfBrokerNodes => 1,
      EncryptionInfo      => {
        EncryptionAtRest => {
          DataVolumeKMSKeyId => 'My__string',

        },    # OPTIONAL
      },    # OPTIONAL
      EnhancedMonitoring => 'DEFAULT',    # OPTIONAL
    );

    # Results:
    my $ClusterArn  = $CreateClusterResponse->ClusterArn;
    my $ClusterName = $CreateClusterResponse->ClusterName;
    my $State       = $CreateClusterResponse->State;

    # Returns a L<Paws::Kafka::CreateClusterResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kafka/CreateCluster>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BrokerNodeGroupInfo => L<Paws::Kafka::BrokerNodeGroupInfo>

Information about the broker nodes in the cluster.



=head2 B<REQUIRED> ClusterName => Str

The name of the cluster.



=head2 EncryptionInfo => L<Paws::Kafka::EncryptionInfo>

Includes all encryption-related information.



=head2 EnhancedMonitoring => Str

Specifies the level of monitoring for the MSK cluster. The possible
values are DEFAULT, PER_BROKER, and PER_TOPIC_PER_BROKER.

Valid values are: C<"DEFAULT">, C<"PER_BROKER">, C<"PER_TOPIC_PER_BROKER">

=head2 B<REQUIRED> KafkaVersion => Str

The version of Apache Kafka.



=head2 B<REQUIRED> NumberOfBrokerNodes => Int

The number of Kafka broker nodes in the Amazon MSK cluster.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateCluster in L<Paws::Kafka>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

