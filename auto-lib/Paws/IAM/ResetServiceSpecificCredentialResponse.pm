
package Paws::IAM::ResetServiceSpecificCredentialResponse;
  use Moo;
  use JSON::MaybeXS;
  use URL::Encode;
  use Types::Standard qw/Str/;
  use Paws::IAM::Types qw/IAM_ServiceSpecificCredential/;
  has ServiceSpecificCredential => (is => 'ro', isa => IAM_ServiceSpecificCredential);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ServiceSpecificCredential' => {
                                                'class' => 'Paws::IAM::ServiceSpecificCredential',
                                                'type' => 'IAM_ServiceSpecificCredential'
                                              }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::ResetServiceSpecificCredentialResponse

=head1 ATTRIBUTES


=head2 ServiceSpecificCredential => IAM_ServiceSpecificCredential

A structure with details about the updated service-specific credential,
including the new password.

This is the B<only> time that you can access the password. You cannot
recover the password later, but you can reset it again.


=head2 _request_id => Str


=cut

