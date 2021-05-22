
package Paws::MediaConnect::AddFlowSourcesResponse;
  use Moose;
  has FlowArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'flowArn');
  has Sources => (is => 'ro', isa => 'ArrayRef[Paws::MediaConnect::Source]', traits => ['NameInRequest'], request_name => 'sources');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::AddFlowSourcesResponse

=head1 ATTRIBUTES


=head2 FlowArn => Str

The ARN of the flow that these sources were added to.


=head2 Sources => ArrayRef[L<Paws::MediaConnect::Source>]

The details of the newly added sources.


=head2 _request_id => Str


=cut

