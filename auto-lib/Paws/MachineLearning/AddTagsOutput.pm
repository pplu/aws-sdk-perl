
package Paws::MachineLearning::AddTagsOutput;
  use Moose;
  has ResourceId => (is => 'ro', isa => 'Str');
  has ResourceType => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MachineLearning::AddTagsOutput

=head1 ATTRIBUTES


=head2 ResourceId => Str

The ID of the ML object that was tagged.


=head2 ResourceType => Str

The type of the ML object that was tagged.

Valid values are: C<"BatchPrediction">, C<"DataSource">, C<"Evaluation">, C<"MLModel">
=head2 _request_id => Str


=cut

1;