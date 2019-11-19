# Generated from callresult_class.tt

package Paws::IAM::CreateServiceLinkedRoleResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IAM::Types qw/IAM_Role/;
  has Role => (is => 'ro', isa => IAM_Role);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Role' => {
                           'class' => 'Paws::IAM::Role',
                           'type' => 'IAM_Role'
                         },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::CreateServiceLinkedRoleResponse

=head1 ATTRIBUTES


=head2 Role => IAM_Role

A Role object that contains details about the newly created role.


=head2 _request_id => Str


=cut

