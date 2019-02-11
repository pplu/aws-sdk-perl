
package Paws::RedShift::ResizeProgressMessage;
  use Moose;
  has AvgResizeRateInMegaBytesPerSecond => (is => 'ro', isa => 'Num');
  has ElapsedTimeInSeconds => (is => 'ro', isa => 'Int');
  has EstimatedTimeToCompletionInSeconds => (is => 'ro', isa => 'Int');
  has ImportTablesCompleted => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ImportTablesInProgress => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ImportTablesNotStarted => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Message => (is => 'ro', isa => 'Str');
  has ProgressInMegaBytes => (is => 'ro', isa => 'Int');
  has ResizeType => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has TargetClusterType => (is => 'ro', isa => 'Str');
  has TargetEncryptionType => (is => 'ro', isa => 'Str');
  has TargetNodeType => (is => 'ro', isa => 'Str');
  has TargetNumberOfNodes => (is => 'ro', isa => 'Int');
  has TotalResizeDataInMegaBytes => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::ResizeProgressMessage

=head1 ATTRIBUTES


=head2 AvgResizeRateInMegaBytesPerSecond => Num

The average rate of the resize operation over the last few minutes,
measured in megabytes per second. After the resize operation completes,
this value shows the average rate of the entire resize operation.


=head2 ElapsedTimeInSeconds => Int

The amount of seconds that have elapsed since the resize operation
began. After the resize operation completes, this value shows the total
actual time, in seconds, for the resize operation.


=head2 EstimatedTimeToCompletionInSeconds => Int

The estimated time remaining, in seconds, until the resize operation is
complete. This value is calculated based on the average resize rate and
the estimated amount of data remaining to be processed. Once the resize
operation is complete, this value will be 0.


=head2 ImportTablesCompleted => ArrayRef[Str|Undef]

The names of tables that have been completely imported .

Valid Values: List of table names.


=head2 ImportTablesInProgress => ArrayRef[Str|Undef]

The names of tables that are being currently imported.

Valid Values: List of table names.


=head2 ImportTablesNotStarted => ArrayRef[Str|Undef]

The names of tables that have not been yet imported.

Valid Values: List of table names


=head2 Message => Str

An optional string to provide additional details about the resize
action.


=head2 ProgressInMegaBytes => Int

While the resize operation is in progress, this value shows the current
amount of data, in megabytes, that has been processed so far. When the
resize operation is complete, this value shows the total amount of
data, in megabytes, on the cluster, which may be more or less than
TotalResizeDataInMegaBytes (the estimated total amount of data before
resize).


=head2 ResizeType => Str

An enum with possible values of C<ClassicResize> and C<ElasticResize>.
These values describe the type of resize operation being performed.


=head2 Status => Str

The status of the resize operation.

Valid Values: C<NONE> | C<IN_PROGRESS> | C<FAILED> | C<SUCCEEDED> |
C<CANCELLING>


=head2 TargetClusterType => Str

The cluster type after the resize operation is complete.

Valid Values: C<multi-node> | C<single-node>


=head2 TargetEncryptionType => Str

The type of encryption for the cluster after the resize is complete.

Possible values are C<KMS> and C<None>. In the China region possible
values are: C<Legacy> and C<None>.


=head2 TargetNodeType => Str

The node type that the cluster will have after the resize operation is
complete.


=head2 TargetNumberOfNodes => Int

The number of nodes that the cluster will have after the resize
operation is complete.


=head2 TotalResizeDataInMegaBytes => Int

The estimated total amount of data, in megabytes, on the cluster before
the resize operation began.


=head2 _request_id => Str


=cut

