# Generated from json/callresult_class.tt

package Paws::LakeFormation::GetEffectivePermissionsForPathResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::LakeFormation::Types qw/LakeFormation_PrincipalResourcePermissions/;
  has NextToken => (is => 'ro', isa => Str);
  has Permissions => (is => 'ro', isa => ArrayRef[LakeFormation_PrincipalResourcePermissions]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Permissions' => {
                                  'class' => 'Paws::LakeFormation::PrincipalResourcePermissions',
                                  'type' => 'ArrayRef[LakeFormation_PrincipalResourcePermissions]'
                                },
               'NextToken' => {
                                'type' => 'Str'
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

Paws::LakeFormation::GetEffectivePermissionsForPathResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A continuation token, if this is not the first call to retrieve this
list.


=head2 Permissions => ArrayRef[LakeFormation_PrincipalResourcePermissions]

A list of the permissions for the specified table or database resource
located at the path in Amazon S3.


=head2 _request_id => Str


=cut

1;