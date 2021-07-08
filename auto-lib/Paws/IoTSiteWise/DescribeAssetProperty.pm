
package Paws::IoTSiteWise::DescribeAssetProperty;
  use Moose;
  has AssetId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'assetId', required => 1);
  has PropertyId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'propertyId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAssetProperty');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/assets/{assetId}/properties/{propertyId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTSiteWise::DescribeAssetPropertyResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::DescribeAssetProperty - Arguments for method DescribeAssetProperty on L<Paws::IoTSiteWise>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeAssetProperty on the
L<AWS IoT SiteWise|Paws::IoTSiteWise> service. Use the attributes of this class
as arguments to method DescribeAssetProperty.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeAssetProperty.

=head1 SYNOPSIS

    my $iotsitewise = Paws->service('IoTSiteWise');
    my $DescribeAssetPropertyResponse = $iotsitewise->DescribeAssetProperty(
      AssetId    => 'MyID',
      PropertyId => 'MyID',

    );

    # Results:
    my $AssetId        = $DescribeAssetPropertyResponse->AssetId;
    my $AssetModelId   = $DescribeAssetPropertyResponse->AssetModelId;
    my $AssetName      = $DescribeAssetPropertyResponse->AssetName;
    my $AssetProperty  = $DescribeAssetPropertyResponse->AssetProperty;
    my $CompositeModel = $DescribeAssetPropertyResponse->CompositeModel;

    # Returns a L<Paws::IoTSiteWise::DescribeAssetPropertyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotsitewise/DescribeAssetProperty>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssetId => Str

The ID of the asset.



=head2 B<REQUIRED> PropertyId => Str

The ID of the asset property.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeAssetProperty in L<Paws::IoTSiteWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

