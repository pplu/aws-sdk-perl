
package Paws::Route53::ListResourceRecordSets;
  use Moose;
  has HostedZoneId => (is => 'ro', isa => 'Str', uri_name => 'Id', traits => ['ParamInURI'], required => 1);
  has MaxItems => (is => 'ro', isa => 'Str', query_name => 'maxitems', traits => ['ParamInQuery']);
  has StartRecordIdentifier => (is => 'ro', isa => 'Str', query_name => 'identifier', traits => ['ParamInQuery']);
  has StartRecordName => (is => 'ro', isa => 'Str', query_name => 'name', traits => ['ParamInQuery']);
  has StartRecordType => (is => 'ro', isa => 'Str', query_name => 'type', traits => ['ParamInQuery']);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListResourceRecordSets');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2013-04-01/hostedzone/{Id}/rrset');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53::ListResourceRecordSetsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::ListResourceRecordSets - Arguments for method ListResourceRecordSets on Paws::Route53

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListResourceRecordSets on the 
Amazon Route 53 service. Use the attributes of this class
as arguments to method ListResourceRecordSets.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListResourceRecordSets.

As an example:

  $service_obj->ListResourceRecordSets(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> HostedZoneId => Str

The ID of the hosted zone that contains the resource record sets that
you want to get.



=head2 MaxItems => Str

(Optional) The maximum number of resource records sets to include in
the response body for this request. If the response includes more than
C<maxitems> resource record sets, the value of the C<IsTruncated>
element in the response is C<true>, and the values of the
C<NextRecordName> and C<NextRecordType> elements in the response
identify the first resource record set in the next group of C<maxitems>
resource record sets.



=head2 StartRecordIdentifier => Str

I<Weighted resource record sets only:> If results were truncated for a
given DNS name and type, specify the value of C<NextRecordIdentifier>
from the previous response to get the next resource record set that has
the current DNS name and type.



=head2 StartRecordName => Str

The first name in the lexicographic ordering of domain names that you
want the C<ListResourceRecordSets> request to list.



=head2 StartRecordType => Str

The type of resource record set to begin the record listing from.

Valid values for basic resource record sets: C<A> | C<AAAA> | C<CNAME>
| C<MX> | C<NAPTR> | C<NS> | C<PTR> | C<SOA> | C<SPF> | C<SRV> | C<TXT>

Values for weighted, latency, geo, and failover resource record sets:
C<A> | C<AAAA> | C<CNAME> | C<MX> | C<NAPTR> | C<PTR> | C<SPF> | C<SRV>
| C<TXT>

Values for alias resource record sets:

=over

=item *

B<CloudFront distribution>: A or AAAA

=item *

B<Elastic Beanstalk environment that has a regionalized subdomain>: A

=item *

B<ELB load balancer>: A | AAAA

=item *

B<Amazon S3 bucket>: A

=back

Constraint: Specifying C<type> without specifying C<name> returns an
C<InvalidInput> error.

Valid values are: C<"SOA">, C<"A">, C<"TXT">, C<"NS">, C<"CNAME">, C<"MX">, C<"NAPTR">, C<"PTR">, C<"SRV">, C<"SPF">, C<"AAAA">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListResourceRecordSets in L<Paws::Route53>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

