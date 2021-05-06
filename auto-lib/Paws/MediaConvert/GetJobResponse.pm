
package Paws::MediaConvert::GetJobResponse;
  use Moose;
  has Job => (is => 'ro', isa => 'Paws::MediaConvert::Job', traits => ['NameInRequest'], request_name => 'job');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::GetJobResponse

=head1 ATTRIBUTES


=head2 Job => L<Paws::MediaConvert::Job>

Each job converts an input file into an output file or files. For more
information, see the User Guide at
http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html


=head2 _request_id => Str


=cut

