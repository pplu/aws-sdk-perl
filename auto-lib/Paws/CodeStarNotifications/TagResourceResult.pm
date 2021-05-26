
package Paws::CodeStarNotifications::TagResourceResult;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::CodeStarNotifications::Tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeStarNotifications::TagResourceResult

=head1 ATTRIBUTES


=head2 Tags => L<Paws::CodeStarNotifications::Tags>

The list of tags associated with the resource.


=head2 _request_id => Str


=cut

