
package Paws::Quicksight::DescribeThemePermissionsResponse;
  use Moose;
  has Permissions => (is => 'ro', isa => 'ArrayRef[Paws::Quicksight::ResourcePermission]');
  has RequestId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Int');
  has ThemeArn => (is => 'ro', isa => 'Str');
  has ThemeId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::DescribeThemePermissionsResponse

=head1 ATTRIBUTES


=head2 Permissions => ArrayRef[L<Paws::Quicksight::ResourcePermission>]

A list of resource permissions set on the theme.


=head2 RequestId => Str

The AWS request ID for this operation.


=head2 Status => Int

The HTTP status of the request.


=head2 ThemeArn => Str

The Amazon Resource Name (ARN) of the theme.


=head2 ThemeId => Str

The ID for the theme.


=head2 _request_id => Str


=cut

