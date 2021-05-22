
package Paws::WorkMail::StartMailboxExportJobResponse;
  use Moose;
  has JobId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::StartMailboxExportJobResponse

=head1 ATTRIBUTES


=head2 JobId => Str

The job ID.


=head2 _request_id => Str


=cut

1;