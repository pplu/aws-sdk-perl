# Generated from callresult_class.tt

package Paws::IAM::CreateLoginProfileResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IAM::Types qw/IAM_LoginProfile/;
  has LoginProfile => (is => 'ro', isa => IAM_LoginProfile, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'LoginProfile' => {
                                   'class' => 'Paws::IAM::LoginProfile',
                                   'type' => 'IAM_LoginProfile'
                                 }
             },
  'IsRequired' => {
                    'LoginProfile' => 1
                  }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::CreateLoginProfileResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> LoginProfile => IAM_LoginProfile

A structure containing the user name and password create date.


=head2 _request_id => Str


=cut

