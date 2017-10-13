
package Paws::CloudDirectory::UpdateFacet;
  use Moose;
  has AttributeUpdates => (is => 'ro', isa => 'ArrayRef[Paws::CloudDirectory::FacetAttributeUpdate]');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has ObjectType => (is => 'ro', isa => 'Str');
  has SchemaArn => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-data-partition', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateFacet');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/amazonclouddirectory/2017-01-11/facet');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudDirectory::UpdateFacetResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::UpdateFacet - Arguments for method UpdateFacet on Paws::CloudDirectory

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateFacet on the 
Amazon CloudDirectory service. Use the attributes of this class
as arguments to method UpdateFacet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateFacet.

As an example:

  $service_obj->UpdateFacet(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 AttributeUpdates => ArrayRef[L<Paws::CloudDirectory::FacetAttributeUpdate>]

List of attributes that need to be updated in a given schema Facet.
Each attribute is followed by C<AttributeAction>, which specifies the
type of update operation to perform.



=head2 B<REQUIRED> Name => Str

The name of the facet.



=head2 ObjectType => Str

The object type that is associated with the facet. See
CreateFacetRequest$ObjectType for more details.

Valid values are: C<"NODE">, C<"LEAF_NODE">, C<"POLICY">, C<"INDEX">

=head2 B<REQUIRED> SchemaArn => Str

The Amazon Resource Name (ARN) that is associated with the Facet. For
more information, see arns.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateFacet in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

