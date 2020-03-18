package Paws::Kafka::Prometheus;
  use Moose;
  has JmxExporter => (is => 'ro', isa => 'Paws::Kafka::JmxExporter', request_name => 'jmxExporter', traits => ['NameInRequest']);
  has NodeExporter => (is => 'ro', isa => 'Paws::Kafka::NodeExporter', request_name => 'nodeExporter', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Kafka::Prometheus

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Kafka::Prometheus object:

  $service_obj->Method(Att1 => { JmxExporter => $value, ..., NodeExporter => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Kafka::Prometheus object:

  $result = $service_obj->Method(...);
  $result->Att1->JmxExporter

=head1 DESCRIPTION

Prometheus settings.

=head1 ATTRIBUTES


=head2 JmxExporter => L<Paws::Kafka::JmxExporter>

  Indicates whether you want to enable or disable the JMX Exporter.


=head2 NodeExporter => L<Paws::Kafka::NodeExporter>

  Indicates whether you want to enable or disable the Node Exporter.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Kafka>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

