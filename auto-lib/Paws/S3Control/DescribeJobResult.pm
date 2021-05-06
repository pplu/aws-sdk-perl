
package Paws::S3Control::DescribeJobResult;
  use Moose;
  has Job => (is => 'ro', isa => 'Paws::S3Control::JobDescriptor');


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::DescribeJobResult

=head1 ATTRIBUTES


=head2 Job => L<Paws::S3Control::JobDescriptor>

Contains the configuration parameters and status for the job specified
in the C<Describe Job> request.




=cut

