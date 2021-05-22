
package Paws::LicenseManager::CreateLicenseConfiguration;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has DisassociateWhenNotFound => (is => 'ro', isa => 'Bool');
  has LicenseCount => (is => 'ro', isa => 'Int');
  has LicenseCountHardLimit => (is => 'ro', isa => 'Bool');
  has LicenseCountingType => (is => 'ro', isa => 'Str', required => 1);
  has LicenseRules => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has ProductInformationList => (is => 'ro', isa => 'ArrayRef[Paws::LicenseManager::ProductInformation]');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::LicenseManager::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateLicenseConfiguration');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LicenseManager::CreateLicenseConfigurationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LicenseManager::CreateLicenseConfiguration - Arguments for method CreateLicenseConfiguration on L<Paws::LicenseManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateLicenseConfiguration on the
L<AWS License Manager|Paws::LicenseManager> service. Use the attributes of this class
as arguments to method CreateLicenseConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateLicenseConfiguration.

=head1 SYNOPSIS

    my $license-manager = Paws->service('LicenseManager');
    my $CreateLicenseConfigurationResponse =
      $license -manager->CreateLicenseConfiguration(
      LicenseCountingType      => 'vCPU',
      Name                     => 'MyString',
      Description              => 'MyString',             # OPTIONAL
      DisassociateWhenNotFound => 1,                      # OPTIONAL
      LicenseCount             => 1,                      # OPTIONAL
      LicenseCountHardLimit    => 1,                      # OPTIONAL
      LicenseRules             => [ 'MyString', ... ],    # OPTIONAL
      ProductInformationList   => [
        {
          ProductInformationFilterList => [
            {
              ProductInformationFilterComparator => 'MyString',
              ProductInformationFilterName       => 'MyString',
              ProductInformationFilterValue      => [ 'MyString', ... ],
            },
            ...
          ],
          ResourceType => 'MyString',

        },
        ...
      ],    # OPTIONAL
      Tags => [
        {
          Key   => 'MyString',
          Value => 'MyString',
        },
        ...
      ],    # OPTIONAL
      );

    # Results:
    my $LicenseConfigurationArn =
      $CreateLicenseConfigurationResponse->LicenseConfigurationArn;

 # Returns a L<Paws::LicenseManager::CreateLicenseConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/license-manager/CreateLicenseConfiguration>

=head1 ATTRIBUTES


=head2 Description => Str

Description of the license configuration.



=head2 DisassociateWhenNotFound => Bool

When true, disassociates a resource when software is uninstalled.



=head2 LicenseCount => Int

Number of licenses managed by the license configuration.



=head2 LicenseCountHardLimit => Bool

Indicates whether hard or soft license enforcement is used. Exceeding a
hard limit blocks the launch of new instances.



=head2 B<REQUIRED> LicenseCountingType => Str

Dimension used to track the license inventory.

Valid values are: C<"vCPU">, C<"Instance">, C<"Core">, C<"Socket">

=head2 LicenseRules => ArrayRef[Str|Undef]

License rules. The syntax is #name=value (for example,

dimension, as follows.

=over

=item *

C<Cores> dimension: C<allowedTenancy> | C<licenseAffinityToHost> |
C<maximumCores> | C<minimumCores>

=item *

C<Instances> dimension: C<allowedTenancy> | C<maximumCores> |
C<minimumCores> | C<maximumSockets> | C<minimumSockets> |
C<maximumVcpus> | C<minimumVcpus>

=item *

C<Sockets> dimension: C<allowedTenancy> | C<licenseAffinityToHost> |
C<maximumSockets> | C<minimumSockets>

=item *

C<vCPUs> dimension: C<allowedTenancy> | C<honorVcpuOptimization> |
C<maximumVcpus> | C<minimumVcpus>

=back

The unit for C<licenseAffinityToHost> is days and the range is 1 to
180. The possible values for C<allowedTenancy> are C<EC2-Default>,
C<EC2-DedicatedHost>, and C<EC2-DedicatedInstance>. The possible values
for C<honorVcpuOptimization> are C<True> and C<False>.



=head2 B<REQUIRED> Name => Str

Name of the license configuration.



=head2 ProductInformationList => ArrayRef[L<Paws::LicenseManager::ProductInformation>]

Product information.



=head2 Tags => ArrayRef[L<Paws::LicenseManager::Tag>]

Tags to add to the license configuration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateLicenseConfiguration in L<Paws::LicenseManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

