
package Paws::SageMaker::DescribeActionResponse;
  use Moose;
  has ActionArn => (is => 'ro', isa => 'Str');
  has ActionName => (is => 'ro', isa => 'Str');
  has ActionType => (is => 'ro', isa => 'Str');
  has CreatedBy => (is => 'ro', isa => 'Paws::SageMaker::UserContext');
  has CreationTime => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has LastModifiedBy => (is => 'ro', isa => 'Paws::SageMaker::UserContext');
  has LastModifiedTime => (is => 'ro', isa => 'Str');
  has MetadataProperties => (is => 'ro', isa => 'Paws::SageMaker::MetadataProperties');
  has Properties => (is => 'ro', isa => 'Paws::SageMaker::LineageEntityParameters');
  has Source => (is => 'ro', isa => 'Paws::SageMaker::ActionSource');
  has Status => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeActionResponse

=head1 ATTRIBUTES


=head2 ActionArn => Str

The Amazon Resource Name (ARN) of the action.


=head2 ActionName => Str

The name of the action.


=head2 ActionType => Str

The type of the action.


=head2 CreatedBy => L<Paws::SageMaker::UserContext>




=head2 CreationTime => Str

When the action was created.


=head2 Description => Str

The description of the action.


=head2 LastModifiedBy => L<Paws::SageMaker::UserContext>




=head2 LastModifiedTime => Str

When the action was last modified.


=head2 MetadataProperties => L<Paws::SageMaker::MetadataProperties>




=head2 Properties => L<Paws::SageMaker::LineageEntityParameters>

A list of the action's properties.


=head2 Source => L<Paws::SageMaker::ActionSource>

The source of the action.


=head2 Status => Str

The status of the action.

Valid values are: C<"Unknown">, C<"InProgress">, C<"Completed">, C<"Failed">, C<"Stopping">, C<"Stopped">
=head2 _request_id => Str


=cut

1;