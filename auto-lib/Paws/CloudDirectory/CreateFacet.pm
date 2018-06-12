
package Paws::CloudDirectory::CreateFacet;
  use Moose;
  has Attributes => (is => 'ro', isa => 'ArrayRef[Paws::CloudDirectory::FacetAttribute]');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has ObjectType => (is => 'ro', isa => 'Str', required => 1);
  has SchemaArn => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-data-partition', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateFacet');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/amazonclouddirectory/2017-01-11/facet/create');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudDirectory::CreateFacetResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::CreateFacet - Arguments for method CreateFacet on L<Paws::CloudDirectory>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateFacet on the
L<Amazon CloudDirectory|Paws::CloudDirectory> service. Use the attributes of this class
as arguments to method CreateFacet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateFacet.

As an example:

  $service_obj->CreateFacet(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/clouddirectory/CreateFacet>

=head1 ATTRIBUTES


=head2 Attributes => ArrayRef[L<Paws::CloudDirectory::FacetAttribute>]

The attributes that are associated with the Facet.



=head2 B<REQUIRED> Name => Str

The name of the Facet, which is unique for a given schema.



=head2 B<REQUIRED> ObjectType => Str

Specifies whether a given object created from this facet is of type
node, leaf node, policy or index.

=over

=item *

Node: Can have multiple children but one parent.

=back

=over

=item *

Leaf node: Cannot have children but can have multiple parents.

=back

=over

=item *

Policy: Allows you to store a policy document and policy type. For more
information, see Policies
(http://docs.aws.amazon.com/directoryservice/latest/admin-guide/cd_key_concepts.html#policies).

=back

=over

=item *

Index: Can be created with the Index API.

=back


Valid values are: C<"NODE">, C<"LEAF_NODE">, C<"POLICY">, C<"INDEX">

=head2 B<REQUIRED> SchemaArn => Str

The schema ARN in which the new Facet will be created. For more
information, see arns.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateFacet in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

