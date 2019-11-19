
package Paws::CloudDirectory::ListIndex;
  use Moo;
  use Types::Standard qw/Str Int ArrayRef/;
  use Paws::CloudDirectory::Types qw/CloudDirectory_ObjectAttributeRange CloudDirectory_ObjectReference/;
  has ConsistencyLevel => (is => 'ro', isa => Str, predicate => 1);
  has DirectoryArn => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has IndexReference => (is => 'ro', isa => CloudDirectory_ObjectReference, required => 1, predicate => 1);
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);
  has RangesOnIndexedValues => (is => 'ro', isa => ArrayRef[CloudDirectory_ObjectAttributeRange], predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ListIndex');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/amazonclouddirectory/2017-01-11/index/targets');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::CloudDirectory::ListIndexResponse');

    sub params_map {
    our $Params_map ||= {
  'ParamInHeader' => {
                       'ConsistencyLevel' => 'x-amz-consistency-level',
                       'DirectoryArn' => 'x-amz-data-partition'
                     },
  'types' => {
               'RangesOnIndexedValues' => {
                                            'type' => 'ArrayRef[CloudDirectory_ObjectAttributeRange]',
                                            'class' => 'Paws::CloudDirectory::ObjectAttributeRange'
                                          },
               'IndexReference' => {
                                     'type' => 'CloudDirectory_ObjectReference',
                                     'class' => 'Paws::CloudDirectory::ObjectReference'
                                   },
               'DirectoryArn' => {
                                   'type' => 'Str'
                                 },
               'ConsistencyLevel' => {
                                       'type' => 'Str'
                                     },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'MaxResults' => {
                                 'type' => 'Int'
                               }
             },
  'IsRequired' => {
                    'DirectoryArn' => 1,
                    'IndexReference' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::ListIndex - Arguments for method ListIndex on L<Paws::CloudDirectory>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListIndex on the
L<Amazon CloudDirectory|Paws::CloudDirectory> service. Use the attributes of this class
as arguments to method ListIndex.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListIndex.

=head1 SYNOPSIS

    my $clouddirectory = Paws->service('CloudDirectory');
    my $ListIndexResponse = $clouddirectory->ListIndex(
      DirectoryArn   => 'MyArn',
      IndexReference => {
        Selector => 'MySelectorObjectReference',    # OPTIONAL
      },
      ConsistencyLevel      => 'SERIALIZABLE',      # OPTIONAL
      MaxResults            => 1,                   # OPTIONAL
      NextToken             => 'MyNextToken',       # OPTIONAL
      RangesOnIndexedValues => [
        {
          AttributeKey => {
            FacetName => 'MyFacetName',             # min: 1, max: 64
            Name      => 'MyAttributeName',         # min: 1, max: 230
            SchemaArn => 'MyArn',

          },    # OPTIONAL
          Range => {
            EndMode => 'FIRST'
            , # values: FIRST, LAST, LAST_BEFORE_MISSING_VALUES, INCLUSIVE, EXCLUSIVE
            StartMode => 'FIRST'
            , # values: FIRST, LAST, LAST_BEFORE_MISSING_VALUES, INCLUSIVE, EXCLUSIVE
            EndValue => {
              BinaryValue   => 'BlobBinaryAttributeValue',    # OPTIONAL
              BooleanValue  => 1,                             # OPTIONAL
              DatetimeValue => '1970-01-01T01:00:00',         # OPTIONAL
              NumberValue   => 'MyNumberAttributeValue',      # OPTIONAL
              StringValue   => 'MyStringAttributeValue',      # OPTIONAL
            },    # OPTIONAL
            StartValue => {
              BinaryValue   => 'BlobBinaryAttributeValue',    # OPTIONAL
              BooleanValue  => 1,                             # OPTIONAL
              DatetimeValue => '1970-01-01T01:00:00',         # OPTIONAL
              NumberValue   => 'MyNumberAttributeValue',      # OPTIONAL
              StringValue   => 'MyStringAttributeValue',      # OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
        },
        ...
      ],        # OPTIONAL
    );

    # Results:
    my $IndexAttachments = $ListIndexResponse->IndexAttachments;
    my $NextToken        = $ListIndexResponse->NextToken;

    # Returns a L<Paws::CloudDirectory::ListIndexResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/clouddirectory/ListIndex>

=head1 ATTRIBUTES


=head2 ConsistencyLevel => Str

The consistency level to execute the request at.

Valid values are: C<"SERIALIZABLE">, C<"EVENTUAL">

=head2 B<REQUIRED> DirectoryArn => Str

The ARN of the directory that the index exists in.



=head2 B<REQUIRED> IndexReference => CloudDirectory_ObjectReference

The reference to the index to list.



=head2 MaxResults => Int

The maximum number of objects in a single page to retrieve from the
index during a request. For more information, see Amazon Cloud
Directory Limits
(http://docs.aws.amazon.com/clouddirectory/latest/developerguide/limits.html).



=head2 NextToken => Str

The pagination token.



=head2 RangesOnIndexedValues => ArrayRef[CloudDirectory_ObjectAttributeRange]

Specifies the ranges of indexed values that you want to query.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListIndex in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

