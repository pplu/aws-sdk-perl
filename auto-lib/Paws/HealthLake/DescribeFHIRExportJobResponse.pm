
package Paws::HealthLake::DescribeFHIRExportJobResponse;
  use Moose;
  has ExportJobProperties => (is => 'ro', isa => 'Paws::HealthLake::ExportJobProperties', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::HealthLake::DescribeFHIRExportJobResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ExportJobProperties => L<Paws::HealthLake::ExportJobProperties>

Displays the properties of the export job, including the ID, Arn, Name,
and the status of the job.


=head2 _request_id => Str


=cut

1;