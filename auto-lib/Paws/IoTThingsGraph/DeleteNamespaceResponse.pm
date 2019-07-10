
package Paws::IoTThingsGraph::DeleteNamespaceResponse;
  use Moose;
  has NamespaceArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'namespaceArn' );
  has NamespaceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'namespaceName' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::IoTThingsGraph::DeleteNamespaceResponse

=head1 ATTRIBUTES


=head2 NamespaceArn => Str

The ARN of the namespace to be deleted.


=head2 NamespaceName => Str

The name of the namespace to be deleted.


=head2 _request_id => Str


=cut

1;