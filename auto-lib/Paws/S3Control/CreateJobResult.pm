
package Paws::S3Control::CreateJobResult;
  use Moose;
  has JobId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::CreateJobResult

=head1 ATTRIBUTES


=head2 JobId => Str

The ID for this job. Amazon S3 generates this ID automatically and
returns it after a successful C<Create Job> request.




=cut

