
package Paws::Quicksight::ListThemeAliasesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has RequestId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Int');
  has ThemeAliasList => (is => 'ro', isa => 'ArrayRef[Paws::Quicksight::ThemeAlias]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::ListThemeAliasesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token for the next set of results, or null if there are no more
results.


=head2 RequestId => Str

The AWS request ID for this operation.


=head2 Status => Int

The HTTP status of the request.


=head2 ThemeAliasList => ArrayRef[L<Paws::Quicksight::ThemeAlias>]

A structure containing the list of the theme's aliases.


=head2 _request_id => Str


=cut

