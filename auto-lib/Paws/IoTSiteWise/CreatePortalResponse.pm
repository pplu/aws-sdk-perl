
package Paws::IoTSiteWise::CreatePortalResponse;
  use Moose;
  has PortalArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'portalArn', required => 1);
  has PortalId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'portalId', required => 1);
  has PortalStartUrl => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'portalStartUrl', required => 1);
  has PortalStatus => (is => 'ro', isa => 'Paws::IoTSiteWise::PortalStatus', traits => ['NameInRequest'], request_name => 'portalStatus', required => 1);
  has SsoApplicationId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'ssoApplicationId', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::CreatePortalResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> PortalArn => Str

The ARN
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
of the portal, which has the following format.

C<arn:${Partition}:iotsitewise:${Region}:${Account}:portal/${PortalId}>


=head2 B<REQUIRED> PortalId => Str

The ID of the created portal.


=head2 B<REQUIRED> PortalStartUrl => Str

The URL for the AWS IoT SiteWise Monitor portal. You can use this URL
to access portals that use AWS SSO for authentication. For portals that
use IAM for authentication, you must use the AWS IoT SiteWise console
to get a URL that you can use to access the portal.


=head2 B<REQUIRED> PortalStatus => L<Paws::IoTSiteWise::PortalStatus>

The status of the portal, which contains a state (C<CREATING> after
successfully calling this operation) and any error message.


=head2 B<REQUIRED> SsoApplicationId => Str

The associated AWS SSO application ID, if the portal uses AWS SSO.


=head2 _request_id => Str


=cut

