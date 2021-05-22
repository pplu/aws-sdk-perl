
package Paws::IoTSiteWise::DescribeAssetModel;
  use Moose;
  has AssetModelId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'assetModelId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAssetModel');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/asset-models/{assetModelId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTSiteWise::DescribeAssetModelResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::DescribeAssetModel - Arguments for method DescribeAssetModel on L<Paws::IoTSiteWise>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeAssetModel on the
L<AWS IoT SiteWise|Paws::IoTSiteWise> service. Use the attributes of this class
as arguments to method DescribeAssetModel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeAssetModel.

=head1 SYNOPSIS

    my $iotsitewise = Paws->service('IoTSiteWise');
    my $DescribeAssetModelResponse = $iotsitewise->DescribeAssetModel(
      AssetModelId => 'MyID',

    );

    # Results:
    my $AssetModelArn = $DescribeAssetModelResponse->AssetModelArn;
    my $AssetModelCompositeModels =
      $DescribeAssetModelResponse->AssetModelCompositeModels;
    my $AssetModelCreationDate =
      $DescribeAssetModelResponse->AssetModelCreationDate;
    my $AssetModelDescription =
      $DescribeAssetModelResponse->AssetModelDescription;
    my $AssetModelHierarchies =
      $DescribeAssetModelResponse->AssetModelHierarchies;
    my $AssetModelId = $DescribeAssetModelResponse->AssetModelId;
    my $AssetModelLastUpdateDate =
      $DescribeAssetModelResponse->AssetModelLastUpdateDate;
    my $AssetModelName = $DescribeAssetModelResponse->AssetModelName;
    my $AssetModelProperties =
      $DescribeAssetModelResponse->AssetModelProperties;
    my $AssetModelStatus = $DescribeAssetModelResponse->AssetModelStatus;

    # Returns a L<Paws::IoTSiteWise::DescribeAssetModelResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotsitewise/DescribeAssetModel>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssetModelId => Str

The ID of the asset model.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeAssetModel in L<Paws::IoTSiteWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

