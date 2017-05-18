
package Paws::Route53::ListHostedZonesResponse;
  use Moose;
  has HostedZones => (is => 'ro', isa => 'ArrayRef[Paws::Route53::HostedZone]', required => 1);
  has IsTruncated => (is => 'ro', isa => 'Bool', required => 1);
  has Marker => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Str', required => 1);
  has NextMarker => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::ListHostedZonesResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> HostedZones => ArrayRef[L<Paws::Route53::HostedZone>]

A complex type that contains general information about the hosted zone.



=head2 B<REQUIRED> IsTruncated => Bool

A flag indicating whether there are more hosted zones to be listed. If
the response was truncated, you can get more hosted zones by submitting
another C<ListHostedZones> request and specifying the value of
C<NextMarker> in the C<marker> parameter.



=head2 Marker => Str

For the second and subsequent calls to C<ListHostedZones>, C<Marker> is
the value that you specified for the C<marker> parameter in the request
that produced the current response.



=head2 B<REQUIRED> MaxItems => Str

The value that you specified for the C<maxitems> parameter in the call
to C<ListHostedZones> that produced the current response.



=head2 NextMarker => Str

If C<IsTruncated> is C<true>, the value of C<NextMarker> identifies the
first hosted zone in the next group of hosted zones. Submit another
C<ListHostedZones> request, and specify the value of C<NextMarker> from
the response in the C<marker> parameter.

This element is present only if C<IsTruncated> is C<true>.




=cut

