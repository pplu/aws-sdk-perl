
package Paws::Route53Domains::ListDomainsResponse;
  use Moose;
  has Domains => (is => 'ro', isa => 'ArrayRef[Paws::Route53Domains::DomainSummary]', required => 1);
  has NextPageMarker => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Route53Domains::ListDomainsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Domains => ArrayRef[L<Paws::Route53Domains::DomainSummary>]

A summary of domains.


=head2 NextPageMarker => Str

If there are more domains than you specified for C<MaxItems> in the
request, submit another request and include the value of
C<NextPageMarker> in the value of C<Marker>.


=head2 _request_id => Str


=cut

1;