# Generated from json/callresult_class.tt

package Paws::FSX::UpdateFileSystemResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::FSX::Types qw/FSX_FileSystem/;
  has FileSystem => (is => 'ro', isa => FSX_FileSystem);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'FileSystem' => {
                                 'class' => 'Paws::FSX::FileSystem',
                                 'type' => 'FSX_FileSystem'
                               }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::FSX::UpdateFileSystemResponse

=head1 ATTRIBUTES


=head2 FileSystem => FSX_FileSystem

A description of the file system that was updated.


=head2 _request_id => Str


=cut

1;