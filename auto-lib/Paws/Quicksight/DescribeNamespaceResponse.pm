
package Paws::Quicksight::DescribeNamespaceResponse;
  use Moose;
  has Namespace => (is => 'ro', isa => 'Paws::Quicksight::NamespaceInfoV2');
  has RequestId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::DescribeNamespaceResponse

=head1 ATTRIBUTES


=head2 Namespace => L<Paws::Quicksight::NamespaceInfoV2>

The information about the namespace that you're describing. The
response includes the namespace ARN, name, AWS Region, creation status,
and identity store. C<DescribeNamespace> also works for namespaces that
are in the process of being created. For incomplete namespaces, this
API operation lists the namespace error types and messages associated
with the creation process.


=head2 RequestId => Str

The AWS request ID for this operation.


=head2 Status => Int

The HTTP status of the request.


=head2 _request_id => Str


=cut

