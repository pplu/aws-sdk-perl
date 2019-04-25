package Paws::CloudDirectory::FacetAttributeDefinition;
  use Moose;
  has DefaultValue => (is => 'ro', isa => 'Paws::CloudDirectory::TypedAttributeValue');
  has IsImmutable => (is => 'ro', isa => 'Bool');
  has Rules => (is => 'ro', isa => 'Paws::CloudDirectory::RuleMap');
  has Type => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::FacetAttributeDefinition

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudDirectory::FacetAttributeDefinition object:

  $service_obj->Method(Att1 => { DefaultValue => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudDirectory::FacetAttributeDefinition object:

  $result = $service_obj->Method(...);
  $result->Att1->DefaultValue

=head1 DESCRIPTION

A facet attribute definition. See Attribute References
(https://docs.aws.amazon.com/clouddirectory/latest/developerguide/schemas_attributereferences.html)
for more information.

=head1 ATTRIBUTES


=head2 DefaultValue => L<Paws::CloudDirectory::TypedAttributeValue>

  The default value of the attribute (if configured).


=head2 IsImmutable => Bool

  Whether the attribute is mutable or not.


=head2 Rules => L<Paws::CloudDirectory::RuleMap>

  Validation rules attached to the attribute definition.


=head2 B<REQUIRED> Type => Str

  The type of the attribute.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

