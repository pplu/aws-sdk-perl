
package Paws::Route53Domains::ViewBillingResponse;
  use Moose;
  has BillingRecords => (is => 'ro', isa => 'ArrayRef[Paws::Route53Domains::BillingRecord]');
  has NextPageMarker => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Route53Domains::ViewBillingResponse

=head1 ATTRIBUTES


=head2 BillingRecords => ArrayRef[L<Paws::Route53Domains::BillingRecord>]

A summary of billing records.


=head2 NextPageMarker => Str

If there are more billing records than you specified for C<MaxItems> in
the request, submit another request and include the value of
C<NextPageMarker> in the value of C<Marker>.


=head2 _request_id => Str


=cut

1;