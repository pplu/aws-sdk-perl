
package Paws::CustomerProfiles::DeleteDomainResponse;
  use Moose;
  has Message => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CustomerProfiles::DeleteDomainResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Message => Str

A message that indicates the delete request is done.


=head2 _request_id => Str


=cut

