# Generated from json/callresult_class.tt

package Paws::Lightsail::GetDisksResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Lightsail::Types qw/Lightsail_Disk/;
  has Disks => (is => 'ro', isa => ArrayRef[Lightsail_Disk]);
  has NextPageToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Disks' => 'disks',
                       'NextPageToken' => 'nextPageToken'
                     },
  'types' => {
               'Disks' => {
                            'class' => 'Paws::Lightsail::Disk',
                            'type' => 'ArrayRef[Lightsail_Disk]'
                          },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NextPageToken' => {
                                    'type' => 'Str'
                                  }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetDisksResult

=head1 ATTRIBUTES


=head2 Disks => ArrayRef[Lightsail_Disk]

An array of objects containing information about all block storage
disks.


=head2 NextPageToken => Str

A token used for advancing to the next page of results from your
GetDisks request.


=head2 _request_id => Str


=cut

1;