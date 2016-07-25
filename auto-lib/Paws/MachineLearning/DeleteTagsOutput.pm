
package Paws::MachineLearning::DeleteTagsOutput;
  use Moose;
  has ResourceId => (is => 'ro', isa => 'Str');
  has ResourceType => (is => 'ro', isa => 'Str');


### main pod documentation begin ###

=head1 NAME

Paws::MachineLearning::DeleteTagsOutput

=head1 ATTRIBUTES


=head2 ResourceId => Str

The ID of the ML object from which tags were deleted.



=head2 ResourceType => Str

The type of the ML object from which tags were deleted.

Valid values are: C<"BatchPrediction">, C<"DataSource">, C<"Evaluation">, C<"MLModel">


=cut

1;