
package Paws::CodePipeline::CreateCustomActionTypeOutput;
  use Moose;
  has ActionType => (is => 'ro', isa => 'Paws::CodePipeline::ActionType', traits => ['NameInRequest'], request_name => 'actionType' , required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::CodePipeline::Tag]', traits => ['NameInRequest'], request_name => 'tags' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::CreateCustomActionTypeOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> ActionType => L<Paws::CodePipeline::ActionType>

Returns information about the details of an action type.


=head2 Tags => ArrayRef[L<Paws::CodePipeline::Tag>]

Specifies the tags applied to the custom action.


=head2 _request_id => Str


=cut

1;