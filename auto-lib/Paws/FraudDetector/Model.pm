package Paws::FraudDetector::Model;
  use Moose;
  has CreatedTime => (is => 'ro', isa => 'Str', request_name => 'createdTime', traits => ['NameInRequest']);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has LabelSchema => (is => 'ro', isa => 'Paws::FraudDetector::LabelSchema', request_name => 'labelSchema', traits => ['NameInRequest']);
  has LastUpdatedTime => (is => 'ro', isa => 'Str', request_name => 'lastUpdatedTime', traits => ['NameInRequest']);
  has ModelId => (is => 'ro', isa => 'Str', request_name => 'modelId', traits => ['NameInRequest']);
  has ModelType => (is => 'ro', isa => 'Str', request_name => 'modelType', traits => ['NameInRequest']);
  has ModelVariables => (is => 'ro', isa => 'ArrayRef[Paws::FraudDetector::ModelVariable]', request_name => 'modelVariables', traits => ['NameInRequest']);
  has TrainingDataSource => (is => 'ro', isa => 'Paws::FraudDetector::TrainingDataSource', request_name => 'trainingDataSource', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::FraudDetector::Model

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::FraudDetector::Model object:

  $service_obj->Method(Att1 => { CreatedTime => $value, ..., TrainingDataSource => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::FraudDetector::Model object:

  $result = $service_obj->Method(...);
  $result->Att1->CreatedTime

=head1 DESCRIPTION

The model.

=head1 ATTRIBUTES


=head2 CreatedTime => Str

  Timestamp of when the model was created.


=head2 Description => Str

  The model description.


=head2 LabelSchema => L<Paws::FraudDetector::LabelSchema>

  The model label schema.


=head2 LastUpdatedTime => Str

  Timestamp of last time the model was updated.


=head2 ModelId => Str

  The model ID.


=head2 ModelType => Str

  The model type.


=head2 ModelVariables => ArrayRef[L<Paws::FraudDetector::ModelVariable>]

  The model input variables.


=head2 TrainingDataSource => L<Paws::FraudDetector::TrainingDataSource>

  The model training data source in Amazon S3.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::FraudDetector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

