
package Paws::WorkMail::ListMailboxExportJobsResponse;
  use Moose;
  has Jobs => (is => 'ro', isa => 'ArrayRef[Paws::WorkMail::MailboxExportJob]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::ListMailboxExportJobsResponse

=head1 ATTRIBUTES


=head2 Jobs => ArrayRef[L<Paws::WorkMail::MailboxExportJob>]

The mailbox export job details.


=head2 NextToken => Str

The token to use to retrieve the next page of results.


=head2 _request_id => Str


=cut

1;