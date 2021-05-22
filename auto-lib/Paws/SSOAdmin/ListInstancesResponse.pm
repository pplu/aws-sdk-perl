
package Paws::SSOAdmin::ListInstancesResponse;
  use Moose;
  has Instances => (is => 'ro', isa => 'ArrayRef[Paws::SSOAdmin::InstanceMetadata]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSOAdmin::ListInstancesResponse

=head1 ATTRIBUTES


=head2 Instances => ArrayRef[L<Paws::SSOAdmin::InstanceMetadata>]

Lists the SSO instances that the caller has access to.


=head2 NextToken => Str

The pagination token for the list API. Initially the value is null. Use
the output of previous API calls to make subsequent calls.


=head2 _request_id => Str


=cut

1;