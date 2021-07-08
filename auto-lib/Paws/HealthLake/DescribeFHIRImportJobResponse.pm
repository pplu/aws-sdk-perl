
package Paws::HealthLake::DescribeFHIRImportJobResponse;
  use Moose;
  has ImportJobProperties => (is => 'ro', isa => 'Paws::HealthLake::ImportJobProperties', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::HealthLake::DescribeFHIRImportJobResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ImportJobProperties => L<Paws::HealthLake::ImportJobProperties>

The properties of the Import job request, including the ID, ARN, name,
and the status of the job.


=head2 _request_id => Str


=cut

1;