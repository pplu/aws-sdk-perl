
package Paws::IoTThingsGraph::DescribeNamespaceResponse;
  use Moose;
  has NamespaceArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'namespaceArn' );
  has NamespaceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'namespaceName' );
  has NamespaceVersion => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'namespaceVersion' );
  has TrackingNamespaceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'trackingNamespaceName' );
  has TrackingNamespaceVersion => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'trackingNamespaceVersion' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::IoTThingsGraph::DescribeNamespaceResponse

=head1 ATTRIBUTES


=head2 NamespaceArn => Str

The ARN of the namespace.


=head2 NamespaceName => Str

The name of the namespace.


=head2 NamespaceVersion => Int

The version of the user's namespace to describe.


=head2 TrackingNamespaceName => Str

The name of the public namespace that the latest namespace version is
tracking.


=head2 TrackingNamespaceVersion => Int

The version of the public namespace that the latest version is
tracking.


=head2 _request_id => Str


=cut

1;