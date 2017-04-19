
package Paws::CodeStar::DescribeProjectResult;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'arn' );
  has ClientRequestToken => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'clientRequestToken' );
  has CreatedTimeStamp => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'createdTimeStamp' );
  has Description => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'description' );
  has Id => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'id' );
  has Name => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'name' );
  has ProjectTemplateId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'projectTemplateId' );
  has StackId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'stackId' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeStar::DescribeProjectResult

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) for the project.


=head2 ClientRequestToken => Str

A user- or system-generated token that identifies the entity that
requested project creation.


=head2 CreatedTimeStamp => Str

The date and time the project was created, in timestamp format.


=head2 Description => Str

The description of the project, if any.


=head2 Id => Str

The ID of the project.


=head2 Name => Str

The display name for the project.


=head2 ProjectTemplateId => Str

The ID for the AWS CodeStar project template used to create the
project.


=head2 StackId => Str

The ID of the primary stack in AWS CloudFormation used to generate
resources for the project.


=head2 _request_id => Str


=cut

1;