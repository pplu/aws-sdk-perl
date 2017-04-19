
package Paws::CodeStar::UpdateUserProfileResult;
  use Moose;
  has CreatedTimestamp => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdTimestamp' );
  has DisplayName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'displayName' );
  has EmailAddress => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'emailAddress' );
  has LastModifiedTimestamp => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastModifiedTimestamp' );
  has SshPublicKey => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sshPublicKey' );
  has UserArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'userArn' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeStar::UpdateUserProfileResult

=head1 ATTRIBUTES


=head2 CreatedTimestamp => Str

The date the user profile was created, in timestamp format.


=head2 DisplayName => Str

The name that is displayed as the friendly name for the user in AWS
CodeStar.


=head2 EmailAddress => Str

The email address that is displayed as part of the user's profile in
AWS CodeStar.


=head2 LastModifiedTimestamp => Str

The date the user profile was last modified, in timestamp format.


=head2 SshPublicKey => Str

The SSH public key associated with the user in AWS CodeStar. This is
the public portion of the public/private keypair the user can use to
access project resources if a project owner allows the user remote
access to those resources.


=head2 B<REQUIRED> UserArn => Str

The Amazon Resource Name (ARN) of the user in IAM.


=head2 _request_id => Str


=cut

1;