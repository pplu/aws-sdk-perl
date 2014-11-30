
package Paws::SimpleWorkflow::WorkflowTypeInfos {
  use Moose;
  with 'Paws::API::ResultParser';
  has nextPageToken => (is => 'ro', isa => 'Str');
  has typeInfos => (is => 'ro', isa => 'ArrayRef[Paws::SimpleWorkflow::WorkflowTypeInfo]', required => 1);

}

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::WorkflowTypeInfos

=head1 ATTRIBUTES

=head2 nextPageToken => Str

  

The token for the next page of type information. If set then the list
consists of more than one page. You can retrieve the next page by
repeating the request (that returned the structure) with the this token
and all other arguments unchanged.









=head2 B<REQUIRED> typeInfos => ArrayRef[Paws::SimpleWorkflow::WorkflowTypeInfo]

  

The list of workflow type information.











=cut

1;