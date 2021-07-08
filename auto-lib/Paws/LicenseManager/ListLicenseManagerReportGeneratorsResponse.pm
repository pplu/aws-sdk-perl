
package Paws::LicenseManager::ListLicenseManagerReportGeneratorsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has ReportGenerators => (is => 'ro', isa => 'ArrayRef[Paws::LicenseManager::ReportGenerator]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::LicenseManager::ListLicenseManagerReportGeneratorsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

Token for the next set of results.


=head2 ReportGenerators => ArrayRef[L<Paws::LicenseManager::ReportGenerator>]

A report generator that creates periodic reports on your license
configurations.


=head2 _request_id => Str


=cut

1;