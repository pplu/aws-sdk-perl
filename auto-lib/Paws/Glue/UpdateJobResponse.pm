
package Paws::Glue::UpdateJobResponse;
  use Moose;
  has JobName => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::UpdateJobResponse

=head1 ATTRIBUTES


=head2 JobName => Str

Returns the name of the updated job definition.


=head2 _request_id => Str


=cut

1;