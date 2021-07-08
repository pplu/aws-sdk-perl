
package Paws::Shield::ListProtectionGroupsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has ProtectionGroups => (is => 'ro', isa => 'ArrayRef[Paws::Shield::ProtectionGroup]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Shield::ListProtectionGroupsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If you specify a value for C<MaxResults> and you have more protection
groups than the value of MaxResults, AWS Shield Advanced returns this
token that you can use in your next request, to get the next batch of
objects.


=head2 B<REQUIRED> ProtectionGroups => ArrayRef[L<Paws::Shield::ProtectionGroup>]




=head2 _request_id => Str


=cut

1;