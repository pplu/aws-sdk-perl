
package Paws::CloudDirectory::CreateObject;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CloudDirectory::Types qw/CloudDirectory_ObjectReference CloudDirectory_AttributeKeyAndValue CloudDirectory_SchemaFacet/;
  has DirectoryArn => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has LinkName => (is => 'ro', isa => Str, predicate => 1);
  has ObjectAttributeList => (is => 'ro', isa => ArrayRef[CloudDirectory_AttributeKeyAndValue], predicate => 1);
  has ParentReference => (is => 'ro', isa => CloudDirectory_ObjectReference, predicate => 1);
  has SchemaFacets => (is => 'ro', isa => ArrayRef[CloudDirectory_SchemaFacet], required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateObject');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/amazonclouddirectory/2017-01-11/object');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'PUT');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::CloudDirectory::CreateObjectResponse');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'DirectoryArn' => 1,
                    'SchemaFacets' => 1
                  },
  'types' => {
               'DirectoryArn' => {
                                   'type' => 'Str'
                                 },
               'ObjectAttributeList' => {
                                          'class' => 'Paws::CloudDirectory::AttributeKeyAndValue',
                                          'type' => 'ArrayRef[CloudDirectory_AttributeKeyAndValue]'
                                        },
               'ParentReference' => {
                                      'type' => 'CloudDirectory_ObjectReference',
                                      'class' => 'Paws::CloudDirectory::ObjectReference'
                                    },
               'SchemaFacets' => {
                                   'type' => 'ArrayRef[CloudDirectory_SchemaFacet]',
                                   'class' => 'Paws::CloudDirectory::SchemaFacet'
                                 },
               'LinkName' => {
                               'type' => 'Str'
                             }
             },
  'ParamInHeader' => {
                       'DirectoryArn' => 'x-amz-data-partition'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::CreateObject - Arguments for method CreateObject on L<Paws::CloudDirectory>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateObject on the
L<Amazon CloudDirectory|Paws::CloudDirectory> service. Use the attributes of this class
as arguments to method CreateObject.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateObject.

=head1 SYNOPSIS

    my $clouddirectory = Paws->service('CloudDirectory');
    my $CreateObjectResponse = $clouddirectory->CreateObject(
      DirectoryArn => 'MyArn',
      SchemaFacets => [
        {
          FacetName => 'MyFacetName',    # min: 1, max: 64; OPTIONAL
          SchemaArn => 'MyArn',
        },
        ...
      ],
      LinkName            => 'MyLinkName',    # OPTIONAL
      ObjectAttributeList => [
        {
          Key => {
            FacetName => 'MyFacetName',        # min: 1, max: 64; OPTIONAL
            Name      => 'MyAttributeName',    # min: 1, max: 230
            SchemaArn => 'MyArn',

          },
          Value => {
            BinaryValue   => 'BlobBinaryAttributeValue',    # OPTIONAL
            BooleanValue  => 1,                             # OPTIONAL
            DatetimeValue => '1970-01-01T01:00:00',         # OPTIONAL
            NumberValue   => 'MyNumberAttributeValue',      # OPTIONAL
            StringValue   => 'MyStringAttributeValue',      # OPTIONAL
          },

        },
        ...
      ],                                                    # OPTIONAL
      ParentReference => {
        Selector => 'MySelectorObjectReference',            # OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $ObjectIdentifier = $CreateObjectResponse->ObjectIdentifier;

    # Returns a L<Paws::CloudDirectory::CreateObjectResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/clouddirectory/CreateObject>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DirectoryArn => Str

The Amazon Resource Name (ARN) that is associated with the Directory in
which the object will be created. For more information, see arns.



=head2 LinkName => Str

The name of link that is used to attach this object to a parent.



=head2 ObjectAttributeList => ArrayRef[CloudDirectory_AttributeKeyAndValue]

The attribute map whose attribute ARN contains the key and attribute
value as the map value.



=head2 ParentReference => CloudDirectory_ObjectReference

If specified, the parent reference to which this object will be
attached.



=head2 B<REQUIRED> SchemaFacets => ArrayRef[CloudDirectory_SchemaFacet]

A list of schema facets to be associated with the object. Do not
provide minor version components. See SchemaFacet for details.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateObject in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

