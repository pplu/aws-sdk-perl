
package Paws::Route53::ListHostedZonesByNameResponse;
  use Moo;

  use Types::Standard qw/Str ArrayRef Bool/;
  use Paws::Route53::Types qw/Route53_HostedZone/;
  has DNSName => (is => 'ro', isa => Str);
  has HostedZoneId => (is => 'ro', isa => Str);
  has HostedZones => (is => 'ro', isa => ArrayRef[Route53_HostedZone], required => 1);
  has IsTruncated => (is => 'ro', isa => Bool, required => 1);
  has MaxItems => (is => 'ro', isa => Str, required => 1);
  has NextDNSName => (is => 'ro', isa => Str);
  has NextHostedZoneId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'HostedZones' => 1,
                    'IsTruncated' => 1,
                    'MaxItems' => 1
                  },
  'types' => {
               'IsTruncated' => {
                                  'type' => 'Bool'
                                },
               'NextHostedZoneId' => {
                                       'type' => 'Str'
                                     },
               'NextDNSName' => {
                                  'type' => 'Str'
                                },
               'HostedZoneId' => {
                                   'type' => 'Str'
                                 },
               'HostedZones' => {
                                  'type' => 'ArrayRef[Route53_HostedZone]',
                                  'class' => 'Paws::Route53::HostedZone'
                                },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'DNSName' => {
                              'type' => 'Str'
                            },
               'MaxItems' => {
                               'type' => 'Str'
                             }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::ListHostedZonesByNameResponse

=head1 ATTRIBUTES


=head2 DNSName => Str

For the second and subsequent calls to C<ListHostedZonesByName>,
C<DNSName> is the value that you specified for the C<dnsname> parameter
in the request that produced the current response.



=head2 HostedZoneId => Str

The ID that Amazon Route 53 assigned to the hosted zone when you
created it.



=head2 B<REQUIRED> HostedZones => ArrayRef[Route53_HostedZone]

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




=cut

