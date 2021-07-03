
package Paws::FraudDetector::PutExternalModel;
  use Moose;
  has InputConfiguration => (is => 'ro', isa => 'Paws::FraudDetector::ModelInputConfiguration', traits => ['NameInRequest'], request_name => 'inputConfiguration' , required => 1);
  has ModelEndpoint => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'modelEndpoint' , required => 1);
  has ModelEndpointStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'modelEndpointStatus' , required => 1);
  has ModelSource => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'modelSource' , required => 1);
  has OutputConfiguration => (is => 'ro', isa => 'Paws::FraudDetector::ModelOutputConfiguration', traits => ['NameInRequest'], request_name => 'outputConfiguration' , required => 1);
  has Role => (is => 'ro', isa => 'Paws::FraudDetector::Role', traits => ['NameInRequest'], request_name => 'role' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutExternalModel');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FraudDetector::PutExternalModelResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FraudDetector::PutExternalModel - Arguments for method PutExternalModel on L<Paws::FraudDetector>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutExternalModel on the
L<Amazon Fraud Detector|Paws::FraudDetector> service. Use the attributes of this class
as arguments to method PutExternalModel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutExternalModel.

=head1 SYNOPSIS

    my $frauddetector = Paws->service('FraudDetector');
    my $PutExternalModelResult = $frauddetector->PutExternalModel(
      InputConfiguration => {
        IsOpaque         => 1,
        CsvInputTemplate => 'Mystring',     # OPTIONAL
        Format => 'TEXT_CSV',    # values: TEXT_CSV, APPLICATION_JSON; OPTIONAL
        JsonInputTemplate => 'Mystring',    # OPTIONAL
      },
      ModelEndpoint       => 'Mystring',
      ModelEndpointStatus => 'ASSOCIATED',
      ModelSource         => 'SAGEMAKER',
      OutputConfiguration => {
        Format => 'TEXT_CSV',    # values: TEXT_CSV, APPLICATION_JSONLINES
        CsvIndexToVariableMap => {
          'Mystring' => 'Mystring',    # key: OPTIONAL, value: OPTIONAL
        },    # OPTIONAL
        JsonKeyToVariableMap => {
          'Mystring' => 'Mystring',    # key: OPTIONAL, value: OPTIONAL
        },    # OPTIONAL
      },
      Role => {
        Arn  => 'Mystring',    # OPTIONAL
        Name => 'Mystring',    # OPTIONAL

      },

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/frauddetector/PutExternalModel>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InputConfiguration => L<Paws::FraudDetector::ModelInputConfiguration>

The model endpoint input configuration.



=head2 B<REQUIRED> ModelEndpoint => Str

The model endpoints name.



=head2 B<REQUIRED> ModelEndpointStatus => Str

The model endpointE<rsquo>s status in Amazon Fraud Detector.

Valid values are: C<"ASSOCIATED">, C<"DISSOCIATED">

=head2 B<REQUIRED> ModelSource => Str

The source of the model.

Valid values are: C<"SAGEMAKER">

=head2 B<REQUIRED> OutputConfiguration => L<Paws::FraudDetector::ModelOutputConfiguration>

The model endpoint output configuration.



=head2 B<REQUIRED> Role => L<Paws::FraudDetector::Role>

The IAM role used to invoke the model endpoint.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutExternalModel in L<Paws::FraudDetector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

