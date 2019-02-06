
package Paws::RedShift::SnapshotSchedule;
  use Moose;
  has AssociatedClusterCount => (is => 'ro', isa => 'Int');
  has AssociatedClusters => (is => 'ro', isa => 'ArrayRef[Paws::RedShift::ClusterAssociatedToSchedule]', request_name => 'ClusterAssociatedToSchedule', traits => ['NameInRequest',]);
  has NextInvocations => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'SnapshotTime', traits => ['NameInRequest',]);
  has ScheduleDefinitions => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'ScheduleDefinition', traits => ['NameInRequest',]);
  has ScheduleDescription => (is => 'ro', isa => 'Str');
  has ScheduleIdentifier => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::RedShift::Tag]', request_name => 'Tag', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::SnapshotSchedule

=head1 ATTRIBUTES


=head2 AssociatedClusterCount => Int




=head2 AssociatedClusters => ArrayRef[L<Paws::RedShift::ClusterAssociatedToSchedule>]




=head2 NextInvocations => ArrayRef[Str|Undef]




=head2 ScheduleDefinitions => ArrayRef[Str|Undef]

A list of ScheduleDefinitions


=head2 ScheduleDescription => Str

The description of the schedule.


=head2 ScheduleIdentifier => Str

A unique identifier for the schedule.


=head2 Tags => ArrayRef[L<Paws::RedShift::Tag>]

An optional set of tags describing the schedule.


=head2 _request_id => Str


=cut

