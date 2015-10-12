package Paws::MachineLearning::Prediction;
  use Moose;
  has details => (is => 'ro', isa => 'Paws::MachineLearning::DetailsMap');
  has predictedLabel => (is => 'ro', isa => 'Str');
  has predictedScores => (is => 'ro', isa => 'Paws::MachineLearning::ScoreValuePerLabelMap');
  has predictedValue => (is => 'ro', isa => 'Num');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MachineLearning::Prediction

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MachineLearning::Prediction object:

  $service_obj->Method(Att1 => { details => $value, ..., predictedValue => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MachineLearning::Prediction object:

  $result = $service_obj->Method(...);
  $result->Att1->details

=head1 ATTRIBUTES

=head2 details => Paws::MachineLearning::DetailsMap

  

=head2 predictedLabel => Str

  The prediction label for either a BINARY or MULTICLASS C<MLModel>.

=head2 predictedScores => Paws::MachineLearning::ScoreValuePerLabelMap

  

=head2 predictedValue => Num

  The prediction value for REGRESSION C<MLModel>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MachineLearning>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

