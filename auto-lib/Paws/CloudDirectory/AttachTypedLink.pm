
package Paws::CloudDirectory::AttachTypedLink;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CloudDirectory::Types qw/CloudDirectory_AttributeNameAndValue CloudDirectory_ObjectReference CloudDirectory_TypedLinkSchemaAndFacetName/;
  has Attributes => (is => 'ro', isa => ArrayRef[CloudDirectory_AttributeNameAndValue], required => 1, predicate => 1);
  has DirectoryArn => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has SourceObjectReference => (is => 'ro', isa => CloudDirectory_ObjectReference, required => 1, predicate => 1);
  has TargetObjectReference => (is => 'ro', isa => CloudDirectory_ObjectReference, required => 1, predicate => 1);
  has TypedLinkFacet => (is => 'ro', isa => CloudDirectory_TypedLinkSchemaAndFacetName, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'AttachTypedLink');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/amazonclouddirectory/2017-01-11/typedlink/attach');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'PUT');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::CloudDirectory::AttachTypedLinkResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TypedLinkFacet' => {
                                     'class' => 'Paws::CloudDirectory::TypedLinkSchemaAndFacetName',
                                     'type' => 'CloudDirectory_TypedLinkSchemaAndFacetName'
                                   },
               'Attributes' => {
                                 'class' => 'Paws::CloudDirectory::AttributeNameAndValue',
                                 'type' => 'ArrayRef[CloudDirectory_AttributeNameAndValue]'
                               },
               'DirectoryArn' => {
                                   'type' => 'Str'
                                 },
               'SourceObjectReference' => {
                                            'class' => 'Paws::CloudDirectory::ObjectReference',
                                            'type' => 'CloudDirectory_ObjectReference'
                                          },
               'TargetObjectReference' => {
                                            'class' => 'Paws::CloudDirectory::ObjectReference',
                                            'type' => 'CloudDirectory_ObjectReference'
                                          }
             },
  'ParamInHeader' => {
                       'DirectoryArn' => 'x-amz-data-partition'
                     },
  'IsRequired' => {
                    'TypedLinkFacet' => 1,
                    'Attributes' => 1,
                    'DirectoryArn' => 1,
                    'SourceObjectReference' => 1,
                    'TargetObjectReference' => 1
                  }
}
;
    return $Params_map;
  }

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


=head2 B<REQUIRED> Attributes => ArrayRef[CloudDirectory_AttributeNameAndValue]

A set of attributes that are associated with the typed link.



=head2 B<REQUIRED> DirectoryArn => Str

The Amazon Resource Name (ARN) of the directory where you want to
attach the typed link.



=head2 B<REQUIRED> SourceObjectReference => CloudDirectory_ObjectReference

Identifies the source object that the typed link will attach to.



=head2 B<REQUIRED> TargetObjectReference => CloudDirectory_ObjectReference

Identifies the target object that the typed link will attach to.



=head2 B<REQUIRED> TypedLinkFacet => CloudDirectory_TypedLinkSchemaAndFacetName

Identifies the typed link facet that is associated with the typed link.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AttachTypedLink in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

