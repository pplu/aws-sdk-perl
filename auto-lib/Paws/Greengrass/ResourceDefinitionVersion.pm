package Paws::Greengrass::ResourceDefinitionVersion;
  use Moose;
  has Resources => (is => 'ro', isa => 'ArrayRef[Paws::Greengrass::Resource]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::ResourceDefinitionVersion

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Greengrass::ResourceDefinitionVersion object:

  $service_obj->Method(Att1 => { Resources => $value, ..., Resources => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Greengrass::ResourceDefinitionVersion object:

  $result = $service_obj->Method(...);
  $result->Att1->Resources

=head1 DESCRIPTION

Information about a resource definition version.

=head1 ATTRIBUTES


=head2 Resources => ArrayRef[L<Paws::Greengrass::Resource>]

  A list of resources.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Greengrass>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

