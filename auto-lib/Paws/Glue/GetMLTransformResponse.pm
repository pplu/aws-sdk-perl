
package Paws::Glue::GetMLTransformResponse;
  use Moose;
  has CreatedOn => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has EvaluationMetrics => (is => 'ro', isa => 'Paws::Glue::EvaluationMetrics');
  has InputRecordTables => (is => 'ro', isa => 'ArrayRef[Paws::Glue::GlueTable]');
  has LabelCount => (is => 'ro', isa => 'Int');
  has LastModifiedOn => (is => 'ro', isa => 'Str');
  has MaxCapacity => (is => 'ro', isa => 'Num');
  has MaxRetries => (is => 'ro', isa => 'Int');
  has Name => (is => 'ro', isa => 'Str');
  has NumberOfWorkers => (is => 'ro', isa => 'Int');
  has Parameters => (is => 'ro', isa => 'Paws::Glue::TransformParameters');
  has Role => (is => 'ro', isa => 'Str');
  has Schema => (is => 'ro', isa => 'ArrayRef[Paws::Glue::SchemaColumn]');
  has Status => (is => 'ro', isa => 'Str');
  has Timeout => (is => 'ro', isa => 'Int');
  has TransformId => (is => 'ro', isa => 'Str');
  has WorkerType => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetMLTransformResponse

=head1 ATTRIBUTES


=head2 CreatedOn => Str

The date and time when the transform was created.


=head2 Description => Str

A description of the transform.


=head2 EvaluationMetrics => L<Paws::Glue::EvaluationMetrics>

The latest evaluation metrics.


=head2 InputRecordTables => ArrayRef[L<Paws::Glue::GlueTable>]

A list of AWS Glue table definitions used by the transform.


=head2 LabelCount => Int

The number of labels available for this transform.


=head2 LastModifiedOn => Str

The date and time when the transform was last modified.


=head2 MaxCapacity => Num

The number of AWS Glue data processing units (DPUs) that are allocated
to task runs for this transform. You can allocate from 2 to 100 DPUs;
the default is 10. A DPU is a relative measure of processing power that
consists of 4 vCPUs of compute capacity and 16 GB of memory. For more
information, see the AWS Glue pricing page
(https://aws.amazon.com/glue/pricing/).

When the C<WorkerType> field is set to a value other than C<Standard>,
the C<MaxCapacity> field is set automatically and becomes read-only.


=head2 MaxRetries => Int

The maximum number of times to retry a task for this transform after a
task run fails.


=head2 Name => Str

The unique name given to the transform when it was created.


=head2 NumberOfWorkers => Int

The number of workers of a defined C<workerType> that are allocated
when this task runs.


=head2 Parameters => L<Paws::Glue::TransformParameters>

The configuration parameters that are specific to the algorithm used.


=head2 Role => Str

The name or Amazon Resource Name (ARN) of the IAM role with the
required permissions.


=head2 Schema => ArrayRef[L<Paws::Glue::SchemaColumn>]

The C<MapE<lt>Column, TypeE<gt>> object that represents the schema that
this transform accepts. Has an upper bound of 100 columns.


=head2 Status => Str

The last known status of the transform (to indicate whether it can be
used or not). One of "NOT_READY", "READY", or "DELETING".

Valid values are: C<"NOT_READY">, C<"READY">, C<"DELETING">
=head2 Timeout => Int

The timeout for a task run for this transform in minutes. This is the
maximum time that a task run for this transform can consume resources
before it is terminated and enters C<TIMEOUT> status. The default is
2,880 minutes (48 hours).


=head2 TransformId => Str

The unique identifier of the transform, generated at the time that the
transform was created.


=head2 WorkerType => Str

The type of predefined worker that is allocated when this task runs.
Accepts a value of Standard, G.1X, or G.2X.

=over

=item *

For the C<Standard> worker type, each worker provides 4 vCPU, 16 GB of
memory and a 50GB disk, and 2 executors per worker.

=item *

For the C<G.1X> worker type, each worker provides 4 vCPU, 16 GB of
memory and a 64GB disk, and 1 executor per worker.

=item *

For the C<G.2X> worker type, each worker provides 8 vCPU, 32 GB of
memory and a 128GB disk, and 1 executor per worker.

=back


Valid values are: C<"Standard">, C<"G.1X">, C<"G.2X">
=head2 _request_id => Str


=cut

1;