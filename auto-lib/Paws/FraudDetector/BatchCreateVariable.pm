
package Paws::FraudDetector::BatchCreateVariable;
  use Moose;
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::FraudDetector::Tag]', traits => ['NameInRequest'], request_name => 'tags' );
  has VariableEntries => (is => 'ro', isa => 'ArrayRef[Paws::FraudDetector::VariableEntry]', traits => ['NameInRequest'], request_name => 'variableEntries' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchCreateVariable');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FraudDetector::BatchCreateVariableResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FraudDetector::BatchCreateVariable - Arguments for method BatchCreateVariable on L<Paws::FraudDetector>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchCreateVariable on the
L<Amazon Fraud Detector|Paws::FraudDetector> service. Use the attributes of this class
as arguments to method BatchCreateVariable.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchCreateVariable.

=head1 SYNOPSIS

    my $frauddetector = Paws->service('FraudDetector');
    my $BatchCreateVariableResult = $frauddetector->BatchCreateVariable(
      VariableEntries => [
        {
          DataSource   => 'Mystring',    # OPTIONAL
          DataType     => 'Mystring',    # OPTIONAL
          DefaultValue => 'Mystring',    # OPTIONAL
          Description  => 'Mystring',    # OPTIONAL
          Name         => 'Mystring',    # OPTIONAL
          VariableType => 'Mystring',    # OPTIONAL
        },
        ...
      ],
      Tags => [
        {
          Key   => 'MytagKey',           # min: 1, max: 128
          Value => 'MytagValue',         # max: 256

        },
        ...
      ],                                 # OPTIONAL
    );

    # Results:
    my $Errors = $BatchCreateVariableResult->Errors;

    # Returns a L<Paws::FraudDetector::BatchCreateVariableResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/frauddetector/BatchCreateVariable>

=head1 ATTRIBUTES


=head2 Tags => ArrayRef[L<Paws::FraudDetector::Tag>]

A collection of key and value pairs.



=head2 B<REQUIRED> VariableEntries => ArrayRef[L<Paws::FraudDetector::VariableEntry>]

The list of variables for the batch create variable request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchCreateVariable in L<Paws::FraudDetector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

