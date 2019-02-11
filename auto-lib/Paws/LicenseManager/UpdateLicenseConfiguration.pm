
package Paws::LicenseManager::UpdateLicenseConfiguration;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has LicenseConfigurationArn => (is => 'ro', isa => 'Str', required => 1);
  has LicenseConfigurationStatus => (is => 'ro', isa => 'Str');
  has LicenseCount => (is => 'ro', isa => 'Int');
  has LicenseCountHardLimit => (is => 'ro', isa => 'Bool');
  has LicenseRules => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Name => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateLicenseConfiguration');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LicenseManager::UpdateLicenseConfigurationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LicenseManager::UpdateLicenseConfiguration - Arguments for method UpdateLicenseConfiguration on L<Paws::LicenseManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateLicenseConfiguration on the
L<AWS License Manager|Paws::LicenseManager> service. Use the attributes of this class
as arguments to method UpdateLicenseConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateLicenseConfiguration.

=head1 SYNOPSIS

    my $license-manager = Paws->service('LicenseManager');
    my $UpdateLicenseConfigurationResponse =
      $license -manager->UpdateLicenseConfiguration(
      LicenseConfigurationArn    => 'MyString',
      Description                => 'MyString',             # OPTIONAL
      LicenseConfigurationStatus => 'AVAILABLE',            # OPTIONAL
      LicenseCount               => 1,                      # OPTIONAL
      LicenseCountHardLimit      => 1,                      # OPTIONAL
      LicenseRules               => [ 'MyString', ... ],    # OPTIONAL
      Name                       => 'MyString',             # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/license-manager/UpdateLicenseConfiguration>

=head1 ATTRIBUTES


=head2 Description => Str

New human-friendly description of the license configuration.



=head2 B<REQUIRED> LicenseConfigurationArn => Str

ARN for a license configuration.



=head2 LicenseConfigurationStatus => Str

New status of the license configuration (C<ACTIVE> or C<INACTIVE>).

Valid values are: C<"AVAILABLE">, C<"DISABLED">

=head2 LicenseCount => Int

New number of licenses managed by the license configuration.



=head2 LicenseCountHardLimit => Bool

Sets the number of available licenses as a hard limit.



=head2 LicenseRules => ArrayRef[Str|Undef]

List of flexible text strings designating license rules.



=head2 Name => Str

New name of the license configuration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateLicenseConfiguration in L<Paws::LicenseManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

