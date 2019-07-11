
package Paws::Glue::BatchGetTriggersResponse;
  use Moose;
  has Triggers => (is => 'ro', isa => 'ArrayRef[Paws::Glue::Trigger]');
  has TriggersNotFound => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::BatchGetTriggersResponse

=head1 ATTRIBUTES


=head2 Triggers => ArrayRef[L<Paws::Glue::Trigger>]

A list of trigger definitions.


=head2 TriggersNotFound => ArrayRef[Str|Undef]

A list of names of triggers not found.


=head2 _request_id => Str


=cut

1;