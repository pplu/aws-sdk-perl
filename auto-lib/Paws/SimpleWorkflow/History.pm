
package Paws::SimpleWorkflow::History {
  use Moose;
  with 'Paws::API::ResultParser';
  has events => (is => 'ro', isa => 'ArrayRef[Paws::SimpleWorkflow::HistoryEvent]', required => 1);
  has nextPageToken => (is => 'ro', isa => 'Str');

}

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::History

=head1 ATTRIBUTES

=head2 B<REQUIRED> events => ArrayRef[Paws::SimpleWorkflow::HistoryEvent]

  

The list of history events.









=head2 nextPageToken => Str

  

The token for the next page. If set, the history consists of more than
one page and the next page can be retrieved by repeating the request
with this token and all other arguments unchanged.











=cut

1;