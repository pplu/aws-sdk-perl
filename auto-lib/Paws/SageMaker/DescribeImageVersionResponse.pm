
package Paws::SageMaker::DescribeImageVersionResponse;
  use Moose;
  has BaseImage => (is => 'ro', isa => 'Str');
  has ContainerImage => (is => 'ro', isa => 'Str');
  has CreationTime => (is => 'ro', isa => 'Str');
  has FailureReason => (is => 'ro', isa => 'Str');
  has ImageArn => (is => 'ro', isa => 'Str');
  has ImageVersionArn => (is => 'ro', isa => 'Str');
  has ImageVersionStatus => (is => 'ro', isa => 'Str');
  has LastModifiedTime => (is => 'ro', isa => 'Str');
  has Version => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeImageVersionResponse

=head1 ATTRIBUTES


=head2 BaseImage => Str

The registry path of the container image on which this image version is
based.


=head2 ContainerImage => Str

The registry path of the container image that contains this image
version.


=head2 CreationTime => Str

When the version was created.


=head2 FailureReason => Str

When a create or delete operation fails, the reason for the failure.


=head2 ImageArn => Str

The Amazon Resource Name (ARN) of the image the version is based on.


=head2 ImageVersionArn => Str

The ARN of the version.


=head2 ImageVersionStatus => Str

The status of the version.

Valid values are: C<"CREATING">, C<"CREATED">, C<"CREATE_FAILED">, C<"DELETING">, C<"DELETE_FAILED">
=head2 LastModifiedTime => Str

When the version was last modified.


=head2 Version => Int

The version number.


=head2 _request_id => Str


=cut

1;