
package Paws::CloudDirectory::BatchWrite;
  use Moose;
  has DirectoryArn => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-data-partition', required => 1);
  has Operations => (is => 'ro', isa => 'ArrayRef[Paws::CloudDirectory::BatchWriteOperation]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchWrite');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/amazonclouddirectory/2017-01-11/batchwrite');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudDirectory::BatchWriteResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::BatchWrite - Arguments for method BatchWrite on L<Paws::CloudDirectory>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchWrite on the
L<Amazon CloudDirectory|Paws::CloudDirectory> service. Use the attributes of this class
as arguments to method BatchWrite.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchWrite.

=head1 SYNOPSIS

    my $clouddirectory = Paws->service('CloudDirectory');
    my $BatchWriteResponse = $clouddirectory->BatchWrite(
      DirectoryArn => 'MyArn',
      Operations   => [
        {
          AddFacetToObject => {
            ObjectAttributeList => [
              {
                Key => {
                  FacetName => 'MyFacetName',        # min: 1, max: 64
                  Name      => 'MyAttributeName',    # min: 1, max: 230
                  SchemaArn => 'MyArn',

                },    # OPTIONAL
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
            ObjectReference => {
              Selector => 'MySelectorObjectReference',    # OPTIONAL
            },
            SchemaFacet => {
              FacetName => 'MyFacetName',                 # min: 1, max: 64
              SchemaArn => 'MyArn',
            },

          },    # OPTIONAL
          AttachObject => {
            ChildReference => {
              Selector => 'MySelectorObjectReference',    # OPTIONAL
            },
            LinkName        => 'MyLinkName',              # min: 1, max: 64
            ParentReference => {
              Selector => 'MySelectorObjectReference',    # OPTIONAL
            },

          },    # OPTIONAL
          AttachPolicy => {
            ObjectReference => {
              Selector => 'MySelectorObjectReference',    # OPTIONAL
            },
            PolicyReference => {
              Selector => 'MySelectorObjectReference',    # OPTIONAL
            },

          },    # OPTIONAL
          AttachToIndex => {
            IndexReference => {
              Selector => 'MySelectorObjectReference',    # OPTIONAL
            },
            TargetReference => {
              Selector => 'MySelectorObjectReference',    # OPTIONAL
            },

          },    # OPTIONAL
          AttachTypedLink => {
            Attributes => [
              {
                AttributeName => 'MyAttributeName',    # min: 1, max: 230
                Value         => {
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

            },

          },    # OPTIONAL
          CreateIndex => {
            IsUnique                    => 1,
            OrderedIndexedAttributeList => [
              {
                FacetName => 'MyFacetName',        # min: 1, max: 64
                Name      => 'MyAttributeName',    # min: 1, max: 230
                SchemaArn => 'MyArn',

              },
              ...                                  # OPTIONAL
            ],
            BatchReferenceName => 'MyBatchReferenceName',    # OPTIONAL
            LinkName           => 'MyLinkName',              # min: 1, max: 64
            ParentReference    => {
              Selector => 'MySelectorObjectReference',       # OPTIONAL
            },
          },    # OPTIONAL
          CreateObject => {
            ObjectAttributeList => [
              {
                Key => {
                  FacetName => 'MyFacetName',        # min: 1, max: 64
                  Name      => 'MyAttributeName',    # min: 1, max: 230
                  SchemaArn => 'MyArn',

                },    # OPTIONAL
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
            SchemaFacet => [
              {
                FacetName => 'MyFacetName',    # min: 1, max: 64
                SchemaArn => 'MyArn',
              },
              ...
            ],
            BatchReferenceName => 'MyBatchReferenceName',    # OPTIONAL
            LinkName           => 'MyLinkName',              # min: 1, max: 64
            ParentReference    => {
              Selector => 'MySelectorObjectReference',       # OPTIONAL
            },
          },    # OPTIONAL
          DeleteObject => {
            ObjectReference => {
              Selector => 'MySelectorObjectReference',    # OPTIONAL
            },

          },    # OPTIONAL
          DetachFromIndex => {
            IndexReference => {
              Selector => 'MySelectorObjectReference',    # OPTIONAL
            },
            TargetReference => {
              Selector => 'MySelectorObjectReference',    # OPTIONAL
            },

          },    # OPTIONAL
          DetachObject => {
            LinkName        => 'MyLinkName',    # min: 1, max: 64
            ParentReference => {
              Selector => 'MySelectorObjectReference',    # OPTIONAL
            },
            BatchReferenceName => 'MyBatchReferenceName',    # OPTIONAL
          },    # OPTIONAL
          DetachPolicy => {
            ObjectReference => {
              Selector => 'MySelectorObjectReference',    # OPTIONAL
            },
            PolicyReference => {
              Selector => 'MySelectorObjectReference',    # OPTIONAL
            },

          },    # OPTIONAL
          DetachTypedLink => {
            TypedLinkSpecifier => {
              IdentityAttributeValues => [
                {
                  AttributeName => 'MyAttributeName',    # min: 1, max: 230
                  Value         => {
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

              },

            },

          },    # OPTIONAL
          RemoveFacetFromObject => {
            ObjectReference => {
              Selector => 'MySelectorObjectReference',    # OPTIONAL
            },
            SchemaFacet => {
              FacetName => 'MyFacetName',                 # min: 1, max: 64
              SchemaArn => 'MyArn',
            },

          },    # OPTIONAL
          UpdateLinkAttributes => {
            AttributeUpdates => [
              {
                AttributeAction => {
                  AttributeActionType => 'CREATE_OR_UPDATE'
                  ,    # values: CREATE_OR_UPDATE, DELETE; OPTIONAL
                  AttributeUpdateValue => {
                    BinaryValue   => 'BlobBinaryAttributeValue',    # OPTIONAL
                    BooleanValue  => 1,                             # OPTIONAL
                    DatetimeValue => '1970-01-01T01:00:00',         # OPTIONAL
                    NumberValue   => 'MyNumberAttributeValue',      # OPTIONAL
                    StringValue   => 'MyStringAttributeValue',      # OPTIONAL
                  },    # OPTIONAL
                },    # OPTIONAL
                AttributeKey => {
                  FacetName => 'MyFacetName',        # min: 1, max: 64
                  Name      => 'MyAttributeName',    # min: 1, max: 230
                  SchemaArn => 'MyArn',

                },    # OPTIONAL
              },
              ...
            ],
            TypedLinkSpecifier => {
              IdentityAttributeValues => [
                {
                  AttributeName => 'MyAttributeName',    # min: 1, max: 230
                  Value         => {
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

              },

            },

          },    # OPTIONAL
          UpdateObjectAttributes => {
            AttributeUpdates => [
              {
                ObjectAttributeAction => {
                  ObjectAttributeActionType => 'CREATE_OR_UPDATE'
                  ,    # values: CREATE_OR_UPDATE, DELETE; OPTIONAL
                  ObjectAttributeUpdateValue => {
                    BinaryValue   => 'BlobBinaryAttributeValue',    # OPTIONAL
                    BooleanValue  => 1,                             # OPTIONAL
                    DatetimeValue => '1970-01-01T01:00:00',         # OPTIONAL
                    NumberValue   => 'MyNumberAttributeValue',      # OPTIONAL
                    StringValue   => 'MyStringAttributeValue',      # OPTIONAL
                  },    # OPTIONAL
                },    # OPTIONAL
                ObjectAttributeKey => {
                  FacetName => 'MyFacetName',        # min: 1, max: 64
                  Name      => 'MyAttributeName',    # min: 1, max: 230
                  SchemaArn => 'MyArn',

                },    # OPTIONAL
              },
              ...
            ],
            ObjectReference => {
              Selector => 'MySelectorObjectReference',    # OPTIONAL
            },

          },    # OPTIONAL
        },
        ...
      ],

    );

    # Results:
    my $Responses = $BatchWriteResponse->Responses;

    # Returns a L<Paws::CloudDirectory::BatchWriteResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/clouddirectory/BatchWrite>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DirectoryArn => Str

The Amazon Resource Name (ARN) that is associated with the Directory.
For more information, see arns.



=head2 B<REQUIRED> Operations => ArrayRef[L<Paws::CloudDirectory::BatchWriteOperation>]

A list of operations that are part of the batch.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchWrite in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

