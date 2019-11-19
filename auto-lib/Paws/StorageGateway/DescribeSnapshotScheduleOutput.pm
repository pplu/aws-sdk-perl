# Generated from json/callresult_class.tt

package Paws::StorageGateway::DescribeSnapshotScheduleOutput;
  use Moo;
  use Types::Standard qw/Str Int ArrayRef/;
  use Paws::StorageGateway::Types qw/StorageGateway_Tag/;
  has Description => (is => 'ro', isa => Str);
  has RecurrenceInHours => (is => 'ro', isa => Int);
  has StartAt => (is => 'ro', isa => Int);
  has Tags => (is => 'ro', isa => ArrayRef[StorageGateway_Tag]);
  has Timezone => (is => 'ro', isa => Str);
  has VolumeARN => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'StartAt' => {
                              'type' => 'Int'
                            },
               'RecurrenceInHours' => {
                                        'type' => 'Int'
                                      },
               'Timezone' => {
                               'type' => 'Str'
                             },
               'Tags' => {
                           'type' => 'ArrayRef[StorageGateway_Tag]',
                           'class' => 'Paws::StorageGateway::Tag'
                         },
               'Description' => {
                                  'type' => 'Str'
                                },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'VolumeARN' => {
                                'type' => 'Str'
                              }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::DescribeSnapshotScheduleOutput

=head1 ATTRIBUTES


=head2 Description => Str

The snapshot description.


=head2 RecurrenceInHours => Int

The number of hours between snapshots.


=head2 StartAt => Int

The hour of the day at which the snapshot schedule begins represented
as I<hh>, where I<hh> is the hour (0 to 23). The hour of the day is in
the time zone of the gateway.


=head2 Tags => ArrayRef[StorageGateway_Tag]

A list of up to 50 tags assigned to the snapshot schedule, sorted
alphabetically by key name. Each tag is a key-value pair. For a gateway
with more than 10 tags assigned, you can view all tags using the
C<ListTagsForResource> API operation.


=head2 Timezone => Str

A value that indicates the time zone of the gateway.


=head2 VolumeARN => Str

The Amazon Resource Name (ARN) of the volume that was specified in the
request.


=head2 _request_id => Str


=cut

1;