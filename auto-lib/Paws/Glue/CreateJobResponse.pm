
package Paws::Glue::CreateJobResponse;
  use Moose;
  has Name => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::CreateJobResponse

=head1 ATTRIBUTES


=head2 Name => Str

The unique name that was provided for this job definition.


=head2 _request_id => Str


=cut

1;