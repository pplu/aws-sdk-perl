
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

Paws::Route53::ListResourceRecordSets - Arguments for method ListResourceRecordSets on L<Paws::Route53>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListResourceRecordSets on the
L<Amazon Route 53|Paws::Route53> service. Use the attributes of this class
as arguments to method ListResourceRecordSets.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListResourceRecordSets.

=head1 SYNOPSIS

    my $route53 = Paws->service('Route53');
    my $ListResourceRecordSetsResponse = $route53->ListResourceRecordSets(
      HostedZoneId          => 'MyResourceId',
      MaxItems              => 'MyPageMaxItems',                   # OPTIONAL
      StartRecordIdentifier => 'MyResourceRecordSetIdentifier',    # OPTIONAL
      StartRecordName       => 'MyDNSName',                        # OPTIONAL
      StartRecordType       => 'SOA',                              # OPTIONAL
    );

    # Results:
    my $IsTruncated = $ListResourceRecordSetsResponse->IsTruncated;
    my $MaxItems    = $ListResourceRecordSetsResponse->MaxItems;
    my $NextRecordIdentifier =
      $ListResourceRecordSetsResponse->NextRecordIdentifier;
    my $NextRecordName = $ListResourceRecordSetsResponse->NextRecordName;
    my $NextRecordType = $ListResourceRecordSetsResponse->NextRecordType;
    my $ResourceRecordSets =
      $ListResourceRecordSetsResponse->ResourceRecordSets;

    # Returns a L<Paws::Route53::ListResourceRecordSetsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53/ListResourceRecordSets>

=head1 ATTRIBUTES


=head2 B<REQUIRED> HostedZoneId => Str

The ID of the hosted zone that contains the resource record sets that
you want to list.



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

The first name in the lexicographic ordering of resource record sets
that you want to list.



=head2 StartRecordType => Str

The type of resource record set to begin the record listing from.

Valid values for basic resource record sets: C<A> | C<AAAA> | C<CAA> |
C<CNAME> | C<MX> | C<NAPTR> | C<NS> | C<PTR> | C<SOA> | C<SPF> | C<SRV>
| C<TXT>

Values for weighted, latency, geolocation, and failover resource record
sets: C<A> | C<AAAA> | C<CAA> | C<CNAME> | C<MX> | C<NAPTR> | C<PTR> |
C<SPF> | C<SRV> | C<TXT>

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

=item *

B<Another resource record set in this hosted zone:> The type of the
resource record set that the alias references.

=back

Constraint: Specifying C<type> without specifying C<name> returns an
C<InvalidInput> error.

Valid values are: C<"SOA">, C<"A">, C<"TXT">, C<"NS">, C<"CNAME">, C<"MX">, C<"NAPTR">, C<"PTR">, C<"SRV">, C<"SPF">, C<"AAAA">, C<"CAA">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListResourceRecordSets in L<Paws::Route53>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

