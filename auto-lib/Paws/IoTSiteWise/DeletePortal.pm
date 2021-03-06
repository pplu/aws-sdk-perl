
package Paws::IoTSiteWise::DeletePortal;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'clientToken');
  has PortalId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'portalId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeletePortal');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/portals/{portalId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTSiteWise::DeletePortalResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::DeletePortal - Arguments for method DeletePortal on L<Paws::IoTSiteWise>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeletePortal on the
L<AWS IoT SiteWise|Paws::IoTSiteWise> service. Use the attributes of this class
as arguments to method DeletePortal.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeletePortal.

=head1 SYNOPSIS

    my $iotsitewise = Paws->service('IoTSiteWise');
    my $DeletePortalResponse = $iotsitewise->DeletePortal(
      PortalId    => 'MyID',
      ClientToken => 'MyClientToken',    # OPTIONAL
    );

    # Results:
    my $PortalStatus = $DeletePortalResponse->PortalStatus;

    # Returns a L<Paws::IoTSiteWise::DeletePortalResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotsitewise/DeletePortal>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique case-sensitive identifier that you can provide to ensure the
idempotency of the request. Don't reuse this client token if a new
idempotent request is required.



=head2 B<REQUIRED> PortalId => Str

The ID of the portal to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeletePortal in L<Paws::IoTSiteWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

