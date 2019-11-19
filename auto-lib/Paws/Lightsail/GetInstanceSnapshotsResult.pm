# Generated from json/callresult_class.tt

package Paws::Lightsail::GetInstanceSnapshotsResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Lightsail::Types qw/Lightsail_InstanceSnapshot/;
  has InstanceSnapshots => (is => 'ro', isa => ArrayRef[Lightsail_InstanceSnapshot]);
  has NextPageToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'NextPageToken' => 'nextPageToken',
                       'InstanceSnapshots' => 'instanceSnapshots'
                     },
  'types' => {
               'NextPageToken' => {
                                    'type' => 'Str'
                                  },
               'InstanceSnapshots' => {
                                        'class' => 'Paws::Lightsail::InstanceSnapshot',
                                        'type' => 'ArrayRef[Lightsail_InstanceSnapshot]'
                                      },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetInstanceSnapshotsResult

=head1 ATTRIBUTES


=head2 InstanceSnapshots => ArrayRef[Lightsail_InstanceSnapshot]

An array of key-value pairs containing information about the results of
your get instance snapshots request.


=head2 NextPageToken => Str

A token used for advancing to the next page of results from your get
instance snapshots request.


=head2 _request_id => Str


=cut

1;