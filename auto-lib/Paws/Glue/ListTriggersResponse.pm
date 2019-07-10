
package Paws::Glue::ListTriggersResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has TriggerNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::ListTriggersResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A continuation token, if the returned list does not contain the last
metric available.


=head2 TriggerNames => ArrayRef[Str|Undef]

The names of all triggers in the account, or the triggers with the
specified tags.


=head2 _request_id => Str


=cut

1;