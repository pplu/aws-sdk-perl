
package Paws::LicenseManager::GetLicenseConfigurationResponse;
  use Moose;
  has ConsumedLicenses => (is => 'ro', isa => 'Int');
  has ConsumedLicenseSummaryList => (is => 'ro', isa => 'ArrayRef[Paws::LicenseManager::ConsumedLicenseSummary]');
  has Description => (is => 'ro', isa => 'Str');
  has LicenseConfigurationArn => (is => 'ro', isa => 'Str');
  has LicenseConfigurationId => (is => 'ro', isa => 'Str');
  has LicenseCount => (is => 'ro', isa => 'Int');
  has LicenseCountHardLimit => (is => 'ro', isa => 'Bool');
  has LicenseCountingType => (is => 'ro', isa => 'Str');
  has LicenseRules => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ManagedResourceSummaryList => (is => 'ro', isa => 'ArrayRef[Paws::LicenseManager::ManagedResourceSummary]');
  has Name => (is => 'ro', isa => 'Str');
  has OwnerAccountId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::LicenseManager::Tag]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::LicenseManager::GetLicenseConfigurationResponse

=head1 ATTRIBUTES


=head2 ConsumedLicenses => Int

Number of licenses assigned to resources.


=head2 ConsumedLicenseSummaryList => ArrayRef[L<Paws::LicenseManager::ConsumedLicenseSummary>]

List of summaries for consumed licenses used by various resources.


=head2 Description => Str

Description of the license configuration.


=head2 LicenseConfigurationArn => Str

ARN of the license configuration requested.


=head2 LicenseConfigurationId => Str

Unique ID for the license configuration.


=head2 LicenseCount => Int

Number of available licenses.


=head2 LicenseCountHardLimit => Bool

Sets the number of available licenses as a hard limit.


=head2 LicenseCountingType => Str

Dimension on which the licenses are counted (for example, instances,
cores, sockets, or VCPUs).

Valid values are: C<"vCPU">, C<"Instance">, C<"Core">, C<"Socket">
=head2 LicenseRules => ArrayRef[Str|Undef]

List of flexible text strings designating license rules.


=head2 ManagedResourceSummaryList => ArrayRef[L<Paws::LicenseManager::ManagedResourceSummary>]

List of summaries of managed resources.


=head2 Name => Str

Name of the license configuration.


=head2 OwnerAccountId => Str

Owner account ID for the license configuration.


=head2 Status => Str

License configuration status (active, etc.).


=head2 Tags => ArrayRef[L<Paws::LicenseManager::Tag>]

List of tags attached to the license configuration.


=head2 _request_id => Str


=cut

1;