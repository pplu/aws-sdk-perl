
package Paws::EMR::StartNotebookExecution;
  use Moose;
  has EditorId => (is => 'ro', isa => 'Str', required => 1);
  has ExecutionEngine => (is => 'ro', isa => 'Paws::EMR::ExecutionEngineConfig', required => 1);
  has NotebookExecutionName => (is => 'ro', isa => 'Str');
  has NotebookInstanceSecurityGroupId => (is => 'ro', isa => 'Str');
  has NotebookParams => (is => 'ro', isa => 'Str');
  has RelativePath => (is => 'ro', isa => 'Str', required => 1);
  has ServiceRole => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EMR::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartNotebookExecution');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EMR::StartNotebookExecutionOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMR::StartNotebookExecution - Arguments for method StartNotebookExecution on L<Paws::EMR>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartNotebookExecution on the
L<Amazon Elastic MapReduce|Paws::EMR> service. Use the attributes of this class
as arguments to method StartNotebookExecution.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartNotebookExecution.

=head1 SYNOPSIS

    my $elasticmapreduce = Paws->service('EMR');
    my $StartNotebookExecutionOutput =
      $elasticmapreduce->StartNotebookExecution(
      EditorId        => 'MyXmlStringMaxLen256',
      ExecutionEngine => {
        Id                            => 'MyXmlStringMaxLen256',    # max: 256
        MasterInstanceSecurityGroupId => 'MyXmlStringMaxLen256',    # max: 256
        Type => 'EMR',    # values: EMR; OPTIONAL
      },
      RelativePath                    => 'MyXmlString',
      ServiceRole                     => 'MyXmlString',
      NotebookExecutionName           => 'MyXmlStringMaxLen256',    # OPTIONAL
      NotebookInstanceSecurityGroupId => 'MyXmlStringMaxLen256',    # OPTIONAL
      NotebookParams                  => 'MyXmlString',             # OPTIONAL
      Tags                            => [
        {
          Key   => 'MyString',                                      # OPTIONAL
          Value => 'MyString',                                      # OPTIONAL
        },
        ...
      ],                                                            # OPTIONAL
      );

    # Results:
    my $NotebookExecutionId =
      $StartNotebookExecutionOutput->NotebookExecutionId;

    # Returns a L<Paws::EMR::StartNotebookExecutionOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce/StartNotebookExecution>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EditorId => Str

The unique identifier of the EMR Notebook to use for notebook
execution.



=head2 B<REQUIRED> ExecutionEngine => L<Paws::EMR::ExecutionEngineConfig>

Specifies the execution engine (cluster) that runs the notebook
execution.



=head2 NotebookExecutionName => Str

An optional name for the notebook execution.



=head2 NotebookInstanceSecurityGroupId => Str

The unique identifier of the Amazon EC2 security group to associate
with the EMR Notebook for this notebook execution.



=head2 NotebookParams => Str

Input parameters in JSON format passed to the EMR Notebook at runtime
for execution.



=head2 B<REQUIRED> RelativePath => Str

The path and file name of the notebook file for this execution,
relative to the path specified for the EMR Notebook. For example, if
you specify a path of C<s3://MyBucket/MyNotebooks> when you create an
EMR Notebook for a notebook with an ID of
C<e-ABCDEFGHIJK1234567890ABCD> (the C<EditorID> of this request), and
you specify a C<RelativePath> of
C<my_notebook_executions/notebook_execution.ipynb>, the location of the
file for the notebook execution is
C<s3://MyBucket/MyNotebooks/e-ABCDEFGHIJK1234567890ABCD/my_notebook_executions/notebook_execution.ipynb>.



=head2 B<REQUIRED> ServiceRole => Str

The name or ARN of the IAM role that is used as the service role for
Amazon EMR (the EMR role) for the notebook execution.



=head2 Tags => ArrayRef[L<Paws::EMR::Tag>]

A list of tags associated with a notebook execution. Tags are
user-defined key-value pairs that consist of a required key string with
a maximum of 128 characters and an optional value string with a maximum
of 256 characters.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartNotebookExecution in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

