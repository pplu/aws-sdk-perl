package Paws::Kafka::ZookeeperNodeInfo;
  use Moose;
  has AttachedENIId => (is => 'ro', isa => 'Str', request_name => 'attachedENIId', traits => ['NameInRequest']);
  has ClientVpcIpAddress => (is => 'ro', isa => 'Str', request_name => 'clientVpcIpAddress', traits => ['NameInRequest']);
  has ZookeeperId => (is => 'ro', isa => 'Num', request_name => 'zookeeperId', traits => ['NameInRequest']);
  has ZookeeperVersion => (is => 'ro', isa => 'Str', request_name => 'zookeeperVersion', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kafka::ZookeeperNodeInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Kafka::ZookeeperNodeInfo object:

  $service_obj->Method(Att1 => { AttachedENIId => $value, ..., ZookeeperVersion => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Kafka::ZookeeperNodeInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->AttachedENIId

=head1 DESCRIPTION

Zookeeper node information.

=head1 ATTRIBUTES


=head2 AttachedENIId => Str

  The attached elastic network interface of the broker.


=head2 ClientVpcIpAddress => Str

  The virtual private cloud (VPC) IP address of the client.


=head2 ZookeeperId => Num

  The role-specific ID for Zookeeper.


=head2 ZookeeperVersion => Str

  The version of Zookeeper.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Kafka>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

