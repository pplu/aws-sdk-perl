
package Paws::LicenseManager::DeleteLicense;
  use Moose;
  has LicenseArn => (is => 'ro', isa => 'Str', required => 1);
  has SourceVersion => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteLicense');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LicenseManager::DeleteLicenseResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LicenseManager::DeleteLicense - Arguments for method DeleteLicense on L<Paws::LicenseManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteLicense on the
L<AWS License Manager|Paws::LicenseManager> service. Use the attributes of this class
as arguments to method DeleteLicense.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteLicense.

=head1 SYNOPSIS

    my $license-manager = Paws->service('LicenseManager');
    my $DeleteLicenseResponse = $license -manager->DeleteLicense(
      LicenseArn    => 'MyArn',
      SourceVersion => 'MyString',

    );

    # Results:
    my $DeletionDate = $DeleteLicenseResponse->DeletionDate;
    my $Status       = $DeleteLicenseResponse->Status;

    # Returns a L<Paws::LicenseManager::DeleteLicenseResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/license-manager/DeleteLicense>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LicenseArn => Str

Amazon Resource Name (ARN) of the license.



=head2 B<REQUIRED> SourceVersion => Str

Current version of the license.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteLicense in L<Paws::LicenseManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

