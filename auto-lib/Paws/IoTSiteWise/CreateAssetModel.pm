
package Paws::IoTSiteWise::CreateAssetModel;
  use Moose;
  has AssetModelCompositeModels => (is => 'ro', isa => 'ArrayRef[Paws::IoTSiteWise::AssetModelCompositeModelDefinition]', traits => ['NameInRequest'], request_name => 'assetModelCompositeModels');
  has AssetModelDescription => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'assetModelDescription');
  has AssetModelHierarchies => (is => 'ro', isa => 'ArrayRef[Paws::IoTSiteWise::AssetModelHierarchyDefinition]', traits => ['NameInRequest'], request_name => 'assetModelHierarchies');
  has AssetModelName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'assetModelName', required => 1);
  has AssetModelProperties => (is => 'ro', isa => 'ArrayRef[Paws::IoTSiteWise::AssetModelPropertyDefinition]', traits => ['NameInRequest'], request_name => 'assetModelProperties');
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has Tags => (is => 'ro', isa => 'Paws::IoTSiteWise::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAssetModel');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/asset-models');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTSiteWise::CreateAssetModelResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::CreateAssetModel - Arguments for method CreateAssetModel on L<Paws::IoTSiteWise>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateAssetModel on the
L<AWS IoT SiteWise|Paws::IoTSiteWise> service. Use the attributes of this class
as arguments to method CreateAssetModel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateAssetModel.

=head1 SYNOPSIS

    my $iotsitewise = Paws->service('IoTSiteWise');
    my $CreateAssetModelResponse = $iotsitewise->CreateAssetModel(
      AssetModelName            => 'MyName',
      AssetModelCompositeModels => [
        {
          Name        => 'MyName',           # min: 1, max: 256
          Type        => 'MyName',           # min: 1, max: 256
          Description => 'MyDescription',    # min: 1, max: 2048; OPTIONAL
          Properties  => [
            {
              DataType =>
                'STRING',    # values: STRING, INTEGER, DOUBLE, BOOLEAN, STRUCT
              Name => 'MyName',    # min: 1, max: 256
              Type => {
                Attribute => {
                  DefaultValue =>
                    'MyDefaultValue',    # min: 1, max: 1024; OPTIONAL
                },    # OPTIONAL
                Measurement => {

                },    # OPTIONAL
                Metric => {
                  Expression => 'MyExpression',    # min: 1, max: 1024
                  Variables  => [
                    {
                      Name  => 'MyVariableName',    # min: 1, max: 64
                      Value => {
                        PropertyId  => 'MyMacro',    # min: 1, max: 256
                        HierarchyId => 'MyMacro',    # min: 1, max: 256
                      },

                    },
                    ...
                  ],
                  Window => {
                    Tumbling => {
                      Interval => 'MyInterval',    # min: 2, max: 3

                    },    # OPTIONAL
                  },

                },    # OPTIONAL
                Transform => {
                  Expression => 'MyExpression',    # min: 1, max: 1024
                  Variables  => [
                    {
                      Name  => 'MyVariableName',    # min: 1, max: 64
                      Value => {
                        PropertyId  => 'MyMacro',    # min: 1, max: 256
                        HierarchyId => 'MyMacro',    # min: 1, max: 256
                      },

                    },
                    ...
                  ],

                },    # OPTIONAL
              },
              DataTypeSpec => 'MyName',            # min: 1, max: 256
              Unit         => 'MyPropertyUnit',    # min: 1, max: 256; OPTIONAL
            },
            ...
          ],    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      AssetModelDescription => 'MyDescription',    # OPTIONAL
      AssetModelHierarchies => [
        {
          ChildAssetModelId => 'MyID',      # min: 36, max: 36
          Name              => 'MyName',    # min: 1, max: 256

        },
        ...
      ],    # OPTIONAL
      AssetModelProperties => [
        {
          DataType =>
            'STRING',    # values: STRING, INTEGER, DOUBLE, BOOLEAN, STRUCT
          Name => 'MyName',    # min: 1, max: 256
          Type => {
            Attribute => {
              DefaultValue => 'MyDefaultValue',    # min: 1, max: 1024; OPTIONAL
            },    # OPTIONAL
            Measurement => {

            },    # OPTIONAL
            Metric => {
              Expression => 'MyExpression',    # min: 1, max: 1024
              Variables  => [
                {
                  Name  => 'MyVariableName',    # min: 1, max: 64
                  Value => {
                    PropertyId  => 'MyMacro',    # min: 1, max: 256
                    HierarchyId => 'MyMacro',    # min: 1, max: 256
                  },

                },
                ...
              ],
              Window => {
                Tumbling => {
                  Interval => 'MyInterval',    # min: 2, max: 3

                },    # OPTIONAL
              },

            },    # OPTIONAL
            Transform => {
              Expression => 'MyExpression',    # min: 1, max: 1024
              Variables  => [
                {
                  Name  => 'MyVariableName',    # min: 1, max: 64
                  Value => {
                    PropertyId  => 'MyMacro',    # min: 1, max: 256
                    HierarchyId => 'MyMacro',    # min: 1, max: 256
                  },

                },
                ...
              ],

            },    # OPTIONAL
          },
          DataTypeSpec => 'MyName',            # min: 1, max: 256
          Unit         => 'MyPropertyUnit',    # min: 1, max: 256; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      ClientToken => 'MyClientToken',    # OPTIONAL
      Tags        => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $AssetModelArn    = $CreateAssetModelResponse->AssetModelArn;
    my $AssetModelId     = $CreateAssetModelResponse->AssetModelId;
    my $AssetModelStatus = $CreateAssetModelResponse->AssetModelStatus;

    # Returns a L<Paws::IoTSiteWise::CreateAssetModelResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotsitewise/CreateAssetModel>

=head1 ATTRIBUTES


=head2 AssetModelCompositeModels => ArrayRef[L<Paws::IoTSiteWise::AssetModelCompositeModelDefinition>]

The composite asset models that are part of this asset model. Composite
asset models are asset models that contain specific properties. Each
composite model has a type that defines the properties that the
composite model supports. Use composite asset models to define alarms
on this asset model.



=head2 AssetModelDescription => Str

A description for the asset model.



=head2 AssetModelHierarchies => ArrayRef[L<Paws::IoTSiteWise::AssetModelHierarchyDefinition>]

The hierarchy definitions of the asset model. Each hierarchy specifies
an asset model whose assets can be children of any other assets created
from this asset model. For more information, see Asset hierarchies
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-hierarchies.html)
in the I<AWS IoT SiteWise User Guide>.

You can specify up to 10 hierarchies per asset model. For more
information, see Quotas
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/quotas.html)
in the I<AWS IoT SiteWise User Guide>.



=head2 B<REQUIRED> AssetModelName => Str

A unique, friendly name for the asset model.



=head2 AssetModelProperties => ArrayRef[L<Paws::IoTSiteWise::AssetModelPropertyDefinition>]

The property definitions of the asset model. For more information, see
Asset properties
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-properties.html)
in the I<AWS IoT SiteWise User Guide>.

You can specify up to 200 properties per asset model. For more
information, see Quotas
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/quotas.html)
in the I<AWS IoT SiteWise User Guide>.



=head2 ClientToken => Str

A unique case-sensitive identifier that you can provide to ensure the
idempotency of the request. Don't reuse this client token if a new
idempotent request is required.



=head2 Tags => L<Paws::IoTSiteWise::TagMap>

A list of key-value pairs that contain metadata for the asset model.
For more information, see Tagging your AWS IoT SiteWise resources
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html)
in the I<AWS IoT SiteWise User Guide>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateAssetModel in L<Paws::IoTSiteWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

