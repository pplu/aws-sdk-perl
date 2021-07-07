
package Paws::IoTSiteWise::DescribePortal;
  use Moose;
  has PortalId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'portalId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribePortal');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/portals/{portalId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTSiteWise::DescribePortalResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::DescribePortal - Arguments for method DescribePortal on L<Paws::IoTSiteWise>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribePortal on the
L<AWS IoT SiteWise|Paws::IoTSiteWise> service. Use the attributes of this class
as arguments to method DescribePortal.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribePortal.

=head1 SYNOPSIS

    my $iotsitewise = Paws->service('IoTSiteWise');
    my $DescribePortalResponse = $iotsitewise->DescribePortal(
      PortalId => 'MyID',

    );

    # Results:
    my $Alarms = $DescribePortalResponse->Alarms;
    my $NotificationSenderEmail =
      $DescribePortalResponse->NotificationSenderEmail;
    my $PortalArn            = $DescribePortalResponse->PortalArn;
    my $PortalAuthMode       = $DescribePortalResponse->PortalAuthMode;
    my $PortalClientId       = $DescribePortalResponse->PortalClientId;
    my $PortalContactEmail   = $DescribePortalResponse->PortalContactEmail;
    my $PortalCreationDate   = $DescribePortalResponse->PortalCreationDate;
    my $PortalDescription    = $DescribePortalResponse->PortalDescription;
    my $PortalId             = $DescribePortalResponse->PortalId;
    my $PortalLastUpdateDate = $DescribePortalResponse->PortalLastUpdateDate;
    my $PortalLogoImageLocation =
      $DescribePortalResponse->PortalLogoImageLocation;
    my $PortalName     = $DescribePortalResponse->PortalName;
    my $PortalStartUrl = $DescribePortalResponse->PortalStartUrl;
    my $PortalStatus   = $DescribePortalResponse->PortalStatus;
    my $RoleArn        = $DescribePortalResponse->RoleArn;

    # Returns a L<Paws::IoTSiteWise::DescribePortalResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotsitewise/DescribePortal>

=head1 ATTRIBUTES


=head2 B<REQUIRED> PortalId => Str

The ID of the portal.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribePortal in L<Paws::IoTSiteWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

