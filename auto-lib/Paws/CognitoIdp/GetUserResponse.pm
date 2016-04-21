
package Paws::CognitoIdp::GetUserResponse;
  use Moose;
  has MFAOptions => (is => 'ro', isa => 'ArrayRef[Paws::CognitoIdp::MFAOptionType]');
  has UserAttributes => (is => 'ro', isa => 'ArrayRef[Paws::CognitoIdp::AttributeType]', required => 1);
  has Username => (is => 'ro', isa => 'Str', required => 1);


### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::GetUserResponse

=head1 ATTRIBUTES


=head2 MFAOptions => ArrayRef[L<Paws::CognitoIdp::MFAOptionType>]

Specifies the options for MFA (e.g., email or phone number).



=head2 B<REQUIRED> UserAttributes => ArrayRef[L<Paws::CognitoIdp::AttributeType>]

An array of name-value pairs representing user attributes.



=head2 B<REQUIRED> Username => Str

The user name of the user you wish to retrieve from the get user
request.




=cut

1;