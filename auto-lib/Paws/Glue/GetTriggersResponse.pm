
package Paws::Glue::GetTriggersResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Triggers => (is => 'ro', isa => 'ArrayRef[Paws::Glue::Trigger]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetTriggersResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A continuation token, if not all the requested triggers have yet been
returned.


=head2 Triggers => ArrayRef[L<Paws::Glue::Trigger>]

A list of triggers for the specified job.


=head2 _request_id => Str


=cut

1;