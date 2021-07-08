
package Paws::SageMaker::DescribeUserProfileResponse;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str');
  has DomainId => (is => 'ro', isa => 'Str');
  has FailureReason => (is => 'ro', isa => 'Str');
  has HomeEfsFileSystemUid => (is => 'ro', isa => 'Str');
  has LastModifiedTime => (is => 'ro', isa => 'Str');
  has SingleSignOnUserIdentifier => (is => 'ro', isa => 'Str');
  has SingleSignOnUserValue => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has UserProfileArn => (is => 'ro', isa => 'Str');
  has UserProfileName => (is => 'ro', isa => 'Str');
  has UserSettings => (is => 'ro', isa => 'Paws::SageMaker::UserSettings');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeUserProfileResponse

=head1 ATTRIBUTES


=head2 CreationTime => Str

The creation time.


=head2 DomainId => Str

The ID of the domain that contains the profile.


=head2 FailureReason => Str

The failure reason.


=head2 HomeEfsFileSystemUid => Str

The ID of the user's profile in the Amazon Elastic File System (EFS)
volume.


=head2 LastModifiedTime => Str

The last modified time.


=head2 SingleSignOnUserIdentifier => Str

The SSO user identifier.


=head2 SingleSignOnUserValue => Str

The SSO user value.


=head2 Status => Str

The status.

Valid values are: C<"Deleting">, C<"Failed">, C<"InService">, C<"Pending">, C<"Updating">, C<"Update_Failed">, C<"Delete_Failed">
=head2 UserProfileArn => Str

The user profile Amazon Resource Name (ARN).


=head2 UserProfileName => Str

The user profile name.


=head2 UserSettings => L<Paws::SageMaker::UserSettings>

A collection of settings.


=head2 _request_id => Str


=cut

1;