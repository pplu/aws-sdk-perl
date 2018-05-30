
package Paws::CloudDirectory::UpdateTypedLinkFacet;
  use Moose;
  has AttributeUpdates => (is => 'ro', isa => 'ArrayRef[Paws::CloudDirectory::TypedLinkFacetAttributeUpdate]', required => 1);
  has IdentityAttributeOrder => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has SchemaArn => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-data-partition', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateTypedLinkFacet');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/amazonclouddirectory/2017-01-11/typedlink/facet');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudDirectory::UpdateTypedLinkFacetResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::UpdateTypedLinkFacet - Arguments for method UpdateTypedLinkFacet on L<Paws::CloudDirectory>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateTypedLinkFacet on the 
L<Amazon CloudDirectory|Paws::CloudDirectory> service. Use the attributes of this class
as arguments to method UpdateTypedLinkFacet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateTypedLinkFacet.

As an example:

  $service_obj->UpdateTypedLinkFacet(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/clouddirectory/UpdateTypedLinkFacet>
=head1 ATTRIBUTES


=head2 B<REQUIRED> AttributeUpdates => ArrayRef[L<Paws::CloudDirectory::TypedLinkFacetAttributeUpdate>]

Attributes update structure.



=head2 B<REQUIRED> IdentityAttributeOrder => ArrayRef[Str|Undef]

The order of identity attributes for the facet, from most significant
to least significant. The ability to filter typed links considers the
order that the attributes are defined on the typed link facet. When
providing ranges to a typed link selection, any inexact ranges must be
specified at the end. Any attributes that do not have a range specified
are presumed to match the entire range. Filters are interpreted in the
order of the attributes on the typed link facet, not the order in which
they are supplied to any API calls. For more information about identity
attributes, see Typed link
(http://docs.aws.amazon.com/directoryservice/latest/admin-guide/objectsandlinks.html#typedlink).



=head2 B<REQUIRED> Name => Str

The unique name of the typed link facet.



=head2 B<REQUIRED> SchemaArn => Str

The Amazon Resource Name (ARN) that is associated with the schema. For
more information, see arns.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateTypedLinkFacet in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

