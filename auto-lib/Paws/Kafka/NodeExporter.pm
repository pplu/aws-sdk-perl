package Paws::Kafka::NodeExporter;
  use Moose;
  has EnabledInBroker => (is => 'ro', isa => 'Bool', request_name => 'enabledInBroker', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Kafka::NodeExporter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Kafka::NodeExporter object:

  $service_obj->Method(Att1 => { EnabledInBroker => $value, ..., EnabledInBroker => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Kafka::NodeExporter object:

  $result = $service_obj->Method(...);
  $result->Att1->EnabledInBroker

=head1 DESCRIPTION

Indicates whether you want to enable or disable the Node Exporter.

=head1 ATTRIBUTES


=head2 B<REQUIRED> EnabledInBroker => Bool

  Indicates whether you want to enable or disable the Node Exporter.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Kafka>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

