
package Paws::IAM::ListServiceSpecificCredentialsResponse;
  use Moose;
  has ServiceSpecificCredentials => (is => 'ro', isa => 'ArrayRef[Paws::IAM::ServiceSpecificCredentialMetadata]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::ListServiceSpecificCredentialsResponse

=head1 ATTRIBUTES


=head2 ServiceSpecificCredentials => ArrayRef[L<Paws::IAM::ServiceSpecificCredentialMetadata>]

A list of structures that each contain details about a service-specific
credential.


=head2 _request_id => Str


=cut

