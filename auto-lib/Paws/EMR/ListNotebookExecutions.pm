
package Paws::EMR::ListNotebookExecutions;
  use Moose;
  has EditorId => (is => 'ro', isa => 'Str');
  has From => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has To => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListNotebookExecutions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EMR::ListNotebookExecutionsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMR::ListNotebookExecutions - Arguments for method ListNotebookExecutions on L<Paws::EMR>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListNotebookExecutions on the
L<Amazon Elastic MapReduce|Paws::EMR> service. Use the attributes of this class
as arguments to method ListNotebookExecutions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListNotebookExecutions.

=head1 SYNOPSIS

    my $elasticmapreduce = Paws->service('EMR');
    my $ListNotebookExecutionsOutput =
      $elasticmapreduce->ListNotebookExecutions(
      EditorId => 'MyXmlStringMaxLen256',    # OPTIONAL
      From     => '1970-01-01T01:00:00',     # OPTIONAL
      Marker   => 'MyMarker',                # OPTIONAL
      Status   => 'START_PENDING',           # OPTIONAL
      To       => '1970-01-01T01:00:00',     # OPTIONAL
      );

    # Results:
    my $Marker             = $ListNotebookExecutionsOutput->Marker;
    my $NotebookExecutions = $ListNotebookExecutionsOutput->NotebookExecutions;

    # Returns a L<Paws::EMR::ListNotebookExecutionsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce/ListNotebookExecutions>

=head1 ATTRIBUTES


=head2 EditorId => Str

The unique ID of the editor associated with the notebook execution.



=head2 From => Str

The beginning of time range filter for listing notebook executions. The
default is the timestamp of 30 days ago.



=head2 Marker => Str

The pagination token, returned by a previous C<ListNotebookExecutions>
call, that indicates the start of the list for this
C<ListNotebookExecutions> call.



=head2 Status => Str

The status filter for listing notebook executions.

=over

=item *

C<START_PENDING> indicates that the cluster has received the execution
request but execution has not begun.

=item *

C<STARTING> indicates that the execution is starting on the cluster.

=item *

C<RUNNING> indicates that the execution is being processed by the
cluster.

=item *

C<FINISHING> indicates that execution processing is in the final
stages.

=item *

C<FINISHED> indicates that the execution has completed without error.

=item *

C<FAILING> indicates that the execution is failing and will not finish
successfully.

=item *

C<FAILED> indicates that the execution failed.

=item *

C<STOP_PENDING> indicates that the cluster has received a
C<StopNotebookExecution> request and the stop is pending.

=item *

C<STOPPING> indicates that the cluster is in the process of stopping
the execution as a result of a C<StopNotebookExecution> request.

=item *

C<STOPPED> indicates that the execution stopped because of a
C<StopNotebookExecution> request.

=back


Valid values are: C<"START_PENDING">, C<"STARTING">, C<"RUNNING">, C<"FINISHING">, C<"FINISHED">, C<"FAILING">, C<"FAILED">, C<"STOP_PENDING">, C<"STOPPING">, C<"STOPPED">

=head2 To => Str

The end of time range filter for listing notebook executions. The
default is the current timestamp.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListNotebookExecutions in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

