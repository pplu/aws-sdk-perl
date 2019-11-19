# Generated from default/object.tt
package Paws::Kafka::ClusterInfo;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::Kafka::Types qw/Kafka___mapOf__string Kafka_ClientAuthentication Kafka_BrokerNodeGroupInfo Kafka_EncryptionInfo Kafka_BrokerSoftwareInfo/;
  has ActiveOperationArn => (is => 'ro', isa => Str);
  has BrokerNodeGroupInfo => (is => 'ro', isa => Kafka_BrokerNodeGroupInfo);
  has ClientAuthentication => (is => 'ro', isa => Kafka_ClientAuthentication);
  has ClusterArn => (is => 'ro', isa => Str);
  has ClusterName => (is => 'ro', isa => Str);
  has CreationTime => (is => 'ro', isa => Str);
  has CurrentBrokerSoftwareInfo => (is => 'ro', isa => Kafka_BrokerSoftwareInfo);
  has CurrentVersion => (is => 'ro', isa => Str);
  has EncryptionInfo => (is => 'ro', isa => Kafka_EncryptionInfo);
  has EnhancedMonitoring => (is => 'ro', isa => Str);
  has NumberOfBrokerNodes => (is => 'ro', isa => Int);
  has State => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => Kafka___mapOf__string);
  has ZookeeperConnectString => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Tags' => {
                           'class' => 'Paws::Kafka::__mapOf__string',
                           'type' => 'Kafka___mapOf__string'
                         },
               'ActiveOperationArn' => {
                                         'type' => 'Str'
                                       },
               'NumberOfBrokerNodes' => {
                                          'type' => 'Int'
                                        },
               'CurrentVersion' => {
                                     'type' => 'Str'
                                   },
               'EncryptionInfo' => {
                                     'type' => 'Kafka_EncryptionInfo',
                                     'class' => 'Paws::Kafka::EncryptionInfo'
                                   },
               'State' => {
                            'type' => 'Str'
                          },
               'EnhancedMonitoring' => {
                                         'type' => 'Str'
                                       },
               'BrokerNodeGroupInfo' => {
                                          'type' => 'Kafka_BrokerNodeGroupInfo',
                                          'class' => 'Paws::Kafka::BrokerNodeGroupInfo'
                                        },
               'CreationTime' => {
                                   'type' => 'Str'
                                 },
               'ClientAuthentication' => {
                                           'class' => 'Paws::Kafka::ClientAuthentication',
                                           'type' => 'Kafka_ClientAuthentication'
                                         },
               'ZookeeperConnectString' => {
                                             'type' => 'Str'
                                           },
               'ClusterName' => {
                                  'type' => 'Str'
                                },
               'CurrentBrokerSoftwareInfo' => {
                                                'type' => 'Kafka_BrokerSoftwareInfo',
                                                'class' => 'Paws::Kafka::BrokerSoftwareInfo'
                                              },
               'ClusterArn' => {
                                 'type' => 'Str'
                               }
             },
  'NameInRequest' => {
                       'EnhancedMonitoring' => 'enhancedMonitoring',
                       'EncryptionInfo' => 'encryptionInfo',
                       'State' => 'state',
                       'BrokerNodeGroupInfo' => 'brokerNodeGroupInfo',
                       'ClusterName' => 'clusterName',
                       'ZookeeperConnectString' => 'zookeeperConnectString',
                       'ClientAuthentication' => 'clientAuthentication',
                       'CreationTime' => 'creationTime',
                       'ClusterArn' => 'clusterArn',
                       'CurrentBrokerSoftwareInfo' => 'currentBrokerSoftwareInfo',
                       'Tags' => 'tags',
                       'NumberOfBrokerNodes' => 'numberOfBrokerNodes',
                       'ActiveOperationArn' => 'activeOperationArn',
                       'CurrentVersion' => 'currentVersion'
                     }
}
;
    return $Params_map;
  }


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

  $service_obj->Method(Att1 => { ActiveOperationArn => $value, ..., ZookeeperConnectString => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Kafka::ClusterInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->ActiveOperationArn

=head1 DESCRIPTION

Returns information about a cluster.

=head1 ATTRIBUTES


=head2 ActiveOperationArn => Str

  Arn of active cluster operation.


=head2 BrokerNodeGroupInfo => Kafka_BrokerNodeGroupInfo

  Information about the broker nodes.


=head2 ClientAuthentication => Kafka_ClientAuthentication

  Includes all client authentication information.


=head2 ClusterArn => Str

  The Amazon Resource Name (ARN) that uniquely identifies the cluster.


=head2 ClusterName => Str

  The name of the cluster.


=head2 CreationTime => Str

  The time when the cluster was created.


=head2 CurrentBrokerSoftwareInfo => Kafka_BrokerSoftwareInfo

  Information about the version of software currently deployed on the
Kafka brokers in the cluster.


=head2 CurrentVersion => Str

  The current version of the MSK cluster.


=head2 EncryptionInfo => Kafka_EncryptionInfo

  Includes all encryption-related information.


=head2 EnhancedMonitoring => Str

  Specifies which metrics are gathered for the MSK cluster. This property
has three possible values: DEFAULT, PER_BROKER, and
PER_TOPIC_PER_BROKER. For a list of the metrics associated with each of
these three levels of monitoring, see Monitoring
(https://docs.aws.amazon.com/msk/latest/developerguide/monitoring.html).


=head2 NumberOfBrokerNodes => Int

  The number of broker nodes in the cluster.


=head2 State => Str

  The state of the cluster. The possible states are CREATING, ACTIVE, and
FAILED.


=head2 Tags => Kafka___mapOf__string

  Tags attached to the cluster.


=head2 ZookeeperConnectString => Str

  The connection string to use to connect to the Apache ZooKeeper
cluster.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Kafka>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

