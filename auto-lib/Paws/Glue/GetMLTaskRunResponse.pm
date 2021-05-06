
package Paws::Glue::GetMLTaskRunResponse;
  use Moose;
  has CompletedOn => (is => 'ro', isa => 'Str');
  has ErrorString => (is => 'ro', isa => 'Str');
  has ExecutionTime => (is => 'ro', isa => 'Int');
  has LastModifiedOn => (is => 'ro', isa => 'Str');
  has LogGroupName => (is => 'ro', isa => 'Str');
  has Properties => (is => 'ro', isa => 'Paws::Glue::TaskRunProperties');
  has StartedOn => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has TaskRunId => (is => 'ro', isa => 'Str');
  has TransformId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetMLTaskRunResponse

=head1 ATTRIBUTES


=head2 CompletedOn => Str

The date and time when this task run was completed.


=head2 ErrorString => Str

The error strings that are associated with the task run.


=head2 ExecutionTime => Int

The amount of time (in seconds) that the task run consumed resources.


=head2 LastModifiedOn => Str

The date and time when this task run was last modified.


=head2 LogGroupName => Str

The names of the log groups that are associated with the task run.


=head2 Properties => L<Paws::Glue::TaskRunProperties>

The list of properties that are associated with the task run.


=head2 StartedOn => Str

The date and time when this task run started.


=head2 Status => Str

The status for this task run.

Valid values are: C<"STARTING">, C<"RUNNING">, C<"STOPPING">, C<"STOPPED">, C<"SUCCEEDED">, C<"FAILED">, C<"TIMEOUT">
=head2 TaskRunId => Str

The unique run identifier associated with this run.


=head2 TransformId => Str

The unique identifier of the task run.


=head2 _request_id => Str


=cut

1;