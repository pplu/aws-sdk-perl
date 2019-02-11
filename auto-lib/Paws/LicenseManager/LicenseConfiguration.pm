package Paws::LicenseManager::LicenseConfiguration;
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
1;

### main pod documentation begin ###

=head1 NAME

Paws::LicenseManager::LicenseConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LicenseManager::LicenseConfiguration object:

  $service_obj->Method(Att1 => { ConsumedLicenses => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LicenseManager::LicenseConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->ConsumedLicenses

=head1 DESCRIPTION

A license configuration is an abstraction of a customer license
agreement that can be consumed and enforced by License Manager.
Components include specifications for the license type (licensing by
instance, socket, CPU, or VCPU), tenancy (shared tenancy, Amazon EC2
Dedicated Instance, Amazon EC2 Dedicated Host, or any of these), host
affinity (how long a VM must be associated with a host), the number of
licenses purchased and used.

=head1 ATTRIBUTES


=head2 ConsumedLicenses => Int

  Number of licenses consumed.


=head2 ConsumedLicenseSummaryList => ArrayRef[L<Paws::LicenseManager::ConsumedLicenseSummary>]

  List of summaries for licenses consumed by various resources.


=head2 Description => Str

  Description of the license configuration.


=head2 LicenseConfigurationArn => Str

  ARN of the C<LicenseConfiguration> object.


=head2 LicenseConfigurationId => Str

  Unique ID of the C<LicenseConfiguration> object.


=head2 LicenseCount => Int

  Number of licenses managed by the license configuration.


=head2 LicenseCountHardLimit => Bool

  Sets the number of available licenses as a hard limit.


=head2 LicenseCountingType => Str

  Dimension to use to track license inventory.


=head2 LicenseRules => ArrayRef[Str|Undef]

  Array of configured License Manager rules.


=head2 ManagedResourceSummaryList => ArrayRef[L<Paws::LicenseManager::ManagedResourceSummary>]

  List of summaries for managed resources.


=head2 Name => Str

  Name of the license configuration.


=head2 OwnerAccountId => Str

  Account ID of the license configuration's owner.


=head2 Status => Str

  Status of the license configuration.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LicenseManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

