
package Paws::Glacier::InitiateJobOutput;
  use Moose;
  has JobId => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-job-id');
  has JobOutputPath => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-job-output-path');
  has Location => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Location');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glacier::InitiateJobOutput

=head1 ATTRIBUTES


=head2 JobId => Str

The ID of the job.


=head2 JobOutputPath => Str

The path to the location of where the select results are stored.


=head2 Location => Str

The relative URI path of the job.


=head2 _request_id => Str


=cut

