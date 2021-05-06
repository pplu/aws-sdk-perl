
package Paws::SimpleWorkflow::WorkflowTypeInfos;
  use Moose;
  has NextPageToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextPageToken' );
  has TypeInfos => (is => 'ro', isa => 'ArrayRef[Paws::SimpleWorkflow::WorkflowTypeInfo]', traits => ['NameInRequest'], request_name => 'typeInfos' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::WorkflowTypeInfos

=head1 ATTRIBUTES


=head2 NextPageToken => Str

If a C<NextPageToken> was returned by a previous call, there are more
results available. To retrieve the next page of results, make the call
again using the returned token in C<nextPageToken>. Keep all other
arguments unchanged.

The configured C<maximumPageSize> determines how many results can be
returned in a single call.


=head2 B<REQUIRED> TypeInfos => ArrayRef[L<Paws::SimpleWorkflow::WorkflowTypeInfo>]

The list of workflow type information.


=head2 _request_id => Str


=cut

1;