
package Paws::CodeStar::UpdateUserProfile;
  use Moose;
  has DisplayName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'displayName' );
  has EmailAddress => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'emailAddress' );
  has SshPublicKey => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sshPublicKey' );
  has UserArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'userArn' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateUserProfile');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeStar::UpdateUserProfileResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeStar::UpdateUserProfile - Arguments for method UpdateUserProfile on Paws::CodeStar

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateUserProfile on the 
AWS CodeStar service. Use the attributes of this class
as arguments to method UpdateUserProfile.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateUserProfile.

As an example:

  $service_obj->UpdateUserProfile(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 DisplayName => Str

The name that is displayed as the friendly name for the user in AWS
CodeStar.



=head2 EmailAddress => Str

The email address that is displayed as part of the user's profile in
AWS CodeStar.



=head2 SshPublicKey => Str

The SSH public key associated with the user in AWS CodeStar. If a
project owner allows the user remote access to project resources, this
public key will be used along with the user's private key for SSH
access.



=head2 B<REQUIRED> UserArn => Str

The name that will be displayed as the friendly name for the user in
AWS CodeStar.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateUserProfile in L<Paws::CodeStar>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

