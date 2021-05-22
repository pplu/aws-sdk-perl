
package Paws::SageMaker::DescribeContextResponse;
  use Moose;
  has ContextArn => (is => 'ro', isa => 'Str');
  has ContextName => (is => 'ro', isa => 'Str');
  has ContextType => (is => 'ro', isa => 'Str');
  has CreatedBy => (is => 'ro', isa => 'Paws::SageMaker::UserContext');
  has CreationTime => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has LastModifiedBy => (is => 'ro', isa => 'Paws::SageMaker::UserContext');
  has LastModifiedTime => (is => 'ro', isa => 'Str');
  has Properties => (is => 'ro', isa => 'Paws::SageMaker::LineageEntityParameters');
  has Source => (is => 'ro', isa => 'Paws::SageMaker::ContextSource');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeContextResponse

=head1 ATTRIBUTES


=head2 ContextArn => Str

The Amazon Resource Name (ARN) of the context.


=head2 ContextName => Str

The name of the context.


=head2 ContextType => Str

The type of the context.


=head2 CreatedBy => L<Paws::SageMaker::UserContext>




=head2 CreationTime => Str

When the context was created.


=head2 Description => Str

The description of the context.


=head2 LastModifiedBy => L<Paws::SageMaker::UserContext>




=head2 LastModifiedTime => Str

When the context was last modified.


=head2 Properties => L<Paws::SageMaker::LineageEntityParameters>

A list of the context's properties.


=head2 Source => L<Paws::SageMaker::ContextSource>

The source of the context.


=head2 _request_id => Str


=cut

1;