# Generated from json/callresult_class.tt

package Paws::FSX::DeleteFileSystemResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::FSX::Types qw/FSX_DeleteFileSystemWindowsResponse/;
  has FileSystemId => (is => 'ro', isa => Str);
  has Lifecycle => (is => 'ro', isa => Str);
  has WindowsResponse => (is => 'ro', isa => FSX_DeleteFileSystemWindowsResponse);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Lifecycle' => {
                                'type' => 'Str'
                              },
               'FileSystemId' => {
                                   'type' => 'Str'
                                 },
               'WindowsResponse' => {
                                      'class' => 'Paws::FSX::DeleteFileSystemWindowsResponse',
                                      'type' => 'FSX_DeleteFileSystemWindowsResponse'
                                    }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::FSX::DeleteFileSystemResponse

=head1 ATTRIBUTES


=head2 FileSystemId => Str

The ID of the file system being deleted.


=head2 Lifecycle => Str

The file system lifecycle for the deletion request. Should be
C<DELETING>.

Valid values are: C<"AVAILABLE">, C<"CREATING">, C<"FAILED">, C<"DELETING">, C<"MISCONFIGURED">, C<"UPDATING">
=head2 WindowsResponse => FSX_DeleteFileSystemWindowsResponse




=head2 _request_id => Str


=cut

1;