# Generated from json/callresult_class.tt

package Paws::ServiceQuotas::ListServicesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ServiceQuotas::Types qw/ServiceQuotas_ServiceInfo/;
  has NextToken => (is => 'ro', isa => Str);
  has Services => (is => 'ro', isa => ArrayRef[ServiceQuotas_ServiceInfo]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Services' => {
                               'type' => 'ArrayRef[ServiceQuotas_ServiceInfo]',
                               'class' => 'Paws::ServiceQuotas::ServiceInfo'
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

Paws::ServiceQuotas::ListServicesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If present in the response, this value indicates there's more output
available that what's included in the current response. This can occur
even when the response includes no values at all, such as when you ask
for a filtered view of a very long list. Use this value in the
C<NextToken> request parameter in a subsequent call to the operation to
continue processing and get the next part of the output. You should
repeat this until the C<NextToken> response element comes back empty
(as C<null>).


=head2 Services => ArrayRef[ServiceQuotas_ServiceInfo]

Returns a list of services.


=head2 _request_id => Str


=cut

1;