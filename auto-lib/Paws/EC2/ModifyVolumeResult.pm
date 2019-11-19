
package Paws::EC2::ModifyVolumeResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw/EC2_VolumeModification/;
  has VolumeModification => (is => 'ro', isa => EC2_VolumeModification);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'VolumeModification' => {
                                         'class' => 'Paws::EC2::VolumeModification',
                                         'type' => 'EC2_VolumeModification'
                                       }
             },
  'NameInRequest' => {
                       'VolumeModification' => 'volumeModification'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ModifyVolumeResult

=head1 ATTRIBUTES


=head2 VolumeModification => EC2_VolumeModification

Information about the volume modification.


=head2 _request_id => Str


=cut

