
package Paws::ECS::ListAccountSettingsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has Settings => (is => 'ro', isa => 'ArrayRef[Paws::ECS::Setting]', traits => ['NameInRequest'], request_name => 'settings' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ECS::ListAccountSettingsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The C<nextToken> value to include in a future C<ListAccountSettings>
request. When the results of a C<ListAccountSettings> request exceed
C<maxResults>, this value can be used to retrieve the next page of
results. This value is C<null> when there are no more results to
return.


=head2 Settings => ArrayRef[L<Paws::ECS::Setting>]

The account settings for the resource.


=head2 _request_id => Str


=cut

1;