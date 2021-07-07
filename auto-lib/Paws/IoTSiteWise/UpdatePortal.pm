
package Paws::IoTSiteWise::UpdatePortal;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has PortalContactEmail => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'portalContactEmail', required => 1);
  has PortalDescription => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'portalDescription');
  has PortalId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'portalId', required => 1);
  has PortalLogoImage => (is => 'ro', isa => 'Paws::IoTSiteWise::Image', traits => ['NameInRequest'], request_name => 'portalLogoImage');
  has PortalName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'portalName', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdatePortal');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/portals/{portalId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTSiteWise::UpdatePortalResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::UpdatePortal - Arguments for method UpdatePortal on L<Paws::IoTSiteWise>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdatePortal on the
L<AWS IoT SiteWise|Paws::IoTSiteWise> service. Use the attributes of this class
as arguments to method UpdatePortal.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdatePortal.

=head1 SYNOPSIS

    my $iotsitewise = Paws->service('IoTSiteWise');
    my $UpdatePortalResponse = $iotsitewise->UpdatePortal(
      PortalContactEmail => 'MyEmail',
      PortalId           => 'MyID',
      PortalName         => 'MyName',
      RoleArn            => 'MyARN',
      ClientToken        => 'MyClientToken',    # OPTIONAL
      PortalDescription  => 'MyDescription',    # OPTIONAL
      PortalLogoImage    => {
        File => {
          Data => 'BlobImageFileData',    # min: 1, max: 1500000
          Type => 'PNG',                  # values: PNG

        },    # OPTIONAL
        Id => 'MyID',    # min: 36, max: 36
      },    # OPTIONAL
    );

    # Results:
    my $PortalStatus = $UpdatePortalResponse->PortalStatus;

    # Returns a L<Paws::IoTSiteWise::UpdatePortalResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotsitewise/UpdatePortal>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique case-sensitive identifier that you can provide to ensure the
idempotency of the request. Don't reuse this client token if a new
idempotent request is required.



=head2 B<REQUIRED> PortalContactEmail => Str

The AWS administrator's contact email address.



=head2 PortalDescription => Str

A new description for the portal.



=head2 B<REQUIRED> PortalId => Str

The ID of the portal to update.



=head2 PortalLogoImage => L<Paws::IoTSiteWise::Image>





=head2 B<REQUIRED> PortalName => Str

A new friendly name for the portal.



=head2 B<REQUIRED> RoleArn => Str

The ARN
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
of a service role that allows the portal's users to access your AWS IoT
SiteWise resources on your behalf. For more information, see Using
service roles for AWS IoT SiteWise Monitor
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/monitor-service-role.html)
in the I<AWS IoT SiteWise User Guide>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdatePortal in L<Paws::IoTSiteWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

