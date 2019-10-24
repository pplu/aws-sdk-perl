# Generated from default/object.tt
package Paws::Kafka::MutableClusterInfo;
  use Moo;
  use Types::Standard qw/ArrayRef Int/;
  use Paws::Kafka::Types qw/Kafka_BrokerEBSVolumeInfo Kafka_ConfigurationInfo/;
  has BrokerEBSVolumeInfo => (is => 'ro', isa => ArrayRef[Kafka_BrokerEBSVolumeInfo]);
  has ConfigurationInfo => (is => 'ro', isa => Kafka_ConfigurationInfo);
  has NumberOfBrokerNodes => (is => 'ro', isa => Int);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'BrokerEBSVolumeInfo' => {
                                          'class' => 'Paws::Kafka::BrokerEBSVolumeInfo',
                                          'type' => 'ArrayRef[Kafka_BrokerEBSVolumeInfo]'
                                        },
               'ConfigurationInfo' => {
                                        'class' => 'Paws::Kafka::ConfigurationInfo',
                                        'type' => 'Kafka_ConfigurationInfo'
                                      },
               'NumberOfBrokerNodes' => {
                                          'type' => 'Int'
                                        }
             },
  'NameInRequest' => {
                       'BrokerEBSVolumeInfo' => 'brokerEBSVolumeInfo',
                       'ConfigurationInfo' => 'configurationInfo',
                       'NumberOfBrokerNodes' => 'numberOfBrokerNodes'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Kafka::MutableClusterInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Kafka::MutableClusterInfo object:

  $service_obj->Method(Att1 => { BrokerEBSVolumeInfo => $value, ..., NumberOfBrokerNodes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Kafka::MutableClusterInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->BrokerEBSVolumeInfo

=head1 DESCRIPTION

Information about cluster attributes that can be updated via update
APIs.

=head1 ATTRIBUTES


=head2 BrokerEBSVolumeInfo => ArrayRef[Kafka_BrokerEBSVolumeInfo]

  Specifies the size of the EBS volume and the ID of the associated
broker.


=head2 ConfigurationInfo => Kafka_ConfigurationInfo

  Information about the changes in the configuration of the brokers.


=head2 NumberOfBrokerNodes => Int

  The number of broker nodes in the cluster.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Kafka>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

