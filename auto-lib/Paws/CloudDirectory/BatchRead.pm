
package Paws::CloudDirectory::BatchRead;
  use Moose;
  has ConsistencyLevel => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-consistency-level');
  has DirectoryArn => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-data-partition', required => 1);
  has Operations => (is => 'ro', isa => 'ArrayRef[Paws::CloudDirectory::BatchReadOperation]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchRead');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/amazonclouddirectory/2017-01-11/batchread');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudDirectory::BatchReadResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::BatchRead - Arguments for method BatchRead on L<Paws::CloudDirectory>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchRead on the
L<Amazon CloudDirectory|Paws::CloudDirectory> service. Use the attributes of this class
as arguments to method BatchRead.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchRead.

=head1 SYNOPSIS

    my $clouddirectory = Paws->service('CloudDirectory');
    my $BatchReadResponse = $clouddirectory->BatchRead(
      DirectoryArn => 'MyArn',
      Operations   => [
        {
          GetLinkAttributes => {
            AttributeNames => [
              'MyAttributeName', ...    # min: 1, max: 230; OPTIONAL
            ],
            TypedLinkSpecifier => {
              IdentityAttributeValues => [
                {
                  AttributeName =>
                    'MyAttributeName',    # min: 1, max: 230; OPTIONAL
                  Value => {
                    BinaryValue   => 'BlobBinaryAttributeValue',    # OPTIONAL
                    BooleanValue  => 1,                             # OPTIONAL
                    DatetimeValue => '1970-01-01T01:00:00',         # OPTIONAL
                    NumberValue   => 'MyNumberAttributeValue',      # OPTIONAL
                    StringValue   => 'MyStringAttributeValue',      # OPTIONAL
                  },    # OPTIONAL

                },
                ...
              ],
              SourceObjectReference => {
                Selector => 'MySelectorObjectReference',    # OPTIONAL
              },
              TargetObjectReference => {
                Selector => 'MySelectorObjectReference',    # OPTIONAL
              },
              TypedLinkFacet => {
                SchemaArn     => 'MyArn',
                TypedLinkName => 'MyTypedLinkName',

              },    # OPTIONAL

            },

          },    # OPTIONAL
          GetObjectAttributes => {
            AttributeNames => [
              'MyAttributeName', ...    # min: 1, max: 230; OPTIONAL
            ],
            ObjectReference => {
              Selector => 'MySelectorObjectReference',    # OPTIONAL
            },
            SchemaFacet => {
              FacetName => 'MyFacetName',    # min: 1, max: 64; OPTIONAL
              SchemaArn => 'MyArn',
            },    # OPTIONAL

          },    # OPTIONAL
          GetObjectInformation => {
            ObjectReference => {
              Selector => 'MySelectorObjectReference',    # OPTIONAL
            },

          },    # OPTIONAL
          ListAttachedIndices => {
            TargetReference => {
              Selector => 'MySelectorObjectReference',    # OPTIONAL
            },
            MaxResults => 1,                              # min: 1; OPTIONAL
            NextToken  => 'MyNextToken',                  # OPTIONAL
          },    # OPTIONAL
          ListIncomingTypedLinks => {
            ObjectReference => {
              Selector => 'MySelectorObjectReference',    # OPTIONAL
            },
            FilterAttributeRanges => [
              {
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
                },
                AttributeName => 'MyAttributeName', # min: 1, max: 230; OPTIONAL
              },
              ...
            ],                                      # OPTIONAL
            FilterTypedLink => {
              SchemaArn     => 'MyArn',
              TypedLinkName => 'MyTypedLinkName',

            },                                      # OPTIONAL
            MaxResults => 1,                        # min: 1; OPTIONAL
            NextToken  => 'MyNextToken',            # OPTIONAL
          },    # OPTIONAL
          ListIndex => {
            IndexReference => {
              Selector => 'MySelectorObjectReference',    # OPTIONAL
            },
            MaxResults            => 1,                   # min: 1; OPTIONAL
            NextToken             => 'MyNextToken',       # OPTIONAL
            RangesOnIndexedValues => [
              {
                AttributeKey => {
                  FacetName => 'MyFacetName',       # min: 1, max: 64; OPTIONAL
                  Name      => 'MyAttributeName',   # min: 1, max: 230; OPTIONAL
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
                },
              },
              ...
            ],          # OPTIONAL
          },    # OPTIONAL
          ListObjectAttributes => {
            ObjectReference => {
              Selector => 'MySelectorObjectReference',    # OPTIONAL
            },
            FacetFilter => {
              FacetName => 'MyFacetName',    # min: 1, max: 64; OPTIONAL
              SchemaArn => 'MyArn',
            },    # OPTIONAL
            MaxResults => 1,                # min: 1; OPTIONAL
            NextToken  => 'MyNextToken',    # OPTIONAL
          },    # OPTIONAL
          ListObjectChildren => {
            ObjectReference => {
              Selector => 'MySelectorObjectReference',    # OPTIONAL
            },
            MaxResults => 1,                              # min: 1; OPTIONAL
            NextToken  => 'MyNextToken',                  # OPTIONAL
          },    # OPTIONAL
          ListObjectParentPaths => {
            ObjectReference => {
              Selector => 'MySelectorObjectReference',    # OPTIONAL
            },
            MaxResults => 1,                              # min: 1; OPTIONAL
            NextToken  => 'MyNextToken',                  # OPTIONAL
          },    # OPTIONAL
          ListObjectParents => {
            ObjectReference => {
              Selector => 'MySelectorObjectReference',    # OPTIONAL
            },
            MaxResults => 1,                              # min: 1; OPTIONAL
            NextToken  => 'MyNextToken',                  # OPTIONAL
          },    # OPTIONAL
          ListObjectPolicies => {
            ObjectReference => {
              Selector => 'MySelectorObjectReference',    # OPTIONAL
            },
            MaxResults => 1,                              # min: 1; OPTIONAL
            NextToken  => 'MyNextToken',                  # OPTIONAL
          },    # OPTIONAL
          ListOutgoingTypedLinks => {
            ObjectReference => {
              Selector => 'MySelectorObjectReference',    # OPTIONAL
            },
            FilterAttributeRanges => [
              {
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
                },
                AttributeName => 'MyAttributeName', # min: 1, max: 230; OPTIONAL
              },
              ...
            ],                                      # OPTIONAL
            FilterTypedLink => {
              SchemaArn     => 'MyArn',
              TypedLinkName => 'MyTypedLinkName',

            },                                      # OPTIONAL
            MaxResults => 1,                        # min: 1; OPTIONAL
            NextToken  => 'MyNextToken',            # OPTIONAL
          },    # OPTIONAL
          ListPolicyAttachments => {
            PolicyReference => {
              Selector => 'MySelectorObjectReference',    # OPTIONAL
            },
            MaxResults => 1,                              # min: 1; OPTIONAL
            NextToken  => 'MyNextToken',                  # OPTIONAL
          },    # OPTIONAL
          LookupPolicy => {
            ObjectReference => {
              Selector => 'MySelectorObjectReference',    # OPTIONAL
            },
            MaxResults => 1,                              # min: 1; OPTIONAL
            NextToken  => 'MyNextToken',                  # OPTIONAL
          },    # OPTIONAL
        },
        ...
      ],
      ConsistencyLevel => 'SERIALIZABLE',    # OPTIONAL
    );

    # Results:
    my $Responses = $BatchReadResponse->Responses;

    # Returns a L<Paws::CloudDirectory::BatchReadResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/clouddirectory/BatchRead>

=head1 ATTRIBUTES


=head2 ConsistencyLevel => Str

Represents the manner and timing in which the successful write or
update of an object is reflected in a subsequent read operation of that
same object.

Valid values are: C<"SERIALIZABLE">, C<"EVENTUAL">

=head2 B<REQUIRED> DirectoryArn => Str

The Amazon Resource Name (ARN) that is associated with the Directory.
For more information, see arns.



=head2 B<REQUIRED> Operations => ArrayRef[L<Paws::CloudDirectory::BatchReadOperation>]

A list of operations that are part of the batch.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchRead in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

