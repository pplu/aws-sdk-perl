
package Paws::CodeStar::DescribeUserProfileResult;
  use Moose;
  has CreatedTimestamp => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdTimestamp' , required => 1);
  has DisplayName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'displayName' );
  has EmailAddress => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'emailAddress' );
  has LastModifiedTimestamp => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastModifiedTimestamp' , required => 1);
  has SshPublicKey => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sshPublicKey' );
  has UserArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'userArn' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeStar::DescribeUserProfileResult

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreatedTimestamp => Str

The date and time when the user profile was created in AWS CodeStar, in
timestamp format.


=head2 DisplayName => Str

The display name shown for the user in AWS CodeStar projects. For
example, this could be set to both first and last name ("Mary Major")
or a single name ("Mary"). The display name is also used to generate
the initial icon associated with the user in AWS CodeStar projects. If
spaces are included in the display name, the first character that
appears after the space will be used as the second character in the
user initial icon. The initial icon displays a maximum of two
characters, so a display name with more than one space (for example
"Mary Jane Major") would generate an initial icon using the first
character and the first character after the space ("MJ", not "MM").


=head2 EmailAddress => Str

The email address for the user. Optional.


=head2 B<REQUIRED> LastModifiedTimestamp => Str

The date and time when the user profile was last modified, in timestamp
format.


=head2 SshPublicKey => Str

The SSH public key associated with the user. This SSH public key is
associated with the user profile, and can be used in conjunction with
the associated private key for access to project resources, such as
Amazon EC2 instances, if a project owner grants remote access to those
resources.


=head2 B<REQUIRED> UserArn => Str

The Amazon Resource Name (ARN) of the user.


=head2 _request_id => Str


=cut

1;