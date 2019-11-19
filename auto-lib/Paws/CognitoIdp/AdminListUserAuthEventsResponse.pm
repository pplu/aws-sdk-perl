# Generated from json/callresult_class.tt

package Paws::CognitoIdp::AdminListUserAuthEventsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CognitoIdp::Types qw/CognitoIdp_AuthEventType/;
  has AuthEvents => (is => 'ro', isa => ArrayRef[CognitoIdp_AuthEventType]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'AuthEvents' => {
                                 'class' => 'Paws::CognitoIdp::AuthEventType',
                                 'type' => 'ArrayRef[CognitoIdp_AuthEventType]'
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

Paws::CognitoIdp::AdminListUserAuthEventsResponse

=head1 ATTRIBUTES


=head2 AuthEvents => ArrayRef[CognitoIdp_AuthEventType]

The response object. It includes the C<EventID>, C<EventType>,
C<CreationDate>, C<EventRisk>, and C<EventResponse>.


=head2 NextToken => Str

A pagination token.


=head2 _request_id => Str


=cut

1;