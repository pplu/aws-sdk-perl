# Generated by default/object.tt
package Paws::SecurityHub::AwsEcsTaskDefinitionContainerDefinitionsPortMappingsDetails;
  use Moose;
  has ContainerPort => (is => 'ro', isa => 'Int');
  has HostPort => (is => 'ro', isa => 'Int');
  has Protocol => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::AwsEcsTaskDefinitionContainerDefinitionsPortMappingsDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecurityHub::AwsEcsTaskDefinitionContainerDefinitionsPortMappingsDetails object:

  $service_obj->Method(Att1 => { ContainerPort => $value, ..., Protocol => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecurityHub::AwsEcsTaskDefinitionContainerDefinitionsPortMappingsDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->ContainerPort

=head1 DESCRIPTION

A port mapping for the container.

=head1 ATTRIBUTES


=head2 ContainerPort => Int

The port number on the container that is bound to the user-specified or
automatically assigned host port.


=head2 HostPort => Int

The port number on the container instance to reserve for the container.


=head2 Protocol => Str

The protocol used for the port mapping. The default is C<tcp>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

