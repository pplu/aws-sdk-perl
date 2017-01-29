package Paws::CloudDirectory::FacetAttribute;
  use Moose;
  has AttributeDefinition => (is => 'ro', isa => 'Paws::CloudDirectory::FacetAttributeDefinition');
  has AttributeReference => (is => 'ro', isa => 'Paws::CloudDirectory::FacetAttributeReference');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has RequiredBehavior => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::FacetAttribute

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudDirectory::FacetAttribute object:

  $service_obj->Method(Att1 => { AttributeDefinition => $value, ..., RequiredBehavior => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudDirectory::FacetAttribute object:

  $result = $service_obj->Method(...);
  $result->Att1->AttributeDefinition

=head1 DESCRIPTION

Attribute associated with the Facet.

=head1 ATTRIBUTES


=head2 AttributeDefinition => L<Paws::CloudDirectory::FacetAttributeDefinition>

  A facet attribute consists of either a definition or a reference. This
structure contains the attribute definition. See Attribute References
for more information.


=head2 AttributeReference => L<Paws::CloudDirectory::FacetAttributeReference>

  Attribute reference associated with the attribute. See Attribute
References for more information.


=head2 B<REQUIRED> Name => Str

  The name of the facet attribute.


=head2 RequiredBehavior => Str

  The required behavior of the FacetAttribute.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

