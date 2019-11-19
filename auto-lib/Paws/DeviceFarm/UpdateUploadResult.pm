# Generated from json/callresult_class.tt

package Paws::DeviceFarm::UpdateUploadResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DeviceFarm::Types qw/DeviceFarm_Upload/;
  has Upload => (is => 'ro', isa => DeviceFarm_Upload);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Upload' => {
                             'type' => 'DeviceFarm_Upload',
                             'class' => 'Paws::DeviceFarm::Upload'
                           },
               '_request_id' => {
                                  'type' => 'Str'
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

Paws::DeviceFarm::UpdateUploadResult

=head1 ATTRIBUTES


=head2 Upload => DeviceFarm_Upload

A test spec uploaded to Device Farm.


=head2 _request_id => Str


=cut

1;