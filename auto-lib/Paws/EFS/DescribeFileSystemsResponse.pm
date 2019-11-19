
package Paws::EFS::DescribeFileSystemsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::EFS::Types qw/EFS_FileSystemDescription/;
  has FileSystems => (is => 'ro', isa => ArrayRef[EFS_FileSystemDescription]);
  has Marker => (is => 'ro', isa => Str);
  has NextMarker => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextMarker' => {
                                 'type' => 'Str'
                               },
               'Marker' => {
                             'type' => 'Str'
                           },
               'FileSystems' => {
                                  'type' => 'ArrayRef[EFS_FileSystemDescription]',
                                  'class' => 'Paws::EFS::FileSystemDescription'
                                },
               '_request_id' => {
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

Paws::EFS::DescribeFileSystemsResponse

=head1 ATTRIBUTES


=head2 FileSystems => ArrayRef[EFS_FileSystemDescription]

An array of file system descriptions.


=head2 Marker => Str

Present if provided by caller in the request (String).


=head2 NextMarker => Str

Present if there are more file systems than returned in the response
(String). You can use the C<NextMarker> in the subsequent request to
fetch the descriptions.


=head2 _request_id => Str


=cut

