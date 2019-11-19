# Generated from json/callresult_class.tt

package Paws::LakeFormation::BatchGrantPermissionsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::LakeFormation::Types qw/LakeFormation_BatchPermissionsFailureEntry/;
  has Failures => (is => 'ro', isa => ArrayRef[LakeFormation_BatchPermissionsFailureEntry]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Failures' => {
                               'class' => 'Paws::LakeFormation::BatchPermissionsFailureEntry',
                               'type' => 'ArrayRef[LakeFormation_BatchPermissionsFailureEntry]'
                             }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::LakeFormation::BatchGrantPermissionsResponse

=head1 ATTRIBUTES


=head2 Failures => ArrayRef[LakeFormation_BatchPermissionsFailureEntry]

A list of failures to grant permissions to the resources.


=head2 _request_id => Str


=cut

1;