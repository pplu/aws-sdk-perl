# Generated from callresult_class.tt

package Paws::RedShift::SnapshotSchedule;
  use Moo;
  use Types::Standard qw/Str Int ArrayRef Undef/;
  use Paws::RedShift::Types qw/RedShift_Tag RedShift_ClusterAssociatedToSchedule/;
  has AssociatedClusterCount => (is => 'ro', isa => Int);
  has AssociatedClusters => (is => 'ro', isa => ArrayRef[RedShift_ClusterAssociatedToSchedule]);
  has NextInvocations => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has ScheduleDefinitions => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has ScheduleDescription => (is => 'ro', isa => Str);
  has ScheduleIdentifier => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => ArrayRef[RedShift_Tag]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ScheduleDescription' => {
                                          'type' => 'Str'
                                        },
               'ScheduleIdentifier' => {
                                         'type' => 'Str'
                                       },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Tags' => {
                           'type' => 'ArrayRef[RedShift_Tag]',
                           'class' => 'Paws::RedShift::Tag'
                         },
               'AssociatedClusterCount' => {
                                             'type' => 'Int'
                                           },
               'NextInvocations' => {
                                      'type' => 'ArrayRef[Str|Undef]'
                                    },
               'AssociatedClusters' => {
                                         'class' => 'Paws::RedShift::ClusterAssociatedToSchedule',
                                         'type' => 'ArrayRef[RedShift_ClusterAssociatedToSchedule]'
                                       },
               'ScheduleDefinitions' => {
                                          'type' => 'ArrayRef[Str|Undef]'
                                        }
             },
  'NameInRequest' => {
                       'Tags' => 'Tag',
                       'NextInvocations' => 'SnapshotTime',
                       'ScheduleDefinitions' => 'ScheduleDefinition',
                       'AssociatedClusters' => 'ClusterAssociatedToSchedule'
                     }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::SnapshotSchedule

=head1 ATTRIBUTES


=head2 AssociatedClusterCount => Int

The number of clusters associated with the schedule.


=head2 AssociatedClusters => ArrayRef[RedShift_ClusterAssociatedToSchedule]

A list of clusters associated with the schedule. A maximum of 100
clusters is returned.


=head2 NextInvocations => ArrayRef[Str|Undef]




=head2 ScheduleDefinitions => ArrayRef[Str|Undef]

A list of ScheduleDefinitions.


=head2 ScheduleDescription => Str

The description of the schedule.


=head2 ScheduleIdentifier => Str

A unique identifier for the schedule.


=head2 Tags => ArrayRef[RedShift_Tag]

An optional set of tags describing the schedule.


=head2 _request_id => Str


=cut

