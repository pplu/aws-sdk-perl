# Generated from callresult_class.tt

package Paws::SNS::GetPlatformApplicationAttributesResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SNS::Types qw/SNS_MapStringToString/;
  has Attributes => (is => 'ro', isa => SNS_MapStringToString);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Attributes' => {
                                 'class' => 'Paws::SNS::MapStringToString',
                                 'type' => 'SNS_MapStringToString'
                               },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::SNS::GetPlatformApplicationAttributesResponse

=head1 ATTRIBUTES


=head2 Attributes => SNS_MapStringToString

Attributes include the following:

=over

=item *

C<EventEndpointCreated> E<ndash> Topic ARN to which EndpointCreated
event notifications should be sent.

=item *

C<EventEndpointDeleted> E<ndash> Topic ARN to which EndpointDeleted
event notifications should be sent.

=item *

C<EventEndpointUpdated> E<ndash> Topic ARN to which EndpointUpdate
event notifications should be sent.

=item *

C<EventDeliveryFailure> E<ndash> Topic ARN to which DeliveryFailure
event notifications should be sent upon Direct Publish delivery failure
(permanent) to one of the application's endpoints.

=back



=head2 _request_id => Str


=cut

