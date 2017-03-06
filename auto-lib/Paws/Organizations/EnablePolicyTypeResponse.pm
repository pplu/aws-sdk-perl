
package Paws::Organizations::EnablePolicyTypeResponse;
  use Moose;
  has Root => (is => 'ro', isa => 'Paws::Organizations::Root');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Organizations::EnablePolicyTypeResponse

=head1 ATTRIBUTES


=head2 Root => L<Paws::Organizations::Root>

A structure that shows the root with the updated list of enabled policy
types.


=head2 _request_id => Str


=cut

1;