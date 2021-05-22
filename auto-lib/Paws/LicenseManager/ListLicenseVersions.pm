
package Paws::LicenseManager::ListLicenseVersions;
  use Moose;
  has LicenseArn => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListLicenseVersions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LicenseManager::ListLicenseVersionsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LicenseManager::ListLicenseVersions - Arguments for method ListLicenseVersions on L<Paws::LicenseManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListLicenseVersions on the
L<AWS License Manager|Paws::LicenseManager> service. Use the attributes of this class
as arguments to method ListLicenseVersions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListLicenseVersions.

=head1 SYNOPSIS

    my $license-manager = Paws->service('LicenseManager');
    my $ListLicenseVersionsResponse = $license -manager->ListLicenseVersions(
      LicenseArn => 'MyArn',
      MaxResults => 1,             # OPTIONAL
      NextToken  => 'MyString',    # OPTIONAL
    );

    # Results:
    my $Licenses  = $ListLicenseVersionsResponse->Licenses;
    my $NextToken = $ListLicenseVersionsResponse->NextToken;

    # Returns a L<Paws::LicenseManager::ListLicenseVersionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/license-manager/ListLicenseVersions>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LicenseArn => Str

Amazon Resource Name (ARN) of the license.



=head2 MaxResults => Int

Maximum number of results to return in a single call.



=head2 NextToken => Str

Token for the next set of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListLicenseVersions in L<Paws::LicenseManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

