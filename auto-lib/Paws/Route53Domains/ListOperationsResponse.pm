# Generated from json/callresult_class.tt

package Paws::Route53Domains::ListOperationsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Route53Domains::Types qw/Route53Domains_OperationSummary/;
  has NextPageMarker => (is => 'ro', isa => Str);
  has Operations => (is => 'ro', isa => ArrayRef[Route53Domains_OperationSummary], required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextPageMarker' => {
                                     'type' => 'Str'
                                   },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Operations' => {
                                 'class' => 'Paws::Route53Domains::OperationSummary',
                                 'type' => 'ArrayRef[Route53Domains_OperationSummary]'
                               }
             },
  'IsRequired' => {
                    'Operations' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Route53Domains::ListOperationsResponse

=head1 ATTRIBUTES


=head2 NextPageMarker => Str

If there are more operations than you specified for C<MaxItems> in the
request, submit another request and include the value of
C<NextPageMarker> in the value of C<Marker>.


=head2 B<REQUIRED> Operations => ArrayRef[Route53Domains_OperationSummary]

Lists summaries of the operations.


=head2 _request_id => Str


=cut

1;