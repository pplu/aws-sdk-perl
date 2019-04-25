
package Paws::MediaLive::UpdateInputSecurityGroupResponse;
  use Moose;
  has SecurityGroup => (is => 'ro', isa => 'Paws::MediaLive::InputSecurityGroup', traits => ['NameInRequest'], request_name => 'securityGroup');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::UpdateInputSecurityGroupResponse

=head1 ATTRIBUTES


=head2 SecurityGroup => L<Paws::MediaLive::InputSecurityGroup>




=head2 _request_id => Str


=cut

