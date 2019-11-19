# Generated from json/callresult_class.tt

package Paws::Lightsail::GetDiskResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Lightsail::Types qw/Lightsail_Disk/;
  has Disk => (is => 'ro', isa => Lightsail_Disk);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Disk' => {
                           'type' => 'Lightsail_Disk',
                           'class' => 'Paws::Lightsail::Disk'
                         }
             },
  'NameInRequest' => {
                       'Disk' => 'disk'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetDiskResult

=head1 ATTRIBUTES


=head2 Disk => Lightsail_Disk

An object containing information about the disk.


=head2 _request_id => Str


=cut

1;