
package Paws::CognitoSync::GetCognitoEventsResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CognitoSync::Types qw/CognitoSync_Events/;
  has Events => (is => 'ro', isa => CognitoSync_Events);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Events' => {
                             'class' => 'Paws::CognitoSync::Events',
                             'type' => 'CognitoSync_Events'
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

Paws::CognitoSync::GetCognitoEventsResponse

=head1 ATTRIBUTES


=head2 Events => CognitoSync_Events

The Cognito Events returned from the GetCognitoEvents request


=head2 _request_id => Str


=cut

