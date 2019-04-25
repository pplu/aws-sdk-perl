package Paws::Kafka::BrokerSoftwareInfo;
  use Moose;
  has ConfigurationArn => (is => 'ro', isa => 'Str', request_name => 'configurationArn', traits => ['NameInRequest']);
  has ConfigurationRevision => (is => 'ro', isa => 'Str', request_name => 'configurationRevision', traits => ['NameInRequest']);
  has KafkaVersion => (is => 'ro', isa => 'Str', request_name => 'kafkaVersion', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kafka::BrokerSoftwareInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Kafka::BrokerSoftwareInfo object:

  $service_obj->Method(Att1 => { ConfigurationArn => $value, ..., KafkaVersion => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Kafka::BrokerSoftwareInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->ConfigurationArn

=head1 DESCRIPTION

Information about the current software installed on the cluster.

=head1 ATTRIBUTES


=head2 ConfigurationArn => Str

  The Amazon Resource Name (ARN) of the configuration used for the
cluster.


=head2 ConfigurationRevision => Str

  The revision of the configuration to use.


=head2 KafkaVersion => Str

  The version of Apache Kafka.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Kafka>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

