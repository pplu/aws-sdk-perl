# Generated from json/callresult_class.tt

package Paws::DeviceFarm::CreateUploadResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DeviceFarm::Types qw/DeviceFarm_Upload/;
  has Upload => (is => 'ro', isa => DeviceFarm_Upload);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Upload' => {
                             'class' => 'Paws::DeviceFarm::Upload',
                             'type' => 'DeviceFarm_Upload'
                           }
             },
  'NameInRequest' => {
                       'Upload' => 'upload'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::CreateUploadResult

=head1 ATTRIBUTES


=head2 Upload => DeviceFarm_Upload

The newly created upload.


=head2 _request_id => Str


=cut

1;