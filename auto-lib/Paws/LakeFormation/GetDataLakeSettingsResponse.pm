# Generated from json/callresult_class.tt

package Paws::LakeFormation::GetDataLakeSettingsResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::LakeFormation::Types qw/LakeFormation_DataLakeSettings/;
  has DataLakeSettings => (is => 'ro', isa => LakeFormation_DataLakeSettings);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DataLakeSettings' => {
                                       'class' => 'Paws::LakeFormation::DataLakeSettings',
                                       'type' => 'LakeFormation_DataLakeSettings'
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

Paws::LakeFormation::GetDataLakeSettingsResponse

=head1 ATTRIBUTES


=head2 DataLakeSettings => LakeFormation_DataLakeSettings

A list of AWS Lake Formation principals.


=head2 _request_id => Str


=cut

1;