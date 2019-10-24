# Generated from json/callresult_class.tt

package Paws::AppStream::UpdateDirectoryConfigResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::AppStream::Types qw/AppStream_DirectoryConfig/;
  has DirectoryConfig => (is => 'ro', isa => AppStream_DirectoryConfig);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DirectoryConfig' => {
                                      'class' => 'Paws::AppStream::DirectoryConfig',
                                      'type' => 'AppStream_DirectoryConfig'
                                    },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::AppStream::UpdateDirectoryConfigResult

=head1 ATTRIBUTES


=head2 DirectoryConfig => AppStream_DirectoryConfig

Information about the Directory Config object.


=head2 _request_id => Str


=cut

1;