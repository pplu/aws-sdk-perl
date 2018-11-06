
package Paws::CloudDirectory::CreateTypedLinkFacet;
  use Moose;
  has Facet => (is => 'ro', isa => 'Paws::CloudDirectory::TypedLinkFacet', required => 1);
  has SchemaArn => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-data-partition', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateTypedLinkFacet');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/amazonclouddirectory/2017-01-11/typedlink/facet/create');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudDirectory::CreateTypedLinkFacetResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::CreateTypedLinkFacet - Arguments for method CreateTypedLinkFacet on L<Paws::CloudDirectory>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateTypedLinkFacet on the
L<Amazon CloudDirectory|Paws::CloudDirectory> service. Use the attributes of this class
as arguments to method CreateTypedLinkFacet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateTypedLinkFacet.

=head1 SYNOPSIS

    my $clouddirectory = Paws->service('CloudDirectory');
    my $CreateTypedLinkFacetResponse = $clouddirectory->CreateTypedLinkFacet(
      Facet => {
        Attributes => [
          {
            Name => 'MyAttributeName',    # min: 1, max: 230
            RequiredBehavior =>
              'REQUIRED_ALWAYS',    # values: REQUIRED_ALWAYS, NOT_REQUIRED
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
          },
          ...
        ],
        IdentityAttributeOrder => [
          'MyAttributeName',
          ...     # min: 1, max: 230
        ],
        Name => 'MyTypedLinkName',

      },
      SchemaArn => 'MyArn',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/clouddirectory/CreateTypedLinkFacet>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Facet => L<Paws::CloudDirectory::TypedLinkFacet>

Facet structure that is associated with the typed link facet.



=head2 B<REQUIRED> SchemaArn => Str

The Amazon Resource Name (ARN) that is associated with the schema. For
more information, see arns.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateTypedLinkFacet in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

