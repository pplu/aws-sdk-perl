
package Paws::FraudDetector::PutModel;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description' );
  has LabelSchema => (is => 'ro', isa => 'Paws::FraudDetector::LabelSchema', traits => ['NameInRequest'], request_name => 'labelSchema' , required => 1);
  has ModelId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'modelId' , required => 1);
  has ModelType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'modelType' , required => 1);
  has ModelVariables => (is => 'ro', isa => 'ArrayRef[Paws::FraudDetector::ModelVariable]', traits => ['NameInRequest'], request_name => 'modelVariables' , required => 1);
  has TrainingDataSource => (is => 'ro', isa => 'Paws::FraudDetector::TrainingDataSource', traits => ['NameInRequest'], request_name => 'trainingDataSource' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutModel');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FraudDetector::PutModelResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FraudDetector::PutModel - Arguments for method PutModel on L<Paws::FraudDetector>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutModel on the
L<Amazon Fraud Detector|Paws::FraudDetector> service. Use the attributes of this class
as arguments to method PutModel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutModel.

=head1 SYNOPSIS

    my $frauddetector = Paws->service('FraudDetector');
    my $PutModelResult = $frauddetector->PutModel(
      LabelSchema => {
        LabelKey    => 'Mystring',
        LabelMapper => { 'Mystring' => [ 'Mystring', ... ], },

      },
      ModelId        => 'Myidentifier',
      ModelType      => 'ONLINE_FRAUD_INSIGHTS',
      ModelVariables => [
        {
          Name  => 'Mystring',
          Index => 1,            # OPTIONAL
        },
        ...
      ],
      TrainingDataSource => {
        DataAccessRoleArn => 'MyiamRoleArn',          # min: 1, max: 256
        DataLocation      => 'Mys3BucketLocation',    # min: 1, max: 512

      },
      Description => 'Mydescription',                 # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/frauddetector/PutModel>

=head1 ATTRIBUTES


=head2 Description => Str

The model description.



=head2 B<REQUIRED> LabelSchema => L<Paws::FraudDetector::LabelSchema>

The label schema.



=head2 B<REQUIRED> ModelId => Str

The model ID.



=head2 B<REQUIRED> ModelType => Str

The model type.

Valid values are: C<"ONLINE_FRAUD_INSIGHTS">

=head2 B<REQUIRED> ModelVariables => ArrayRef[L<Paws::FraudDetector::ModelVariable>]

The model input variables.



=head2 B<REQUIRED> TrainingDataSource => L<Paws::FraudDetector::TrainingDataSource>

The training data source location in Amazon S3.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutModel in L<Paws::FraudDetector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

