# Generated from json/callresult_class.tt

package Paws::Route53Domains::ViewBillingResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Route53Domains::Types qw/Route53Domains_BillingRecord/;
  has BillingRecords => (is => 'ro', isa => ArrayRef[Route53Domains_BillingRecord]);
  has NextPageMarker => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextPageMarker' => {
                                     'type' => 'Str'
                                   },
               'BillingRecords' => {
                                     'class' => 'Paws::Route53Domains::BillingRecord',
                                     'type' => 'ArrayRef[Route53Domains_BillingRecord]'
                                   },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Route53Domains::ViewBillingResponse

=head1 ATTRIBUTES


=head2 BillingRecords => ArrayRef[Route53Domains_BillingRecord]

A summary of billing records.


=head2 NextPageMarker => Str

If there are more billing records than you specified for C<MaxItems> in
the request, submit another request and include the value of
C<NextPageMarker> in the value of C<Marker>.


=head2 _request_id => Str


=cut

1;