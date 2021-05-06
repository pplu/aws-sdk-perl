
package Paws::Snowball::CreateJobResult;
  use Moose;
  has JobId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Snowball::CreateJobResult

=head1 ATTRIBUTES


=head2 JobId => Str

The automatically generated ID for a job, for example
C<JID123e4567-e89b-12d3-a456-426655440000>.


=head2 _request_id => Str


=cut

1;