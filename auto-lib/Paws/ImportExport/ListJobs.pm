
package Paws::ImportExport::ListJobs {
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has MaxJobs => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListJobs');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ImportExport::ListJobsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListJobsResult');
}
1;