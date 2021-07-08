
package Paws::EMR::DescribeNotebookExecution;
  use Moose;
  has NotebookExecutionId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeNotebookExecution');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EMR::DescribeNotebookExecutionOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMR::DescribeNotebookExecution - Arguments for method DescribeNotebookExecution on L<Paws::EMR>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeNotebookExecution on the
L<Amazon Elastic MapReduce|Paws::EMR> service. Use the attributes of this class
as arguments to method DescribeNotebookExecution.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeNotebookExecution.

=head1 SYNOPSIS

    my $elasticmapreduce = Paws->service('EMR');
    my $DescribeNotebookExecutionOutput =
      $elasticmapreduce->DescribeNotebookExecution(
      NotebookExecutionId => 'MyXmlStringMaxLen256',

      );

    # Results:
    my $NotebookExecution = $DescribeNotebookExecutionOutput->NotebookExecution;

    # Returns a L<Paws::EMR::DescribeNotebookExecutionOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce/DescribeNotebookExecution>

=head1 ATTRIBUTES


=head2 B<REQUIRED> NotebookExecutionId => Str

The unique identifier of the notebook execution.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeNotebookExecution in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

