
package Paws::SimpleWorkflow::WorkflowExecutionInfos {
  use Moose;
  with 'Paws::API::ResultParser';
  has executionInfos => (is => 'ro', isa => 'ArrayRef[Paws::SimpleWorkflow::WorkflowExecutionInfo]', required => 1);
  has nextPageToken => (is => 'ro', isa => 'Str');

}

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::WorkflowExecutionInfos

=head1 ATTRIBUTES

=head2 B<REQUIRED> executionInfos => ArrayRef[Paws::SimpleWorkflow::WorkflowExecutionInfo]

  

The list of workflow information structures.









=head2 nextPageToken => Str

  

The token of the next page in the result. If set, the results have more
than one page. The next page can be retrieved by repeating the request
with this token and all other arguments unchanged.











=cut

1;