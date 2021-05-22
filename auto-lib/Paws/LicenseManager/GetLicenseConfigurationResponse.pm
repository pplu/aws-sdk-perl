
package Paws::LicenseManager::GetLicenseConfigurationResponse;
  use Moose;
  has AutomatedDiscoveryInformation => (is => 'ro', isa => 'Paws::LicenseManager::AutomatedDiscoveryInformation');
  has ConsumedLicenses => (is => 'ro', isa => 'Int');
  has ConsumedLicenseSummaryList => (is => 'ro', isa => 'ArrayRef[Paws::LicenseManager::ConsumedLicenseSummary]');
  has Description => (is => 'ro', isa => 'Str');
  has DisassociateWhenNotFound => (is => 'ro', isa => 'Bool');
  has LicenseConfigurationArn => (is => 'ro', isa => 'Str');
  has LicenseConfigurationId => (is => 'ro', isa => 'Str');
  has LicenseCount => (is => 'ro', isa => 'Int');
  has LicenseCountHardLimit => (is => 'ro', isa => 'Bool');
  has LicenseCountingType => (is => 'ro', isa => 'Str');
  has LicenseRules => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ManagedResourceSummaryList => (is => 'ro', isa => 'ArrayRef[Paws::LicenseManager::ManagedResourceSummary]');
  has Name => (is => 'ro', isa => 'Str');
  has OwnerAccountId => (is => 'ro', isa => 'Str');
  has ProductInformationList => (is => 'ro', isa => 'ArrayRef[Paws::LicenseManager::ProductInformation]');
  has Status => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::LicenseManager::Tag]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::LicenseManager::GetLicenseConfigurationResponse

=head1 ATTRIBUTES


=head2 AutomatedDiscoveryInformation => L<Paws::LicenseManager::AutomatedDiscoveryInformation>

Automated discovery information.


=head2 ConsumedLicenses => Int

Number of licenses assigned to resources.


=head2 ConsumedLicenseSummaryList => ArrayRef[L<Paws::LicenseManager::ConsumedLicenseSummary>]

Summaries of the licenses consumed by resources.


=head2 Description => Str

Description of the license configuration.


=head2 DisassociateWhenNotFound => Bool

When true, disassociates a resource when software is uninstalled.


=head2 LicenseConfigurationArn => Str

Amazon Resource Name (ARN) of the license configuration.


=head2 LicenseConfigurationId => Str

Unique ID for the license configuration.


=head2 LicenseCount => Int

Number of available licenses.


=head2 LicenseCountHardLimit => Bool

Sets the number of available licenses as a hard limit.


=head2 LicenseCountingType => Str

Dimension on which the licenses are counted.

Valid values are: C<"vCPU">, C<"Instance">, C<"Core">, C<"Socket">
=head2 LicenseRules => ArrayRef[Str|Undef]

License rules.


=head2 ManagedResourceSummaryList => ArrayRef[L<Paws::LicenseManager::ManagedResourceSummary>]

Summaries of the managed resources.


=head2 Name => Str

Name of the license configuration.


=head2 OwnerAccountId => Str

Account ID of the owner of the license configuration.


=head2 ProductInformationList => ArrayRef[L<Paws::LicenseManager::ProductInformation>]

Product information.


=head2 Status => Str

License configuration status.


=head2 Tags => ArrayRef[L<Paws::LicenseManager::Tag>]

Tags for the license configuration.


=head2 _request_id => Str


=cut

1;