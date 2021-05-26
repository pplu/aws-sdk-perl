
package Paws::Quicksight::DescribeTemplatePermissionsResponse;
  use Moose;
  has Permissions => (is => 'ro', isa => 'ArrayRef[Paws::Quicksight::ResourcePermission]');
  has RequestId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Int');
  has TemplateArn => (is => 'ro', isa => 'Str');
  has TemplateId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::DescribeTemplatePermissionsResponse

=head1 ATTRIBUTES


=head2 Permissions => ArrayRef[L<Paws::Quicksight::ResourcePermission>]

A list of resource permissions to be set on the template.


=head2 RequestId => Str

The AWS request ID for this operation.


=head2 Status => Int

The HTTP status of the request.


=head2 TemplateArn => Str

The Amazon Resource Name (ARN) of the template.


=head2 TemplateId => Str

The ID for the template.


=head2 _request_id => Str


=cut

