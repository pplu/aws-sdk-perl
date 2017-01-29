package Paws::CloudDirectory::Facet;
  use Moose;
  has Name => (is => 'ro', isa => 'Str');
  has ObjectType => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::Facet

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudDirectory::Facet object:

  $service_obj->Method(Att1 => { Name => $value, ..., ObjectType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudDirectory::Facet object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

A structure that contains Name, ARN, Attributes, Rules, and
ObjectTypes.

=head1 ATTRIBUTES


=head2 Name => Str

  The name of the Facet.


=head2 ObjectType => Str

  Object type associated with the facet. See
CreateFacetRequest$ObjectType for more details.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

