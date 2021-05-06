
package Paws::Glue::UpdateTriggerResponse;
  use Moose;
  has Trigger => (is => 'ro', isa => 'Paws::Glue::Trigger');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::UpdateTriggerResponse

=head1 ATTRIBUTES


=head2 Trigger => L<Paws::Glue::Trigger>

The resulting trigger definition.


=head2 _request_id => Str


=cut

1;