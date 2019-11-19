# Generated from json/callresult_class.tt

package Paws::IoTThingsGraph::GetUploadStatusResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef Int/;
  use Paws::IoTThingsGraph::Types qw//;
  has CreatedDate => (is => 'ro', isa => Str, required => 1);
  has FailureReason => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has NamespaceArn => (is => 'ro', isa => Str);
  has NamespaceName => (is => 'ro', isa => Str);
  has NamespaceVersion => (is => 'ro', isa => Int);
  has UploadId => (is => 'ro', isa => Str, required => 1);
  has UploadStatus => (is => 'ro', isa => Str, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'UploadId' => {
                               'type' => 'Str'
                             },
               'NamespaceVersion' => {
                                       'type' => 'Int'
                                     },
               'FailureReason' => {
                                    'type' => 'ArrayRef[Str|Undef]'
                                  },
               'NamespaceArn' => {
                                   'type' => 'Str'
                                 },
               'NamespaceName' => {
                                    'type' => 'Str'
                                  },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'CreatedDate' => {
                                  'type' => 'Str'
                                },
               'UploadStatus' => {
                                   'type' => 'Str'
                                 }
             },
  'NameInRequest' => {
                       'NamespaceName' => 'namespaceName',
                       'NamespaceArn' => 'namespaceArn',
                       'UploadStatus' => 'uploadStatus',
                       'CreatedDate' => 'createdDate',
                       'UploadId' => 'uploadId',
                       'FailureReason' => 'failureReason',
                       'NamespaceVersion' => 'namespaceVersion'
                     },
  'IsRequired' => {
                    'UploadStatus' => 1,
                    'CreatedDate' => 1,
                    'UploadId' => 1
                  }
}
;
    return $Params_map;
  }


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