
package Paws::CodeStar::DescribeProjectResult;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn' );
  has ClientRequestToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientRequestToken' );
  has CreatedTimeStamp => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdTimeStamp' );
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description' );
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id' );
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' );
  has ProjectTemplateId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'projectTemplateId' );
  has StackId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'stackId' );
  has Status => (is => 'ro', isa => 'Paws::CodeStar::ProjectStatus', traits => ['NameInRequest'], request_name => 'status' );

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


=head2 Status => L<Paws::CodeStar::ProjectStatus>

The project creation or deletion status.


=head2 _request_id => Str


=cut

1;