
package Paws::CloudDirectory::ListObjectAttributes;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::CloudDirectory::Types qw/CloudDirectory_SchemaFacet CloudDirectory_ObjectReference/;
  has ConsistencyLevel => (is => 'ro', isa => Str, predicate => 1);
  has DirectoryArn => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has FacetFilter => (is => 'ro', isa => CloudDirectory_SchemaFacet, predicate => 1);
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);
  has ObjectReference => (is => 'ro', isa => CloudDirectory_ObjectReference, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ListObjectAttributes');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/amazonclouddirectory/2017-01-11/object/attributes');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::CloudDirectory::ListObjectAttributesResponse');

    sub params_map {
    our $Params_map ||= {
  'ParamInHeader' => {
                       'ConsistencyLevel' => 'x-amz-consistency-level',
                       'DirectoryArn' => 'x-amz-data-partition'
                     },
  'types' => {
               'ObjectReference' => {
                                      'class' => 'Paws::CloudDirectory::ObjectReference',
                                      'type' => 'CloudDirectory_ObjectReference'
                                    },
               'FacetFilter' => {
                                  'type' => 'CloudDirectory_SchemaFacet',
                                  'class' => 'Paws::CloudDirectory::SchemaFacet'
                                },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'MaxResults' => {
                                 'type' => 'Int'
                               },
               'ConsistencyLevel' => {
                                       'type' => 'Str'
                                     },
               'DirectoryArn' => {
                                   'type' => 'Str'
                                 }
             },
  'IsRequired' => {
                    'ObjectReference' => 1,
                    'DirectoryArn' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::ListObjectAttributes - Arguments for method ListObjectAttributes on L<Paws::CloudDirectory>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListObjectAttributes on the
L<Amazon CloudDirectory|Paws::CloudDirectory> service. Use the attributes of this class
as arguments to method ListObjectAttributes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListObjectAttributes.

=head1 SYNOPSIS

    my $clouddirectory = Paws->service('CloudDirectory');
    my $ListObjectAttributesResponse = $clouddirectory->ListObjectAttributes(
      DirectoryArn    => 'MyArn',
      ObjectReference => {
        Selector => 'MySelectorObjectReference',    # OPTIONAL
      },
      ConsistencyLevel => 'SERIALIZABLE',           # OPTIONAL
      FacetFilter      => {
        FacetName => 'MyFacetName',                 # min: 1, max: 64; OPTIONAL
        SchemaArn => 'MyArn',
      },    # OPTIONAL
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $Attributes = $ListObjectAttributesResponse->Attributes;
    my $NextToken  = $ListObjectAttributesResponse->NextToken;

    # Returns a L<Paws::CloudDirectory::ListObjectAttributesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/clouddirectory/ListObjectAttributes>

=head1 ATTRIBUTES


=head2 ConsistencyLevel => Str

Represents the manner and timing in which the successful write or
update of an object is reflected in a subsequent read operation of that
same object.

Valid values are: C<"SERIALIZABLE">, C<"EVENTUAL">

=head2 B<REQUIRED> DirectoryArn => Str

The Amazon Resource Name (ARN) that is associated with the Directory
where the object resides. For more information, see arns.



=head2 FacetFilter => CloudDirectory_SchemaFacet

Used to filter the list of object attributes that are associated with a
certain facet.



=head2 MaxResults => Int

The maximum number of items to be retrieved in a single call. This is
an approximate number.



=head2 NextToken => Str

The pagination token.



=head2 B<REQUIRED> ObjectReference => CloudDirectory_ObjectReference

The reference that identifies the object whose attributes will be
listed.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListObjectAttributes in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

