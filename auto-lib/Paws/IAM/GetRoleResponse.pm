# Generated from callresult_class.tt

package Paws::IAM::GetRoleResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IAM::Types qw/IAM_Role/;
  has Role => (is => 'ro', isa => IAM_Role, required => 1);

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
             },
  'IsRequired' => {
                    'Role' => 1
                  }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::GetRoleResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Role => IAM_Role

A structure containing details about the IAM role.


=head2 _request_id => Str


=cut

