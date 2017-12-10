
package Paws::Glue::DeleteTriggerResponse;
  use Moose;
  has Name => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::DeleteTriggerResponse

=head1 ATTRIBUTES


=head2 Name => Str

The name of the trigger that was deleted.


=head2 _request_id => Str


=cut

1;