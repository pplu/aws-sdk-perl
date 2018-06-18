
package Paws::CodeStar::CreateUserProfile;
  use Moose;
  has DisplayName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'displayName' , required => 1);
  has EmailAddress => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'emailAddress' , required => 1);
  has SshPublicKey => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sshPublicKey' );
  has UserArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'userArn' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateUserProfile');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeStar::CreateUserProfileResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeStar::CreateUserProfile - Arguments for method CreateUserProfile on L<Paws::CodeStar>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateUserProfile on the
L<AWS CodeStar|Paws::CodeStar> service. Use the attributes of this class
as arguments to method CreateUserProfile.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateUserProfile.

=head1 SYNOPSIS

    my $codestar = Paws->service('CodeStar');
    my $CreateUserProfileResult = $codestar->CreateUserProfile(
      DisplayName  => 'MyUserProfileDisplayName',
      EmailAddress => 'MyEmail',
      UserArn      => 'MyUserArn',
      SshPublicKey => 'MySshPublicKey',             # OPTIONAL
    );

    # Results:
    my $CreatedTimestamp      = $CreateUserProfileResult->CreatedTimestamp;
    my $DisplayName           = $CreateUserProfileResult->DisplayName;
    my $EmailAddress          = $CreateUserProfileResult->EmailAddress;
    my $LastModifiedTimestamp = $CreateUserProfileResult->LastModifiedTimestamp;
    my $SshPublicKey          = $CreateUserProfileResult->SshPublicKey;
    my $UserArn               = $CreateUserProfileResult->UserArn;

    # Returns a L<Paws::CodeStar::CreateUserProfileResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codestar/CreateUserProfile>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DisplayName => Str

The name that will be displayed as the friendly name for the user in
AWS CodeStar.



=head2 B<REQUIRED> EmailAddress => Str

The email address that will be displayed as part of the user's profile
in AWS CodeStar.



=head2 SshPublicKey => Str

The SSH public key associated with the user in AWS CodeStar. If a
project owner allows the user remote access to project resources, this
public key will be used along with the user's private key for SSH
access.



=head2 B<REQUIRED> UserArn => Str

The Amazon Resource Name (ARN) of the user in IAM.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateUserProfile in L<Paws::CodeStar>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

