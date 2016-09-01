
package Paws::Route53::TestDNSAnswerResponse;
  use Moose;
  has Nameserver => (is => 'ro', isa => 'Str', required => 1);
  has Protocol => (is => 'ro', isa => 'Str', required => 1);
  has RecordData => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['Unwrapped'], xmlname => 'RecordDataEntry', required => 1);
  has RecordName => (is => 'ro', isa => 'Str', required => 1);
  has RecordType => (is => 'ro', isa => 'Str', required => 1);
  has ResponseCode => (is => 'ro', isa => 'Str', required => 1);

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


=head2 B<REQUIRED> Nameserver => Str

The Amazon Route 53 name server used to respond to the request.



=head2 B<REQUIRED> Protocol => Str

The protocol that Amazon Route 53 used to respond to the request,
either C<UDP> or C<TCP>.



=head2 B<REQUIRED> RecordData => ArrayRef[Str]

A list that contains values that Amazon Route 53 returned for this
resource record set.



=head2 B<REQUIRED> RecordName => Str

The name of the resource record set that you submitted a request for.



=head2 B<REQUIRED> RecordType => Str

The type of the resource record set that you submitted a request for.

Valid values are: C<"SOA">, C<"A">, C<"TXT">, C<"NS">, C<"CNAME">, C<"MX">, C<"NAPTR">, C<"PTR">, C<"SRV">, C<"SPF">, C<"AAAA">

=head2 B<REQUIRED> ResponseCode => Str

A code that indicates whether the request is valid or not. The most
common response code is C<NOERROR>, meaning that the request is valid.
If the response is not valid, Amazon Route 53 returns a response code
that describes the error. For a list of possible response codes, see
DNS RCODES on the IANA website.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method  in L<Paws::Route53>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

