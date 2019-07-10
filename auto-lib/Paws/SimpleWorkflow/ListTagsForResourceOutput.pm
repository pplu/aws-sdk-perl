
package Paws::SimpleWorkflow::ListTagsForResourceOutput;
  use Moose;
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SimpleWorkflow::ResourceTag]', traits => ['NameInRequest'], request_name => 'tags' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::ListTagsForResourceOutput

=head1 ATTRIBUTES


=head2 Tags => ArrayRef[L<Paws::SimpleWorkflow::ResourceTag>]

An array of tags associated with the domain.


=head2 _request_id => Str


=cut

1;