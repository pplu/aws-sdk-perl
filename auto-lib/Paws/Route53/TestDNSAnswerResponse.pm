
package Paws::Route53::TestDNSAnswerResponse;
  use Moose;
  has Nameserver => (is => 'ro', isa => 'Str', required => 1);
  has Protocol => (is => 'ro', isa => 'Str', required => 1);
  has RecordData => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has RecordName => (is => 'ro', isa => 'Str', required => 1);
  has RecordType => (is => 'ro', isa => 'Str', required => 1);
  has ResponseCode => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::TestDNSAnswerResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Nameserver => Str

The Amazon Route 53 name server used to respond to the request.



=head2 B<REQUIRED> Protocol => Str

The protocol that Amazon Route 53 used to respond to the request,
either C<UDP> or C<TCP>.



=head2 B<REQUIRED> RecordData => ArrayRef[Str|Undef]

A list that contains values that Amazon Route 53 returned for this
resource record set.



=head2 B<REQUIRED> RecordName => Str

The name of the resource record set that you submitted a request for.



=head2 B<REQUIRED> RecordType => Str

The type of the resource record set that you submitted a request for.

Valid values are: C<"SOA">, C<"A">, C<"TXT">, C<"NS">, C<"CNAME">, C<"MX">, C<"NAPTR">, C<"PTR">, C<"SRV">, C<"SPF">, C<"AAAA">, C<"CAA">

=head2 B<REQUIRED> ResponseCode => Str

A code that indicates whether the request is valid or not. The most
common response code is C<NOERROR>, meaning that the request is valid.
If the response is not valid, Amazon Route 53 returns a response code
that describes the error. For a list of possible response codes, see
DNS RCODES
(http://www.iana.org/assignments/dns-parameters/dns-parameters.xhtml#dns-parameters-6)
on the IANA website.




=cut

