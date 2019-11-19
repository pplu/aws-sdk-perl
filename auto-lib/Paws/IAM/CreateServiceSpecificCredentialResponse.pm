# Generated from callresult_class.tt

package Paws::IAM::CreateServiceSpecificCredentialResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IAM::Types qw/IAM_ServiceSpecificCredential/;
  has ServiceSpecificCredential => (is => 'ro', isa => IAM_ServiceSpecificCredential);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ServiceSpecificCredential' => {
                                                'class' => 'Paws::IAM::ServiceSpecificCredential',
                                                'type' => 'IAM_ServiceSpecificCredential'
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

Paws::IAM::CreateServiceSpecificCredentialResponse

=head1 ATTRIBUTES


=head2 ServiceSpecificCredential => IAM_ServiceSpecificCredential

A structure that contains information about the newly created
service-specific credential.

This is the only time that the password for this credential set is
available. It cannot be recovered later. Instead, you must reset the
password with ResetServiceSpecificCredential.


=head2 _request_id => Str


=cut

