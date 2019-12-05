package Paws::WAFv2::IPSet;
  use Moose;
  has Addresses => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has ARN => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has IPAddressVersion => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFv2::IPSet

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WAFv2::IPSet object:

  $service_obj->Method(Att1 => { Addresses => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WAFv2::IPSet object:

  $result = $service_obj->Method(...);
  $result->Att1->Addresses

=head1 DESCRIPTION

This is the latest version of B<AWS WAF>, named AWS WAFV2, released in
November, 2019. For information, including how to migrate your AWS WAF
resources from the prior release, see the AWS WAF Developer Guide
(https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).

Contains one or more IP addresses or blocks of IP addresses specified
in Classless Inter-Domain Routing (CIDR) notation. AWS WAF supports any
CIDR range. For information about CIDR notation, see the Wikipedia
entry Classless Inter-Domain Routing
(https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing).

AWS WAF assigns an ARN to each C<IPSet> that you create. To use an IP
set in a rule, you provide the ARN to the Rule statement
IPSetReferenceStatement.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Addresses => ArrayRef[Str|Undef]

  Contains an array of strings that specify one or more IP addresses or
blocks of IP addresses in Classless Inter-Domain Routing (CIDR)
notation. AWS WAF supports all address ranges for IP versions IPv4 and
IPv6.

Examples:

=over

=item *

To configure AWS WAF to allow, block, or count requests that originated
from the IP address 192.0.2.44, specify C<192.0.2.44/32>.

=item *

To configure AWS WAF to allow, block, or count requests that originated
from IP addresses from 192.0.2.0 to 192.0.2.255, specify
C<192.0.2.0/24>.

=item *

To configure AWS WAF to allow, block, or count requests that originated
from the IP address 1111:0000:0000:0000:0000:0000:0000:0111, specify
C<1111:0000:0000:0000:0000:0000:0000:0111/128>.

=item *

To configure AWS WAF to allow, block, or count requests that originated
from IP addresses 1111:0000:0000:0000:0000:0000:0000:0000 to
1111:0000:0000:0000:ffff:ffff:ffff:ffff, specify
C<1111:0000:0000:0000:0000:0000:0000:0000/64>.

=back

For more information about CIDR notation, see the Wikipedia entry
Classless Inter-Domain Routing
(https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing).


=head2 B<REQUIRED> ARN => Str

  The Amazon Resource Name (ARN) of the entity.


=head2 Description => Str

  A friendly description of the IP set. You cannot change the description
of an IP set after you create it.


=head2 B<REQUIRED> Id => Str

  A unique identifier for the set. This ID is returned in the responses
to create and list commands. You provide it to operations like update
and delete.


=head2 B<REQUIRED> IPAddressVersion => Str

  Specify IPV4 or IPV6.


=head2 B<REQUIRED> Name => Str

  A friendly name of the IP set. You cannot change the name of an
C<IPSet> after you create it.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WAFv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

