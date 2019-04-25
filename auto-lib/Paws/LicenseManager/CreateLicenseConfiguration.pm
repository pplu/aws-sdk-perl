
package Paws::LicenseManager::CreateLicenseConfiguration;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has LicenseCount => (is => 'ro', isa => 'Int');
  has LicenseCountHardLimit => (is => 'ro', isa => 'Bool');
  has LicenseCountingType => (is => 'ro', isa => 'Str', required => 1);
  has LicenseRules => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Name => (is => 'ro', isa => 'Str', required => 1);
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
      LicenseCountingType   => 'vCPU',
      Name                  => 'MyString',
      Description           => 'MyString',             # OPTIONAL
      LicenseCount          => 1,                      # OPTIONAL
      LicenseCountHardLimit => 1,                      # OPTIONAL
      LicenseRules          => [ 'MyString', ... ],    # OPTIONAL
      Tags                  => [
        {
          Key   => 'MyString',
          Value => 'MyString',
        },
        ...
      ],                                               # OPTIONAL
      );

    # Results:
    my $LicenseConfigurationArn =
      $CreateLicenseConfigurationResponse->LicenseConfigurationArn;

 # Returns a L<Paws::LicenseManager::CreateLicenseConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/license-manager/CreateLicenseConfiguration>

=head1 ATTRIBUTES


=head2 Description => Str

Human-friendly description of the license configuration.



=head2 LicenseCount => Int

Number of licenses managed by the license configuration.



=head2 LicenseCountHardLimit => Bool

Flag indicating whether hard or soft license enforcement is used.
Exceeding a hard limit results in the blocked deployment of new
instances.



=head2 B<REQUIRED> LicenseCountingType => Str

Dimension to use to track the license inventory.

Valid values are: C<"vCPU">, C<"Instance">, C<"Core">, C<"Socket">

=head2 LicenseRules => ArrayRef[Str|Undef]

Array of configured License Manager rules.



=head2 B<REQUIRED> Name => Str

Name of the license configuration.



=head2 Tags => ArrayRef[L<Paws::LicenseManager::Tag>]

The tags to apply to the resources during launch. You can only tag
instances and volumes on launch. The specified tags are applied to all
instances or volumes that are created during launch. To tag a resource
after it has been created, see CreateTags .




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateLicenseConfiguration in L<Paws::LicenseManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

