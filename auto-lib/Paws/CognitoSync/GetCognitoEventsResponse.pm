
package Paws::CognitoSync::GetCognitoEventsResponse;
  use Moose;
  has Events => (is => 'ro', isa => 'HashRef[Str]');

1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoSync::GetCognitoEventsResponse

=head1 ATTRIBUTES


=head2 Events => HashRef[Str]

The Cognito Events returned from the GetCognitoEvents request




=cut

