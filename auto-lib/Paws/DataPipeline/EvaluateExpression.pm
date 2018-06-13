
package Paws::DataPipeline::EvaluateExpression;
  use Moose;
  has Expression => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'expression' , required => 1);
  has ObjectId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'objectId' , required => 1);
  has PipelineId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'pipelineId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'EvaluateExpression');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataPipeline::EvaluateExpressionOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataPipeline::EvaluateExpression - Arguments for method EvaluateExpression on L<Paws::DataPipeline>

=head1 DESCRIPTION

This class represents the parameters used for calling the method EvaluateExpression on the
L<AWS Data Pipeline|Paws::DataPipeline> service. Use the attributes of this class
as arguments to method EvaluateExpression.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to EvaluateExpression.

=head1 SYNOPSIS

    my $datapipeline = Paws->service('DataPipeline');
    my $EvaluateExpressionOutput = $datapipeline->EvaluateExpression(
      Expression => 'MylongString',
      ObjectId   => 'Myid',
      PipelineId => 'Myid',

    );

    # Results:
    my $EvaluatedExpression = $EvaluateExpressionOutput->EvaluatedExpression;

    # Returns a L<Paws::DataPipeline::EvaluateExpressionOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datapipeline/EvaluateExpression>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Expression => Str

The expression to evaluate.



=head2 B<REQUIRED> ObjectId => Str

The ID of the object.



=head2 B<REQUIRED> PipelineId => Str

The ID of the pipeline.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method EvaluateExpression in L<Paws::DataPipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

