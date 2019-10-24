# Generated from callresult_class.tt

package Paws::IAM::CreateUserResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IAM::Types qw/IAM_User/;
  has User => (is => 'ro', isa => IAM_User);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'User' => {
                           'class' => 'Paws::IAM::User',
                           'type' => 'IAM_User'
                         }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::CreateUserResponse

=head1 ATTRIBUTES


=head2 User => IAM_User

A structure with details about the new IAM user.


=head2 _request_id => Str


=cut

