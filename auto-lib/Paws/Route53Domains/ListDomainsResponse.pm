# Generated from json/callresult_class.tt

package Paws::Route53Domains::ListDomainsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Route53Domains::Types qw/Route53Domains_DomainSummary/;
  has Domains => (is => 'ro', isa => ArrayRef[Route53Domains_DomainSummary], required => 1);
  has NextPageMarker => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextPageMarker' => {
                                     'type' => 'Str'
                                   },
               'Domains' => {
                              'class' => 'Paws::Route53Domains::DomainSummary',
                              'type' => 'ArrayRef[Route53Domains_DomainSummary]'
                            },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'Domains' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Route53Domains::ListDomainsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Domains => ArrayRef[Route53Domains_DomainSummary]

A summary of domains.


=head2 NextPageMarker => Str

If there are more domains than you specified for C<MaxItems> in the
request, submit another request and include the value of
C<NextPageMarker> in the value of C<Marker>.


=head2 _request_id => Str


=cut

1;