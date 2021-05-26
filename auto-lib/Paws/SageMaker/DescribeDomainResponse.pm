
package Paws::SageMaker::DescribeDomainResponse;
  use Moose;
  has AuthMode => (is => 'ro', isa => 'Str');
  has CreationTime => (is => 'ro', isa => 'Str');
  has DefaultUserSettings => (is => 'ro', isa => 'Paws::SageMaker::UserSettings');
  has DomainArn => (is => 'ro', isa => 'Str');
  has DomainId => (is => 'ro', isa => 'Str');
  has DomainName => (is => 'ro', isa => 'Str');
  has FailureReason => (is => 'ro', isa => 'Str');
  has HomeEfsFileSystemId => (is => 'ro', isa => 'Str');
  has HomeEfsFileSystemKmsKeyId => (is => 'ro', isa => 'Str');
  has LastModifiedTime => (is => 'ro', isa => 'Str');
  has SingleSignOnManagedApplicationInstanceId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has SubnetIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Url => (is => 'ro', isa => 'Str');
  has VpcId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeDomainResponse

=head1 ATTRIBUTES


=head2 AuthMode => Str

The domain's authentication mode.

Valid values are: C<"SSO">, C<"IAM">
=head2 CreationTime => Str

The creation time.


=head2 DefaultUserSettings => L<Paws::SageMaker::UserSettings>

Settings which are applied to all UserProfile in this domain, if
settings are not explicitly specified in a given UserProfile.


=head2 DomainArn => Str

The domain's Amazon Resource Name (ARN).


=head2 DomainId => Str

The domain ID.


=head2 DomainName => Str

The domain name.


=head2 FailureReason => Str

The failure reason.


=head2 HomeEfsFileSystemId => Str

The ID of the Amazon Elastic File System (EFS) managed by this Domain.


=head2 HomeEfsFileSystemKmsKeyId => Str

The AWS Key Management Service encryption key ID.


=head2 LastModifiedTime => Str

The last modified time.


=head2 SingleSignOnManagedApplicationInstanceId => Str

The SSO managed application instance ID.


=head2 Status => Str

The status.

Valid values are: C<"Deleting">, C<"Failed">, C<"InService">, C<"Pending">
=head2 SubnetIds => ArrayRef[Str|Undef]

Security setting to limit to a set of subnets.


=head2 Url => Str

The domain's URL.


=head2 VpcId => Str

The ID of the Amazon Virtual Private Cloud.


=head2 _request_id => Str


=cut

1;