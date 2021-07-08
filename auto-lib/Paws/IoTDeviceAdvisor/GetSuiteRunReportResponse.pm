
package Paws::IoTDeviceAdvisor::GetSuiteRunReportResponse;
  use Moose;
  has QualificationReportDownloadUrl => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'qualificationReportDownloadUrl');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTDeviceAdvisor::GetSuiteRunReportResponse

=head1 ATTRIBUTES


=head2 QualificationReportDownloadUrl => Str

Download URL of the qualification report.


=head2 _request_id => Str


=cut

