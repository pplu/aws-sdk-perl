
package Paws::Quicksight::UpdateThemeResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has CreationStatus => (is => 'ro', isa => 'Str');
  has RequestId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Int');
  has ThemeId => (is => 'ro', isa => 'Str');
  has VersionArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::UpdateThemeResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) for the theme.


=head2 CreationStatus => Str

The creation status of the theme.

Valid values are: C<"CREATION_IN_PROGRESS">, C<"CREATION_SUCCESSFUL">, C<"CREATION_FAILED">, C<"UPDATE_IN_PROGRESS">, C<"UPDATE_SUCCESSFUL">, C<"UPDATE_FAILED">, C<"DELETED">
=head2 RequestId => Str

The AWS request ID for this operation.


=head2 Status => Int

The HTTP status of the request.


=head2 ThemeId => Str

The ID for the theme.


=head2 VersionArn => Str

The Amazon Resource Name (ARN) for the new version of the theme.


=head2 _request_id => Str


=cut

