
package Paws::IoTThingsGraph::GetUploadStatusResponse;
  use Moose;
  has CreatedDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdDate' , required => 1);
  has FailureReason => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'failureReason' );
  has NamespaceArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'namespaceArn' );
  has NamespaceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'namespaceName' );
  has NamespaceVersion => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'namespaceVersion' );
  has UploadId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'uploadId' , required => 1);
  has UploadStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'uploadStatus' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::IoTThingsGraph::GetUploadStatusResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreatedDate => Str

The date at which the upload was created.


=head2 FailureReason => ArrayRef[Str|Undef]

The reason for an upload failure.


=head2 NamespaceArn => Str

The ARN of the upload.


=head2 NamespaceName => Str

The name of the upload's namespace.


=head2 NamespaceVersion => Int

The version of the user's namespace. Defaults to the latest version of
the user's namespace.


=head2 B<REQUIRED> UploadId => Str

The ID of the upload.


=head2 B<REQUIRED> UploadStatus => Str

The status of the upload. The initial status is C<IN_PROGRESS>. The
response show all validation failures if the upload fails.

Valid values are: C<"IN_PROGRESS">, C<"SUCCEEDED">, C<"FAILED">
=head2 _request_id => Str


=cut

1;