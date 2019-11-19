# Generated from json/callresult_class.tt

package Paws::Lightsail::GetDiskSnapshotsResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Lightsail::Types qw/Lightsail_DiskSnapshot/;
  has DiskSnapshots => (is => 'ro', isa => ArrayRef[Lightsail_DiskSnapshot]);
  has NextPageToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextPageToken' => {
                                    'type' => 'Str'
                                  },
               'DiskSnapshots' => {
                                    'class' => 'Paws::Lightsail::DiskSnapshot',
                                    'type' => 'ArrayRef[Lightsail_DiskSnapshot]'
                                  },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'DiskSnapshots' => 'diskSnapshots',
                       'NextPageToken' => 'nextPageToken'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetDiskSnapshotsResult

=head1 ATTRIBUTES


=head2 DiskSnapshots => ArrayRef[Lightsail_DiskSnapshot]

An array of objects containing information about all block storage disk
snapshots.


=head2 NextPageToken => Str

A token used for advancing to the next page of results from your
GetDiskSnapshots request.


=head2 _request_id => Str


=cut

1;