
package Paws::MachineLearning::DeleteEvaluation;
  use Moose;
  has EvaluationId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteEvaluation');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MachineLearning::DeleteEvaluationOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MachineLearning::DeleteEvaluation - Arguments for method DeleteEvaluation on L<Paws::MachineLearning>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteEvaluation on the
L<Amazon Machine Learning|Paws::MachineLearning> service. Use the attributes of this class
as arguments to method DeleteEvaluation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteEvaluation.

=head1 SYNOPSIS

    my $machinelearning = Paws->service('MachineLearning');
    my $DeleteEvaluationOutput = $machinelearning->DeleteEvaluation(
      EvaluationId => 'MyEntityId',

    );

    # Results:
    my $EvaluationId = $DeleteEvaluationOutput->EvaluationId;

    # Returns a L<Paws::MachineLearning::DeleteEvaluationOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/machinelearning/DeleteEvaluation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EvaluationId => Str

A user-supplied ID that uniquely identifies the C<Evaluation> to
delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteEvaluation in L<Paws::MachineLearning>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

