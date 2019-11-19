# Generated from callresult_class.tt

package Paws::IAM::UpdateRoleDescriptionResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IAM::Types qw/IAM_Role/;
  has Role => (is => 'ro', isa => IAM_Role);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Role' => {
                           'class' => 'Paws::IAM::Role',
                           'type' => 'IAM_Role'
                         }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::UpdateRoleDescriptionResponse

=head1 ATTRIBUTES


=head2 Role => IAM_Role

A structure that contains details about the modified role.


=head2 _request_id => Str


=cut

