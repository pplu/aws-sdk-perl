
package Paws::CodeStar::DeleteProjectResult;
  use Moose;
  has ProjectArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'projectArn' );
  has StackId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'stackId' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeStar::DeleteProjectResult

=head1 ATTRIBUTES


=head2 ProjectArn => Str

The Amazon Resource Name (ARN) of the deleted project.


=head2 StackId => Str

The ID of the primary stack in AWS CloudFormation that will be deleted
as part of deleting the project and its resources.


=head2 _request_id => Str


=cut

1;