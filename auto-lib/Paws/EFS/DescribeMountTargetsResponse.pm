
package Paws::EFS::DescribeMountTargetsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::EFS::Types qw/EFS_MountTargetDescription/;
  has Marker => (is => 'ro', isa => Str);
  has MountTargets => (is => 'ro', isa => ArrayRef[EFS_MountTargetDescription]);
  has NextMarker => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NextMarker' => {
                                 'type' => 'Str'
                               },
               'MountTargets' => {
                                   'class' => 'Paws::EFS::MountTargetDescription',
                                   'type' => 'ArrayRef[EFS_MountTargetDescription]'
                                 },
               'Marker' => {
                             'type' => 'Str'
                           }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EFS::DescribeMountTargetsResponse

=head1 ATTRIBUTES


=head2 Marker => Str

If the request included the C<Marker>, the response returns that value
in this field.


=head2 MountTargets => ArrayRef[EFS_MountTargetDescription]

Returns the file system's mount targets as an array of
C<MountTargetDescription> objects.


=head2 NextMarker => Str

If a value is present, there are more mount targets to return. In a
subsequent request, you can provide C<Marker> in your request with this
value to retrieve the next set of mount targets.


=head2 _request_id => Str


=cut

