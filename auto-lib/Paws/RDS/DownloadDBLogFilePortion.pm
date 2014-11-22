
package Paws::RDS::DownloadDBLogFilePortion {
  use Moose;
  has DBInstanceIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has LogFileName => (is => 'ro', isa => 'Str', required => 1);
  has Marker => (is => 'ro', isa => 'Str');
  has NumberOfLines => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DownloadDBLogFilePortion');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::DownloadDBLogFilePortionDetails');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DownloadDBLogFilePortionResult');
}
1;