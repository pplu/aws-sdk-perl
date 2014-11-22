
package Paws::RDS::DownloadDBLogFilePortionDetails {
  use Moose;
  with 'Paws::API::ResultParser';
  has AdditionalDataPending => (is => 'ro', isa => 'Bool');
  has LogFileData => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');

}
1;