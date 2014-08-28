
package Aws::RDS::DownloadDBLogFilePortionResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has AdditionalDataPending => (is => 'ro', isa => 'Bool');
  has LogFileData => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');

}
1;