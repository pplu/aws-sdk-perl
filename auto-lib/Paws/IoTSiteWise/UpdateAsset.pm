
package Paws::IoTSiteWise::UpdateAsset;
  use Moose;
  has AssetId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'assetId', required => 1);
  has AssetName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'assetName', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateAsset');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/assets/{assetId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTSiteWise::UpdateAssetResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::UpdateAsset - Arguments for method UpdateAsset on L<Paws::IoTSiteWise>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateAsset on the
L<AWS IoT SiteWise|Paws::IoTSiteWise> service. Use the attributes of this class
as arguments to method UpdateAsset.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateAsset.

=head1 SYNOPSIS

    my $iotsitewise = Paws->service('IoTSiteWise');
    my $UpdateAssetResponse = $iotsitewise->UpdateAsset(
      AssetId     => 'MyID',
      AssetName   => 'MyName',
      ClientToken => 'MyClientToken',    # OPTIONAL
    );

    # Results:
    my $AssetStatus = $UpdateAssetResponse->AssetStatus;

    # Returns a L<Paws::IoTSiteWise::UpdateAssetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotsitewise/UpdateAsset>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssetId => Str

The ID of the asset to update.



=head2 B<REQUIRED> AssetName => Str

A unique, friendly name for the asset.



=head2 ClientToken => Str

A unique case-sensitive identifier that you can provide to ensure the
idempotency of the request. Don't reuse this client token if a new
idempotent request is required.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateAsset in L<Paws::IoTSiteWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

