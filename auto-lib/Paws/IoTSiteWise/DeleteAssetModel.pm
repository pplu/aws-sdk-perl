
package Paws::IoTSiteWise::DeleteAssetModel;
  use Moose;
  has AssetModelId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'assetModelId', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'clientToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteAssetModel');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/asset-models/{assetModelId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTSiteWise::DeleteAssetModelResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::DeleteAssetModel - Arguments for method DeleteAssetModel on L<Paws::IoTSiteWise>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteAssetModel on the
L<AWS IoT SiteWise|Paws::IoTSiteWise> service. Use the attributes of this class
as arguments to method DeleteAssetModel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteAssetModel.

=head1 SYNOPSIS

    my $iotsitewise = Paws->service('IoTSiteWise');
    my $DeleteAssetModelResponse = $iotsitewise->DeleteAssetModel(
      AssetModelId => 'MyID',
      ClientToken  => 'MyClientToken',    # OPTIONAL
    );

    # Results:
    my $AssetModelStatus = $DeleteAssetModelResponse->AssetModelStatus;

    # Returns a L<Paws::IoTSiteWise::DeleteAssetModelResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotsitewise/DeleteAssetModel>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssetModelId => Str

The ID of the asset model to delete.



=head2 ClientToken => Str

A unique case-sensitive identifier that you can provide to ensure the
idempotency of the request. Don't reuse this client token if a new
idempotent request is required.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteAssetModel in L<Paws::IoTSiteWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

