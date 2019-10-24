
package Paws::EC2::DescribeVolumesModificationsResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_VolumeModification/;
  has NextToken => (is => 'ro', isa => Str);
  has VolumesModifications => (is => 'ro', isa => ArrayRef[EC2_VolumeModification]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'VolumesModifications' => {
                                           'class' => 'Paws::EC2::VolumeModification',
                                           'type' => 'ArrayRef[EC2_VolumeModification]'
                                         }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'VolumesModifications' => 'volumeModificationSet'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeVolumesModificationsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

Token for pagination, null if there are no more results


=head2 VolumesModifications => ArrayRef[EC2_VolumeModification]

Information about the volume modifications.


=head2 _request_id => Str


=cut

