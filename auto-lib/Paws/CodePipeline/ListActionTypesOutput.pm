
package Paws::CodePipeline::ListActionTypesOutput;
  use Moose;
  has ActionTypes => (is => 'ro', isa => 'ArrayRef[Paws::CodePipeline::ActionType]', traits => ['NameInRequest'], request_name => 'actionTypes' , required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::ListActionTypesOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> ActionTypes => ArrayRef[L<Paws::CodePipeline::ActionType>]

Provides details of the action types.


=head2 NextToken => Str

If the amount of returned information is significantly large, an
identifier is also returned which can be used in a subsequent list
action types call to return the next set of action types in the list.


=head2 _request_id => Str


=cut

1;