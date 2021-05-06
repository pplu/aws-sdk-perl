
package Paws::IoT::DescribeJobResponse;
  use Moose;
  has DocumentSource => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'documentSource');
  has Job => (is => 'ro', isa => 'Paws::IoT::Job', traits => ['NameInRequest'], request_name => 'job');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::DescribeJobResponse

=head1 ATTRIBUTES


=head2 DocumentSource => Str

An S3 link to the job document.


=head2 Job => L<Paws::IoT::Job>

Information about the job.


=head2 _request_id => Str


=cut

