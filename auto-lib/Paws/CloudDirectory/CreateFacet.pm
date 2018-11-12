
package Paws::CloudDirectory::CreateFacet;
  use Moose;
  has Attributes => (is => 'ro', isa => 'ArrayRef[Paws::CloudDirectory::FacetAttribute]');
  has FacetStyle => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has ObjectType => (is => 'ro', isa => 'Str');
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

=head1 SYNOPSIS

    my $clouddirectory = Paws->service('CloudDirectory');
    my $CreateFacetResponse = $clouddirectory->CreateFacet(
      Name       => 'MyFacetName',
      SchemaArn  => 'MyArn',
      Attributes => [
        {
          Name                => 'MyAttributeName',    # min: 1, max: 230
          AttributeDefinition => {
            Type => 'STRING'
            ,    # values: STRING, BINARY, BOOLEAN, NUMBER, DATETIME, VARIANT
            DefaultValue => {
              BinaryValue   => 'BlobBinaryAttributeValue',    # OPTIONAL
              BooleanValue  => 1,                             # OPTIONAL
              DatetimeValue => '1970-01-01T01:00:00',         # OPTIONAL
              NumberValue   => 'MyNumberAttributeValue',      # OPTIONAL
              StringValue   => 'MyStringAttributeValue',      # OPTIONAL
            },    # OPTIONAL
            IsImmutable => 1,    # OPTIONAL
            Rules       => {
              'MyRuleKey' => {
                Parameters =>
                  { 'MyRuleParameterKey' => 'MyRuleParameterValue', }
                ,                # OPTIONAL
                Type => 'BINARY_LENGTH'
                , # values: BINARY_LENGTH, NUMBER_COMPARISON, STRING_FROM_SET, STRING_LENGTH; OPTIONAL
              },    # key: min: 1, max: 64
            },    # OPTIONAL
          },    # OPTIONAL
          AttributeReference => {
            TargetAttributeName => 'MyAttributeName',    # min: 1, max: 230
            TargetFacetName     => 'MyFacetName',        # min: 1, max: 64

          },    # OPTIONAL
          RequiredBehavior =>
            'REQUIRED_ALWAYS', # values: REQUIRED_ALWAYS, NOT_REQUIRED; OPTIONAL
        },
        ...
      ],                       # OPTIONAL
      FacetStyle => 'STATIC',  # OPTIONAL
      ObjectType => 'NODE',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/clouddirectory/CreateFacet>

=head1 ATTRIBUTES


=head2 Attributes => ArrayRef[L<Paws::CloudDirectory::FacetAttribute>]

The attributes that are associated with the Facet.



=head2 FacetStyle => Str

There are two different styles that you can define on any given facet,
C<Static> and C<Dynamic>. For static facets, all attributes must be
defined in the schema. For dynamic facets, attributes can be defined
during data plane operations.

Valid values are: C<"STATIC">, C<"DYNAMIC">

=head2 B<REQUIRED> Name => Str

The name of the Facet, which is unique for a given schema.



=head2 ObjectType => Str

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
(https://docs.aws.amazon.com/clouddirectory/latest/developerguide/key_concepts_directory.html#key_concepts_policies).

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

