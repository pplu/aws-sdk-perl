
package Paws::Glue::CreateTriggerResponse;
  use Moose;
  has Name => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::CreateTriggerResponse

=head1 ATTRIBUTES


=head2 Name => Str

The name of the trigger.


=head2 _request_id => Str


=cut

1;