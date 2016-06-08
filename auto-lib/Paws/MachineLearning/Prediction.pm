package Paws::MachineLearning::Prediction;
  use Moose;
  has Details => (is => 'ro', isa => 'Paws::MachineLearning::DetailsMap', xmlname => 'details', request_name => 'details', traits => ['Unwrapped','NameInRequest']);
  has PredictedLabel => (is => 'ro', isa => 'Str', xmlname => 'predictedLabel', request_name => 'predictedLabel', traits => ['Unwrapped','NameInRequest']);
  has PredictedScores => (is => 'ro', isa => 'Paws::MachineLearning::ScoreValuePerLabelMap', xmlname => 'predictedScores', request_name => 'predictedScores', traits => ['Unwrapped','NameInRequest']);
  has PredictedValue => (is => 'ro', isa => 'Num', xmlname => 'predictedValue', request_name => 'predictedValue', traits => ['Unwrapped','NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MachineLearning::Prediction

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MachineLearning::Prediction object:

  $service_obj->Method(Att1 => { Details => $value, ..., PredictedValue => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MachineLearning::Prediction object:

  $result = $service_obj->Method(...);
  $result->Att1->Details

=head1 DESCRIPTION

The output from a C<Predict> operation:

=over

=item *

C<Details> - Contains the following attributes:
C<DetailsAttributes.PREDICTIVE_MODEL_TYPE - REGRESSION | BINARY |
MULTICLASS> C<DetailsAttributes.ALGORITHM - SGD>

=item *

C<PredictedLabel> - Present for either a C<BINARY> or C<MULTICLASS>
C<MLModel> request.

=item *

C<PredictedScores> - Contains the raw classification score
corresponding to each label.

=item *

C<PredictedValue> - Present for a C<REGRESSION> C<MLModel> request.

=back


=head1 ATTRIBUTES


=head2 Details => L<Paws::MachineLearning::DetailsMap>

  


=head2 PredictedLabel => Str

  The prediction label for either a C<BINARY> or C<MULTICLASS>
C<MLModel>.


=head2 PredictedScores => L<Paws::MachineLearning::ScoreValuePerLabelMap>

  


=head2 PredictedValue => Num

  The prediction value for C<REGRESSION> C<MLModel>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MachineLearning>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

