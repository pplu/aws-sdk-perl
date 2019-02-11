
package Paws::LicenseManager::GetServiceSettingsResponse;
  use Moose;
  has EnableCrossAccountsDiscovery => (is => 'ro', isa => 'Bool');
  has OrganizationConfiguration => (is => 'ro', isa => 'Paws::LicenseManager::OrganizationConfiguration');
  has S3BucketArn => (is => 'ro', isa => 'Str');
  has SnsTopicArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::LicenseManager::GetServiceSettingsResponse

=head1 ATTRIBUTES


=head2 EnableCrossAccountsDiscovery => Bool

Indicates whether cross-account discovery has been enabled.


=head2 OrganizationConfiguration => L<Paws::LicenseManager::OrganizationConfiguration>

Indicates whether AWS Organizations has been integrated with License
Manager for cross-account discovery.


=head2 S3BucketArn => Str

Regional S3 bucket path for storing reports, license trail event data,
discovery data, etc.


=head2 SnsTopicArn => Str

SNS topic configured to receive notifications from License Manager.


=head2 _request_id => Str


=cut

1;