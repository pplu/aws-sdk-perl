package Paws::Rekognition::EvaluationResult;
  use Moose;
  has F1Score => (is => 'ro', isa => 'Num');
  has Summary => (is => 'ro', isa => 'Paws::Rekognition::Summary');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::EvaluationResult

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Rekognition::EvaluationResult object:

  $service_obj->Method(Att1 => { F1Score => $value, ..., Summary => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Rekognition::EvaluationResult object:

  $result = $service_obj->Method(...);
  $result->Att1->F1Score

=head1 DESCRIPTION

The evaluation results for the training of a model.

=head1 ATTRIBUTES


=head2 F1Score => Num

  The F1 score for the evaluation of all labels. The F1 score metric
evaluates the overall precision and recall performance of the model as
a single value. A higher value indicates better precision and recall
performance. A lower score indicates that precision, recall, or both
are performing poorly.


=head2 Summary => L<Paws::Rekognition::Summary>

  The S3 bucket that contains the training summary.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

