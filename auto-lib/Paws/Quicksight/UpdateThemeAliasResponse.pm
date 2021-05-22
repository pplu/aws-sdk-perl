
package Paws::Quicksight::UpdateThemeAliasResponse;
  use Moose;
  has RequestId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Int');
  has ThemeAlias => (is => 'ro', isa => 'Paws::Quicksight::ThemeAlias');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::UpdateThemeAliasResponse

=head1 ATTRIBUTES


=head2 RequestId => Str

The AWS request ID for this operation.


=head2 Status => Int

The HTTP status of the request.


=head2 ThemeAlias => L<Paws::Quicksight::ThemeAlias>

Information about the theme alias.


=head2 _request_id => Str


=cut

