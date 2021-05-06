
package Paws::IoTThingsGraph::GetNamespaceDeletionStatusResponse;
  use Moose;
  has ErrorCode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'errorCode' );
  has ErrorMessage => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'errorMessage' );
  has NamespaceArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'namespaceArn' );
  has NamespaceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'namespaceName' );
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::IoTThingsGraph::GetNamespaceDeletionStatusResponse

=head1 ATTRIBUTES


=head2 ErrorCode => Str

An error code returned by the namespace deletion task.

Valid values are: C<"VALIDATION_FAILED">
=head2 ErrorMessage => Str

An error code returned by the namespace deletion task.


=head2 NamespaceArn => Str

The ARN of the namespace that is being deleted.


=head2 NamespaceName => Str

The name of the namespace that is being deleted.


=head2 Status => Str

The status of the deletion request.

Valid values are: C<"IN_PROGRESS">, C<"SUCCEEDED">, C<"FAILED">
=head2 _request_id => Str


=cut

1;