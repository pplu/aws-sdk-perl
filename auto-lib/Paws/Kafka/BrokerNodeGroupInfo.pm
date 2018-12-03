package Paws::Kafka::BrokerNodeGroupInfo;
  use Moose;
  has BrokerAZDistribution => (is => 'ro', isa => 'Str', request_name => 'brokerAZDistribution', traits => ['NameInRequest']);
  has ClientSubnets => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'clientSubnets', traits => ['NameInRequest'], required => 1);
  has InstanceType => (is => 'ro', isa => 'Str', request_name => 'instanceType', traits => ['NameInRequest'], required => 1);
  has SecurityGroups => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'securityGroups', traits => ['NameInRequest']);
  has StorageInfo => (is => 'ro', isa => 'Paws::Kafka::StorageInfo', request_name => 'storageInfo', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kafka::BrokerNodeGroupInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Kafka::BrokerNodeGroupInfo object:

  $service_obj->Method(Att1 => { BrokerAZDistribution => $value, ..., StorageInfo => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Kafka::BrokerNodeGroupInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->BrokerAZDistribution

=head1 DESCRIPTION

Describes the setup to be used for Kafka broker nodes in the cluster.

=head1 ATTRIBUTES


=head2 BrokerAZDistribution => Str

  The distribution of broker nodes across Availability Zones.


=head2 B<REQUIRED> ClientSubnets => ArrayRef[Str|Undef]

  The list of subnets to connect to in the client virtual private cloud
(VPC). AWS creates elastic network interfaces inside these subnets.
Client applications use elastic network interfaces to produce and
consume data. Client subnets can't be in Availability Zone us-east-1e.


=head2 B<REQUIRED> InstanceType => Str

  The type of Amazon EC2 instances to use for Kafka brokers. The
following instance types are allowed: kafka.m5.large, kafka.m5.xlarge,
kafka.m5.2xlarge, kafka.m5.4xlarge, kafka.m5.12xlarge, and
kafka.m5.24xlarge.


=head2 SecurityGroups => ArrayRef[Str|Undef]

  The AWS security groups to associate with the elastic network
interfaces in order to specify who can connect to and communicate with
the Amazon MSK cluster.


=head2 StorageInfo => L<Paws::Kafka::StorageInfo>

  Contains information about storage volumes attached to MSK broker
nodes.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Kafka>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

