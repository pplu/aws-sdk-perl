package Paws::Kafka::MutableClusterInfo;
  use Moose;
  has BrokerEBSVolumeInfo => (is => 'ro', isa => 'ArrayRef[Paws::Kafka::BrokerEBSVolumeInfo]', request_name => 'brokerEBSVolumeInfo', traits => ['NameInRequest']);
  has ConfigurationInfo => (is => 'ro', isa => 'Paws::Kafka::ConfigurationInfo', request_name => 'configurationInfo', traits => ['NameInRequest']);
  has EnhancedMonitoring => (is => 'ro', isa => 'Str', request_name => 'enhancedMonitoring', traits => ['NameInRequest']);
  has NumberOfBrokerNodes => (is => 'ro', isa => 'Int', request_name => 'numberOfBrokerNodes', traits => ['NameInRequest']);
  has OpenMonitoring => (is => 'ro', isa => 'Paws::Kafka::OpenMonitoring', request_name => 'openMonitoring', traits => ['NameInRequest']);

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

  $service_obj->Method(Att1 => { BrokerEBSVolumeInfo => $value, ..., OpenMonitoring => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Kafka::MutableClusterInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->BrokerEBSVolumeInfo

=head1 DESCRIPTION

Information about cluster attributes that can be updated via update
APIs.

=head1 ATTRIBUTES


=head2 BrokerEBSVolumeInfo => ArrayRef[L<Paws::Kafka::BrokerEBSVolumeInfo>]

  Specifies the size of the EBS volume and the ID of the associated
broker.


=head2 ConfigurationInfo => L<Paws::Kafka::ConfigurationInfo>

  Information about the changes in the configuration of the brokers.


=head2 EnhancedMonitoring => Str

  Specifies which Apache Kafka metrics Amazon MSK gathers and sends to
Amazon CloudWatch for this cluster.


=head2 NumberOfBrokerNodes => Int

  The number of broker nodes in the cluster.


=head2 OpenMonitoring => L<Paws::Kafka::OpenMonitoring>

  The settings for open monitoring.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Kafka>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

