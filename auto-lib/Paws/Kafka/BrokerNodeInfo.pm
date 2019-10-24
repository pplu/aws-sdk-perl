# Generated from default/object.tt
package Paws::Kafka::BrokerNodeInfo;
  use Moo;
  use Types::Standard qw/Str Num ArrayRef Undef/;
  use Paws::Kafka::Types qw/Kafka_BrokerSoftwareInfo/;
  has AttachedENIId => (is => 'ro', isa => Str);
  has BrokerId => (is => 'ro', isa => Num);
  has ClientSubnet => (is => 'ro', isa => Str);
  has ClientVpcIpAddress => (is => 'ro', isa => Str);
  has CurrentBrokerSoftwareInfo => (is => 'ro', isa => Kafka_BrokerSoftwareInfo);
  has Endpoints => (is => 'ro', isa => ArrayRef[Str|Undef]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ClientSubnet' => {
                                   'type' => 'Str'
                                 },
               'Endpoints' => {
                                'type' => 'ArrayRef[Str|Undef]'
                              },
               'AttachedENIId' => {
                                    'type' => 'Str'
                                  },
               'CurrentBrokerSoftwareInfo' => {
                                                'class' => 'Paws::Kafka::BrokerSoftwareInfo',
                                                'type' => 'Kafka_BrokerSoftwareInfo'
                                              },
               'ClientVpcIpAddress' => {
                                         'type' => 'Str'
                                       },
               'BrokerId' => {
                               'type' => 'Num'
                             }
             },
  'NameInRequest' => {
                       'ClientSubnet' => 'clientSubnet',
                       'Endpoints' => 'endpoints',
                       'AttachedENIId' => 'attachedENIId',
                       'CurrentBrokerSoftwareInfo' => 'currentBrokerSoftwareInfo',
                       'ClientVpcIpAddress' => 'clientVpcIpAddress',
                       'BrokerId' => 'brokerId'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Kafka::BrokerNodeInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Kafka::BrokerNodeInfo object:

  $service_obj->Method(Att1 => { AttachedENIId => $value, ..., Endpoints => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Kafka::BrokerNodeInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->AttachedENIId

=head1 DESCRIPTION

BrokerNodeInfo

=head1 ATTRIBUTES


=head2 AttachedENIId => Str

  The attached elastic network interface of the broker.


=head2 BrokerId => Num

  The ID of the broker.


=head2 ClientSubnet => Str

  The client subnet to which this broker node belongs.


=head2 ClientVpcIpAddress => Str

  The virtual private cloud (VPC) of the client.


=head2 CurrentBrokerSoftwareInfo => Kafka_BrokerSoftwareInfo

  Information about the version of software currently deployed on the
Kafka brokers in the cluster.


=head2 Endpoints => ArrayRef[Str|Undef]

  Endpoints for accessing the broker.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Kafka>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

