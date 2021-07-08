
package Paws::LicenseManager::GetLicenseManagerReportGeneratorResponse;
  use Moose;
  has ReportGenerator => (is => 'ro', isa => 'Paws::LicenseManager::ReportGenerator');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::LicenseManager::GetLicenseManagerReportGeneratorResponse

=head1 ATTRIBUTES


=head2 ReportGenerator => L<Paws::LicenseManager::ReportGenerator>

A report generator that creates periodic reports on your license
configurations.


=head2 _request_id => Str


=cut

1;