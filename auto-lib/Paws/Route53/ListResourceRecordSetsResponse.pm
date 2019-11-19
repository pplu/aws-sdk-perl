
package Paws::Route53::ListResourceRecordSetsResponse;
  use Moo;

  use Types::Standard qw/Str Bool ArrayRef/;
  use Paws::Route53::Types qw/Route53_ResourceRecordSet/;
  has IsTruncated => (is => 'ro', isa => Bool, required => 1);
  has MaxItems => (is => 'ro', isa => Str, required => 1);
  has NextRecordIdentifier => (is => 'ro', isa => Str);
  has NextRecordName => (is => 'ro', isa => Str);
  has NextRecordType => (is => 'ro', isa => Str);
  has ResourceRecordSets => (is => 'ro', isa => ArrayRef[Route53_ResourceRecordSet], required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextRecordIdentifier' => {
                                           'type' => 'Str'
                                         },
               'IsTruncated' => {
                                  'type' => 'Bool'
                                },
               'NextRecordName' => {
                                     'type' => 'Str'
                                   },
               'ResourceRecordSets' => {
                                         'class' => 'Paws::Route53::ResourceRecordSet',
                                         'type' => 'ArrayRef[Route53_ResourceRecordSet]'
                                       },
               'MaxItems' => {
                               'type' => 'Str'
                             },
               'NextRecordType' => {
                                     'type' => 'Str'
                                   },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'ResourceRecordSets' => 1,
                    'IsTruncated' => 1,
                    'MaxItems' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::ListResourceRecordSetsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> IsTruncated => Bool

A flag that indicates whether more resource record sets remain to be
listed. If your results were truncated, you can make a follow-up
pagination request by using the C<NextRecordName> element.



=head2 B<REQUIRED> MaxItems => Str

The maximum number of records you requested.



=head2 NextRecordIdentifier => Str

I<Resource record sets that have a routing policy other than simple:>
If results were truncated for a given DNS name and type, the value of
C<SetIdentifier> for the next resource record set that has the current
DNS name and type.

For information about routing policies, see Choosing a Routing Policy
(https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/routing-policy.html)
in the I<Amazon Route 53 Developer Guide>.



=head2 NextRecordName => Str

If the results were truncated, the name of the next record in the list.

This element is present only if C<IsTruncated> is true.



=head2 NextRecordType => Str

If the results were truncated, the type of the next record in the list.

This element is present only if C<IsTruncated> is true.

Valid values are: C<"SOA">, C<"A">, C<"TXT">, C<"NS">, C<"CNAME">, C<"MX">, C<"NAPTR">, C<"PTR">, C<"SRV">, C<"SPF">, C<"AAAA">, C<"CAA">

=head2 B<REQUIRED> ResourceRecordSets => ArrayRef[Route53_ResourceRecordSet]

Information about multiple resource record sets.




=cut

