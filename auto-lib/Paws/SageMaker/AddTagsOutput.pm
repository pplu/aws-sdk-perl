
package Paws::SageMaker::AddTagsOutput;
  use Moose;
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::Tag]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::AddTagsOutput

=head1 ATTRIBUTES


=head2 Tags => ArrayRef[L<Paws::SageMaker::Tag>]

A list of tags associated with the Amazon SageMaker resource.


=head2 _request_id => Str


=cut

1;