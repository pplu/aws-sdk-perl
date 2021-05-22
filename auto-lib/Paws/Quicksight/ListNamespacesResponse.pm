
package Paws::Quicksight::ListNamespacesResponse;
  use Moose;
  has Namespaces => (is => 'ro', isa => 'ArrayRef[Paws::Quicksight::NamespaceInfoV2]');
  has NextToken => (is => 'ro', isa => 'Str');
  has RequestId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::ListNamespacesResponse

=head1 ATTRIBUTES


=head2 Namespaces => ArrayRef[L<Paws::Quicksight::NamespaceInfoV2>]

The information about the namespaces in this AWS account. The response
includes the namespace ARN, name, AWS Region, notification email
address, creation status, and identity store.


=head2 NextToken => Str

A pagination token that can be used in a subsequent request.


=head2 RequestId => Str

The AWS request ID for this operation.


=head2 Status => Int

The HTTP status of the request.


=head2 _request_id => Str


=cut

