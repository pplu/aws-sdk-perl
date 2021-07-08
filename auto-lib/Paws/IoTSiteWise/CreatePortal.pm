
package Paws::IoTSiteWise::CreatePortal;
  use Moose;
  has Alarms => (is => 'ro', isa => 'Paws::IoTSiteWise::Alarms', traits => ['NameInRequest'], request_name => 'alarms');
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has NotificationSenderEmail => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'notificationSenderEmail');
  has PortalAuthMode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'portalAuthMode');
  has PortalContactEmail => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'portalContactEmail', required => 1);
  has PortalDescription => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'portalDescription');
  has PortalLogoImageFile => (is => 'ro', isa => 'Paws::IoTSiteWise::ImageFile', traits => ['NameInRequest'], request_name => 'portalLogoImageFile');
  has PortalName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'portalName', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::IoTSiteWise::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePortal');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/portals');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTSiteWise::CreatePortalResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::CreatePortal - Arguments for method CreatePortal on L<Paws::IoTSiteWise>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreatePortal on the
L<AWS IoT SiteWise|Paws::IoTSiteWise> service. Use the attributes of this class
as arguments to method CreatePortal.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreatePortal.

=head1 SYNOPSIS

    my $iotsitewise = Paws->service('IoTSiteWise');
    my $CreatePortalResponse = $iotsitewise->CreatePortal(
      PortalContactEmail => 'MyEmail',
      PortalName         => 'MyName',
      RoleArn            => 'MyARN',
      Alarms             => {
        AlarmRoleArn          => 'MyARN',    # min: 1, max: 1600
        NotificationLambdaArn => 'MyARN',    # min: 1, max: 1600
      },    # OPTIONAL
      ClientToken             => 'MyClientToken',    # OPTIONAL
      NotificationSenderEmail => 'MyEmail',          # OPTIONAL
      PortalAuthMode          => 'IAM',              # OPTIONAL
      PortalDescription       => 'MyDescription',    # OPTIONAL
      PortalLogoImageFile     => {
        Data => 'BlobImageFileData',                 # min: 1, max: 1500000
        Type => 'PNG',                               # values: PNG

      },    # OPTIONAL
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $PortalArn        = $CreatePortalResponse->PortalArn;
    my $PortalId         = $CreatePortalResponse->PortalId;
    my $PortalStartUrl   = $CreatePortalResponse->PortalStartUrl;
    my $PortalStatus     = $CreatePortalResponse->PortalStatus;
    my $SsoApplicationId = $CreatePortalResponse->SsoApplicationId;

    # Returns a L<Paws::IoTSiteWise::CreatePortalResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotsitewise/CreatePortal>

=head1 ATTRIBUTES


=head2 Alarms => L<Paws::IoTSiteWise::Alarms>

Contains the configuration information of an alarm created in an AWS
IoT SiteWise Monitor portal. You can use the alarm to monitor an asset
property and get notified when the asset property value is outside a
specified range. For more information, see .



=head2 ClientToken => Str

A unique case-sensitive identifier that you can provide to ensure the
idempotency of the request. Don't reuse this client token if a new
idempotent request is required.



=head2 NotificationSenderEmail => Str

The email address that sends alarm notifications.

If you use the AWS IoT Events managed AWS Lambda function to manage
your emails, you must verify the sender email address in Amazon SES
(https://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-email-addresses.html).



=head2 PortalAuthMode => Str

The service to use to authenticate users to the portal. Choose from the
following options:

=over

=item *

C<SSO> E<ndash> The portal uses AWS Single Sign-On to authenticate
users and manage user permissions. Before you can create a portal that
uses AWS SSO, you must enable AWS SSO. For more information, see
Enabling AWS SSO
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/monitor-get-started.html#mon-gs-sso)
in the I<AWS IoT SiteWise User Guide>. This option is only available in
AWS Regions other than the China Regions.

=item *

C<IAM> E<ndash> The portal uses AWS Identity and Access Management
(IAM) to authenticate users and manage user permissions. This option is
only available in the China Regions.

=back

You can't change this value after you create a portal.

Default: C<SSO>

Valid values are: C<"IAM">, C<"SSO">

=head2 B<REQUIRED> PortalContactEmail => Str

The AWS administrator's contact email address.



=head2 PortalDescription => Str

A description for the portal.



=head2 PortalLogoImageFile => L<Paws::IoTSiteWise::ImageFile>

A logo image to display in the portal. Upload a square, high-resolution
image. The image is displayed on a dark background.



=head2 B<REQUIRED> PortalName => Str

A friendly name for the portal.



=head2 B<REQUIRED> RoleArn => Str

The ARN
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
of a service role that allows the portal's users to access your AWS IoT
SiteWise resources on your behalf. For more information, see Using
service roles for AWS IoT SiteWise Monitor
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/monitor-service-role.html)
in the I<AWS IoT SiteWise User Guide>.



=head2 Tags => L<Paws::IoTSiteWise::TagMap>

A list of key-value pairs that contain metadata for the portal. For
more information, see Tagging your AWS IoT SiteWise resources
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html)
in the I<AWS IoT SiteWise User Guide>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreatePortal in L<Paws::IoTSiteWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

