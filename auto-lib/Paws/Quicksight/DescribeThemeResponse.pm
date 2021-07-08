
package Paws::Quicksight::DescribeThemeResponse;
  use Moose;
  has RequestId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Int');
  has Theme => (is => 'ro', isa => 'Paws::Quicksight::Theme');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::DescribeThemeResponse

=head1 ATTRIBUTES


=head2 RequestId => Str

The AWS request ID for this operation.


=head2 Status => Int

The HTTP status of the request.


=head2 Theme => L<Paws::Quicksight::Theme>

The information about the theme that you are describing.


=head2 _request_id => Str


=cut

