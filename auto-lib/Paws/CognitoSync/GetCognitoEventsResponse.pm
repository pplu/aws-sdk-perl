
package Paws::CognitoSync::GetCognitoEventsResponse;
  use Moose;
  has Events => (is => 'ro', isa => 'Paws::CognitoSync::Events');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoSync::GetCognitoEventsResponse

=head1 ATTRIBUTES


=head2 Events => L<Paws::CognitoSync::Events>

The Cognito Events returned from the GetCognitoEvents request


=head2 _request_id => Str


=cut

