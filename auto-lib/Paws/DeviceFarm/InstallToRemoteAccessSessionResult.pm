# Generated from json/callresult_class.tt

package Paws::DeviceFarm::InstallToRemoteAccessSessionResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DeviceFarm::Types qw/DeviceFarm_Upload/;
  has AppUpload => (is => 'ro', isa => DeviceFarm_Upload);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'AppUpload' => {
                                'type' => 'DeviceFarm_Upload',
                                'class' => 'Paws::DeviceFarm::Upload'
                              }
             },
  'NameInRequest' => {
                       'AppUpload' => 'appUpload'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::InstallToRemoteAccessSessionResult

=head1 ATTRIBUTES


=head2 AppUpload => DeviceFarm_Upload

An app to upload or that has been uploaded.


=head2 _request_id => Str


=cut

1;