
package Paws::SageMaker::DescribeImageResponse;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has DisplayName => (is => 'ro', isa => 'Str');
  has FailureReason => (is => 'ro', isa => 'Str');
  has ImageArn => (is => 'ro', isa => 'Str');
  has ImageName => (is => 'ro', isa => 'Str');
  has ImageStatus => (is => 'ro', isa => 'Str');
  has LastModifiedTime => (is => 'ro', isa => 'Str');
  has RoleArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeImageResponse

=head1 ATTRIBUTES


=head2 CreationTime => Str

When the image was created.


=head2 Description => Str

The description of the image.


=head2 DisplayName => Str

The name of the image as displayed.


=head2 FailureReason => Str

When a create, update, or delete operation fails, the reason for the
failure.


=head2 ImageArn => Str

The Amazon Resource Name (ARN) of the image.


=head2 ImageName => Str

The name of the image.


=head2 ImageStatus => Str

The status of the image.

Valid values are: C<"CREATING">, C<"CREATED">, C<"CREATE_FAILED">, C<"UPDATING">, C<"UPDATE_FAILED">, C<"DELETING">, C<"DELETE_FAILED">
=head2 LastModifiedTime => Str

When the image was last modified.


=head2 RoleArn => Str

The Amazon Resource Name (ARN) of the IAM role that enables Amazon
SageMaker to perform tasks on your behalf.


=head2 _request_id => Str


=cut

1;