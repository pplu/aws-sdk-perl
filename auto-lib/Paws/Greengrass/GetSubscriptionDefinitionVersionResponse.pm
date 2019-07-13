
package Paws::Greengrass::GetSubscriptionDefinitionVersionResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has CreationTimestamp => (is => 'ro', isa => 'Str');
  has Definition => (is => 'ro', isa => 'Paws::Greengrass::SubscriptionDefinitionVersion');
  has Id => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');
  has Version => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::GetSubscriptionDefinitionVersionResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The ARN of the subscription definition version.


=head2 CreationTimestamp => Str

The time, in milliseconds since the epoch, when the subscription
definition version was created.


=head2 Definition => L<Paws::Greengrass::SubscriptionDefinitionVersion>

Information about the subscription definition version.


=head2 Id => Str

The ID of the subscription definition version.


=head2 NextToken => Str

The token for the next set of results, or ''null'' if there are no
additional results.


=head2 Version => Str

The version of the subscription definition version.


=head2 _request_id => Str


=cut

