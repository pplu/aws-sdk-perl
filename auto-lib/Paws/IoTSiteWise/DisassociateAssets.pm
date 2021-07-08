
package Paws::IoTSiteWise::DisassociateAssets;
  use Moose;
  has AssetId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'assetId', required => 1);
  has ChildAssetId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'childAssetId', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has HierarchyId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'hierarchyId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DisassociateAssets');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/assets/{assetId}/disassociate');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::DisassociateAssets - Arguments for method DisassociateAssets on L<Paws::IoTSiteWise>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DisassociateAssets on the
L<AWS IoT SiteWise|Paws::IoTSiteWise> service. Use the attributes of this class
as arguments to method DisassociateAssets.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DisassociateAssets.

=head1 SYNOPSIS

    my $iotsitewise = Paws->service('IoTSiteWise');
    $iotsitewise->DisassociateAssets(
      AssetId      => 'MyID',
      ChildAssetId => 'MyID',
      HierarchyId  => 'MyID',
      ClientToken  => 'MyClientToken',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotsitewise/DisassociateAssets>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssetId => Str

The ID of the parent asset from which to disassociate the child asset.



=head2 B<REQUIRED> ChildAssetId => Str

The ID of the child asset to disassociate.



=head2 ClientToken => Str

A unique case-sensitive identifier that you can provide to ensure the
idempotency of the request. Don't reuse this client token if a new
idempotent request is required.



=head2 B<REQUIRED> HierarchyId => Str

The ID of a hierarchy in the parent asset's model. Hierarchies allow
different groupings of assets to be formed that all come from the same
asset model. You can use the hierarchy ID to identify the correct asset
to disassociate. For more information, see Asset hierarchies
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-hierarchies.html)
in the I<AWS IoT SiteWise User Guide>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DisassociateAssets in L<Paws::IoTSiteWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

