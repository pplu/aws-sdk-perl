
package Paws::SimpleWorkflow::History {
  use Moose;
  with 'Paws::API::ResultParser';
  has events => (is => 'ro', isa => 'ArrayRef[Paws::SimpleWorkflow::HistoryEvent]', required => 1);
  has nextPageToken => (is => 'ro', isa => 'Str');

}
1;