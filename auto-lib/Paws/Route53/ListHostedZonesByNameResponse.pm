
package Paws::Route53::ListHostedZonesByNameResponse;
  use Moose;
  has DNSName => (is => 'ro', isa => 'Str');
  has HostedZoneId => (is => 'ro', isa => 'Str');
  has HostedZones => (is => 'ro', isa => 'ArrayRef[Paws::Route53::HostedZone]', traits => ['Unwrapped'], xmlname => 'HostedZone', required => 1);
  has IsTruncated => (is => 'ro', isa => 'Bool', required => 1);
  has MaxItems => (is => 'ro', isa => 'Str', required => 1);
  has NextDNSName => (is => 'ro', isa => 'Str');
  has NextHostedZoneId => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53:: - Arguments for method  on Paws::Route53

=head1 DESCRIPTION

This class represents the parameters used for calling the method  on the 
Amazon Route 53 service. Use the attributes of this class
as arguments to method .

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to .

As an example:

  $service_obj->(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 DNSName => Str

For the second and subsequent calls to C<ListHostedZonesByName>,
C<DNSName> is the value that you specified for the C<dnsname> parameter
in the request that produced the current response.



=head2 HostedZoneId => Str

The ID that Amazon Route 53 assigned to the hosted zone when you
created it.



=head2 B<REQUIRED> HostedZones => ArrayRef[L<Paws::Route53::HostedZone>]

A complex type that contains general information about the hosted zone.



=head2 B<REQUIRED> IsTruncated => Bool

A flag that indicates whether there are more hosted zones to be listed.
If the response was truncated, you can get the next group of
C<maxitems> hosted zones by calling C<ListHostedZonesByName> again and
specifying the values of C<NextDNSName> and C<NextHostedZoneId>
elements in the C<dnsname> and C<hostedzoneid> parameters.



=head2 B<REQUIRED> MaxItems => Str

The value that you specified for the C<maxitems> parameter in the call
to C<ListHostedZonesByName> that produced the current response.



=head2 NextDNSName => Str

If C<IsTruncated> is true, the value of C<NextDNSName> is the name of
the first hosted zone in the next group of C<maxitems> hosted zones.
Call C<ListHostedZonesByName> again and specify the value of
C<NextDNSName> and C<NextHostedZoneId> in the C<dnsname> and
C<hostedzoneid> parameters, respectively.

This element is present only if C<IsTruncated> is C<true>.



=head2 NextHostedZoneId => Str

If C<IsTruncated> is C<true>, the value of C<NextHostedZoneId>
identifies the first hosted zone in the next group of C<maxitems>
hosted zones. Call C<ListHostedZonesByName> again and specify the value
of C<NextDNSName> and C<NextHostedZoneId> in the C<dnsname> and
C<hostedzoneid> parameters, respectively.

This element is present only if C<IsTruncated> is C<true>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method  in L<Paws::Route53>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

