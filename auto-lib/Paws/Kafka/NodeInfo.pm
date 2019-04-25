package Paws::Kafka::NodeInfo;
  use Moose;
  has AddedToClusterTime => (is => 'ro', isa => 'Str', request_name => 'addedToClusterTime', traits => ['NameInRequest']);
  has BrokerNodeInfo => (is => 'ro', isa => 'Paws::Kafka::BrokerNodeInfo', request_name => 'brokerNodeInfo', traits => ['NameInRequest']);
  has InstanceType => (is => 'ro', isa => 'Str', request_name => 'instanceType', traits => ['NameInRequest']);
  has NodeARN => (is => 'ro', isa => 'Str', request_name => 'nodeARN', traits => ['NameInRequest']);
  has NodeType => (is => 'ro', isa => 'Str', request_name => 'nodeType', traits => ['NameInRequest']);
  has ZookeeperNodeInfo => (is => 'ro', isa => 'Paws::Kafka::ZookeeperNodeInfo', request_name => 'zookeeperNodeInfo', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kafka::NodeInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Kafka::NodeInfo object:

  $service_obj->Method(Att1 => { AddedToClusterTime => $value, ..., ZookeeperNodeInfo => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Kafka::NodeInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->AddedToClusterTime

=head1 DESCRIPTION

The node information object.

=head1 ATTRIBUTES


=head2 AddedToClusterTime => Str

  The start time.


=head2 BrokerNodeInfo => L<Paws::Kafka::BrokerNodeInfo>

  The broker node info.


=head2 InstanceType => Str

  The instance type.


=head2 NodeARN => Str

  The Amazon Resource Name (ARN) of the node.


=head2 NodeType => Str

  The node type.


=head2 ZookeeperNodeInfo => L<Paws::Kafka::ZookeeperNodeInfo>

  The ZookeeperNodeInfo.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Kafka>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

