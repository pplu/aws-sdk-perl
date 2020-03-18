package Paws::FraudDetector::ModelScores;
  use Moose;
  has ModelVersion => (is => 'ro', isa => 'Paws::FraudDetector::ModelVersion', request_name => 'modelVersion', traits => ['NameInRequest']);
  has Scores => (is => 'ro', isa => 'Paws::FraudDetector::ModelPredictionMap', request_name => 'scores', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::FraudDetector::ModelScores

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::FraudDetector::ModelScores object:

  $service_obj->Method(Att1 => { ModelVersion => $value, ..., Scores => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::FraudDetector::ModelScores object:

  $result = $service_obj->Method(...);
  $result->Att1->ModelVersion

=head1 DESCRIPTION

The fraud prediction scores.

=head1 ATTRIBUTES


=head2 ModelVersion => L<Paws::FraudDetector::ModelVersion>

  The model version.


=head2 Scores => L<Paws::FraudDetector::ModelPredictionMap>

  The model's fraud prediction scores.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::FraudDetector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

