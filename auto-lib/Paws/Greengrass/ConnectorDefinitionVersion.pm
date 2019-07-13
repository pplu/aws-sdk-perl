package Paws::Greengrass::ConnectorDefinitionVersion;
  use Moose;
  has Connectors => (is => 'ro', isa => 'ArrayRef[Paws::Greengrass::Connector]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::ConnectorDefinitionVersion

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Greengrass::ConnectorDefinitionVersion object:

  $service_obj->Method(Att1 => { Connectors => $value, ..., Connectors => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Greengrass::ConnectorDefinitionVersion object:

  $result = $service_obj->Method(...);
  $result->Att1->Connectors

=head1 DESCRIPTION

Information about the connector definition version, which is a
container for connectors.

=head1 ATTRIBUTES


=head2 Connectors => ArrayRef[L<Paws::Greengrass::Connector>]

  A list of references to connectors in this version, with their
corresponding configuration settings.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Greengrass>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

