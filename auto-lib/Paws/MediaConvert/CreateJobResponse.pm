
package Paws::MediaConvert::CreateJobResponse;
  use Moose;
  has Job => (is => 'ro', isa => 'Paws::MediaConvert::Job', traits => ['NameInRequest'], request_name => 'job');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::CreateJobResponse

=head1 ATTRIBUTES


=head2 Job => L<Paws::MediaConvert::Job>




=head2 _request_id => Str


=cut

