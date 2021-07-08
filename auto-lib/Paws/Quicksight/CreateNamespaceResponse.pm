
package Paws::Quicksight::CreateNamespaceResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has CapacityRegion => (is => 'ro', isa => 'Str');
  has CreationStatus => (is => 'ro', isa => 'Str');
  has IdentityStore => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has RequestId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::CreateNamespaceResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The ARN of the QuickSight namespace you created.


=head2 CapacityRegion => Str

The AWS Region that you want to use for the free SPICE capacity for the
new namespace. This is set to the region that you run CreateNamespace
in.


=head2 CreationStatus => Str

The status of the creation of the namespace. This is an asynchronous
process. A status of C<CREATED> means that your namespace is ready to
use. If an error occurs, it indicates if the process is C<retryable> or
C<non-retryable>. In the case of a non-retryable error, refer to the
error message for follow-up tasks.

Valid values are: C<"CREATED">, C<"CREATING">, C<"DELETING">, C<"RETRYABLE_FAILURE">, C<"NON_RETRYABLE_FAILURE">
=head2 IdentityStore => Str

Specifies the type of your user identity directory. Currently, this
supports users with an identity type of C<QUICKSIGHT>.

Valid values are: C<"QUICKSIGHT">
=head2 Name => Str

The name of the new namespace that you created.


=head2 RequestId => Str

The AWS request ID for this operation.


=head2 Status => Int

The HTTP status of the request.


=head2 _request_id => Str


=cut

