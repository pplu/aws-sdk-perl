# Generated from json/callresult_class.tt

package Paws::LakeFormation::ListPermissionsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::LakeFormation::Types qw/LakeFormation_PrincipalResourcePermissions/;
  has NextToken => (is => 'ro', isa => Str);
  has PrincipalResourcePermissions => (is => 'ro', isa => ArrayRef[LakeFormation_PrincipalResourcePermissions]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'PrincipalResourcePermissions' => {
                                                   'class' => 'Paws::LakeFormation::PrincipalResourcePermissions',
                                                   'type' => 'ArrayRef[LakeFormation_PrincipalResourcePermissions]'
                                                 }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::LakeFormation::ListPermissionsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A continuation token, if this is not the first call to retrieve this
list.


=head2 PrincipalResourcePermissions => ArrayRef[LakeFormation_PrincipalResourcePermissions]

A list of principals and their permissions on the resource for the
specified principal and resource types.


=head2 _request_id => Str


=cut

1;