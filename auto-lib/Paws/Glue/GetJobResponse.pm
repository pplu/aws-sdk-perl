
package Paws::Glue::GetJobResponse;
  use Moose;
  has Job => (is => 'ro', isa => 'Paws::Glue::Job');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetJobResponse

=head1 ATTRIBUTES


=head2 Job => L<Paws::Glue::Job>

The requested job definition.


=head2 _request_id => Str


=cut

1;