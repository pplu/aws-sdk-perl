
package Paws::SMS::GetAppResponse;
  use Moose;
  has AppSummary => (is => 'ro', isa => 'Paws::SMS::AppSummary', traits => ['NameInRequest'], request_name => 'appSummary' );
  has ServerGroups => (is => 'ro', isa => 'ArrayRef[Paws::SMS::ServerGroup]', traits => ['NameInRequest'], request_name => 'serverGroups' );
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SMS::Tag]', traits => ['NameInRequest'], request_name => 'tags' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SMS::GetAppResponse

=head1 ATTRIBUTES


=head2 AppSummary => L<Paws::SMS::AppSummary>

Information about the application.


=head2 ServerGroups => ArrayRef[L<Paws::SMS::ServerGroup>]

List of server groups belonging to the application.


=head2 Tags => ArrayRef[L<Paws::SMS::Tag>]

List of tags associated with the application.


=head2 _request_id => Str


=cut

1;