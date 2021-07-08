
package Paws::LicenseManager::GetServiceSettingsResponse;
  use Moose;
  has EnableCrossAccountsDiscovery => (is => 'ro', isa => 'Bool');
  has LicenseManagerResourceShareArn => (is => 'ro', isa => 'Str');
  has OrganizationConfiguration => (is => 'ro', isa => 'Paws::LicenseManager::OrganizationConfiguration');
  has S3BucketArn => (is => 'ro', isa => 'Str');
  has SnsTopicArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::LicenseManager::GetServiceSettingsResponse

=head1 ATTRIBUTES


=head2 EnableCrossAccountsDiscovery => Bool

Indicates whether cross-account discovery is enabled.


=head2 LicenseManagerResourceShareArn => Str

Amazon Resource Name (ARN) of the AWS resource share. The License
Manager management account provides member accounts with access to this
share.


=head2 OrganizationConfiguration => L<Paws::LicenseManager::OrganizationConfiguration>

Indicates whether AWS Organizations is integrated with License Manager
for cross-account discovery.


=head2 S3BucketArn => Str

Regional S3 bucket path for storing reports, license trail event data,
discovery data, and so on.


=head2 SnsTopicArn => Str

SNS topic configured to receive notifications from License Manager.


=head2 _request_id => Str


=cut

1;