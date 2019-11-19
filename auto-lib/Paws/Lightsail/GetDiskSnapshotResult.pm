# Generated from json/callresult_class.tt

package Paws::Lightsail::GetDiskSnapshotResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Lightsail::Types qw/Lightsail_DiskSnapshot/;
  has DiskSnapshot => (is => 'ro', isa => Lightsail_DiskSnapshot);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'DiskSnapshot' => 'diskSnapshot'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'DiskSnapshot' => {
                                   'type' => 'Lightsail_DiskSnapshot',
                                   'class' => 'Paws::Lightsail::DiskSnapshot'
                                 }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetDiskSnapshotResult

=head1 ATTRIBUTES


=head2 DiskSnapshot => Lightsail_DiskSnapshot

An object containing information about the disk snapshot.


=head2 _request_id => Str


=cut

1;