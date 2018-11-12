
package Paws::CloudDirectory::AttachTypedLink;
  use Moose;
  has Attributes => (is => 'ro', isa => 'ArrayRef[Paws::CloudDirectory::AttributeNameAndValue]', required => 1);
  has DirectoryArn => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-data-partition', required => 1);
  has SourceObjectReference => (is => 'ro', isa => 'Paws::CloudDirectory::ObjectReference', required => 1);
  has TargetObjectReference => (is => 'ro', isa => 'Paws::CloudDirectory::ObjectReference', required => 1);
  has TypedLinkFacet => (is => 'ro', isa => 'Paws::CloudDirectory::TypedLinkSchemaAndFacetName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AttachTypedLink');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/amazonclouddirectory/2017-01-11/typedlink/attach');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudDirectory::AttachTypedLinkResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::AttachTypedLink - Arguments for method AttachTypedLink on L<Paws::CloudDirectory>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AttachTypedLink on the
L<Amazon CloudDirectory|Paws::CloudDirectory> service. Use the attributes of this class
as arguments to method AttachTypedLink.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AttachTypedLink.

=head1 SYNOPSIS

    my $clouddirectory = Paws->service('CloudDirectory');
    my $AttachTypedLinkResponse = $clouddirectory->AttachTypedLink(
      Attributes => [
        {
          AttributeName => 'MyAttributeName',    # min: 1, max: 230
          Value         => {
            BinaryValue   => 'BlobBinaryAttributeValue',    # OPTIONAL
            BooleanValue  => 1,                             # OPTIONAL
            DatetimeValue => '1970-01-01T01:00:00',         # OPTIONAL
            NumberValue   => 'MyNumberAttributeValue',      # OPTIONAL
            StringValue   => 'MyStringAttributeValue',      # OPTIONAL
          },

        },
        ...
      ],
      DirectoryArn          => 'MyArn',
      SourceObjectReference => {
        Selector => 'MySelectorObjectReference',            # OPTIONAL
      },
      TargetObjectReference => {
        Selector => 'MySelectorObjectReference',            # OPTIONAL
      },
      TypedLinkFacet => {
        SchemaArn     => 'MyArn',
        TypedLinkName => 'MyTypedLinkName',

      },

    );

    # Results:
    my $TypedLinkSpecifier = $AttachTypedLinkResponse->TypedLinkSpecifier;

    # Returns a L<Paws::CloudDirectory::AttachTypedLinkResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/clouddirectory/AttachTypedLink>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Attributes => ArrayRef[L<Paws::CloudDirectory::AttributeNameAndValue>]

A set of attributes that are associated with the typed link.



=head2 B<REQUIRED> DirectoryArn => Str

The Amazon Resource Name (ARN) of the directory where you want to
attach the typed link.



=head2 B<REQUIRED> SourceObjectReference => L<Paws::CloudDirectory::ObjectReference>

Identifies the source object that the typed link will attach to.



=head2 B<REQUIRED> TargetObjectReference => L<Paws::CloudDirectory::ObjectReference>

Identifies the target object that the typed link will attach to.



=head2 B<REQUIRED> TypedLinkFacet => L<Paws::CloudDirectory::TypedLinkSchemaAndFacetName>

Identifies the typed link facet that is associated with the typed link.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AttachTypedLink in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

