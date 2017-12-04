
package Paws::MediaLive::ListInputSecurityGroupsResponse;
  use Moose;
  has InputSecurityGroups => (is => 'ro', isa => 'ArrayRef[Paws::MediaLive::InputSecurityGroup]', traits => ['NameInRequest'], request_name => 'inputSecurityGroups');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::ListInputSecurityGroupsResponse

=head1 ATTRIBUTES


=head2 InputSecurityGroups => ArrayRef[L<Paws::MediaLive::InputSecurityGroup>]

List of input security groups


=head2 NextToken => Str




=head2 _request_id => Str


=cut

