
package Paws::LicenseManager::CreateLicenseManagerReportGeneratorResponse;
  use Moose;
  has LicenseManagerReportGeneratorArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::LicenseManager::CreateLicenseManagerReportGeneratorResponse

=head1 ATTRIBUTES


=head2 LicenseManagerReportGeneratorArn => Str

The Amazon Resource Number (ARN) of the new report generator.


=head2 _request_id => Str


=cut

1;