# Generated from callresult_class.tt

package Paws::IAM::ListServiceSpecificCredentialsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::IAM::Types qw/IAM_ServiceSpecificCredentialMetadata/;
  has ServiceSpecificCredentials => (is => 'ro', isa => ArrayRef[IAM_ServiceSpecificCredentialMetadata]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ServiceSpecificCredentials' => {
                                                 'class' => 'Paws::IAM::ServiceSpecificCredentialMetadata',
                                                 'type' => 'ArrayRef[IAM_ServiceSpecificCredentialMetadata]'
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

Paws::IAM::ListServiceSpecificCredentialsResponse

=head1 ATTRIBUTES


=head2 ServiceSpecificCredentials => ArrayRef[IAM_ServiceSpecificCredentialMetadata]

A list of structures that each contain details about a service-specific
credential.


=head2 _request_id => Str


=cut

