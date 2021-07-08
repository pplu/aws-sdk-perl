
package Paws::S3::ListPartsOutput;
  use Moose;
  has AbortDate => (is => 'ro', isa => 'Str', header_name => 'x-amz-abort-date', traits => ['ParamInHeader']);
  has AbortRuleId => (is => 'ro', isa => 'Str', header_name => 'x-amz-abort-rule-id', traits => ['ParamInHeader']);
  has Bucket => (is => 'ro', isa => 'Str');
  has Initiator => (is => 'ro', isa => 'Paws::S3::Initiator');
  has IsTruncated => (is => 'ro', isa => 'Bool');
  has Key => (is => 'ro', isa => 'Str');
  has MaxParts => (is => 'ro', isa => 'Int');
  has NextPartNumberMarker => (is => 'ro', isa => 'Int');
  has Owner => (is => 'ro', isa => 'Paws::S3::Owner');
  has PartNumberMarker => (is => 'ro', isa => 'Int');
  has Parts => (is => 'ro', isa => 'ArrayRef[Paws::S3::Part]', request_name => 'Part', traits => ['NameInRequest']);
  has RequestCharged => (is => 'ro', isa => 'Str', header_name => 'x-amz-request-charged', traits => ['ParamInHeader']);
  has StorageClass => (is => 'ro', isa => 'Str');
  has UploadId => (is => 'ro', isa => 'Str');


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::ListPartsOutput

=head1 ATTRIBUTES


=head2 AbortDate => Str

If the bucket has a lifecycle rule configured with an action to abort
incomplete multipart uploads and the prefix in the lifecycle rule
matches the object name in the request, then the response includes this
header indicating when the initiated multipart upload will become
eligible for abort operation. For more information, see Aborting
Incomplete Multipart Uploads Using a Bucket Lifecycle Policy
(https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuoverview.html#mpu-abort-incomplete-mpu-lifecycle-config).

The response will also include the C<x-amz-abort-rule-id> header that
will provide the ID of the lifecycle configuration rule that defines
this action.



=head2 AbortRuleId => Str

This header is returned along with the C<x-amz-abort-date> header. It
identifies applicable lifecycle configuration rule that defines the
action to abort incomplete multipart uploads.



=head2 Bucket => Str

The name of the bucket to which the multipart upload was initiated.



=head2 Initiator => L<Paws::S3::Initiator>

Container element that identifies who initiated the multipart upload.
If the initiator is an AWS account, this element provides the same
information as the C<Owner> element. If the initiator is an IAM User,
this element provides the user ARN and display name.



=head2 IsTruncated => Bool

Indicates whether the returned list of parts is truncated. A true value
indicates that the list was truncated. A list can be truncated if the
number of parts exceeds the limit returned in the MaxParts element.



=head2 Key => Str

Object key for which the multipart upload was initiated.



=head2 MaxParts => Int

Maximum number of parts that were allowed in the response.



=head2 NextPartNumberMarker => Int

When a list is truncated, this element specifies the last part in the
list, as well as the value to use for the part-number-marker request
parameter in a subsequent request.



=head2 Owner => L<Paws::S3::Owner>

Container element that identifies the object owner, after the object is
created. If multipart upload is initiated by an IAM user, this element
provides the parent account ID and display name.



=head2 PartNumberMarker => Int

When a list is truncated, this element specifies the last part in the
list, as well as the value to use for the part-number-marker request
parameter in a subsequent request.



=head2 Parts => ArrayRef[L<Paws::S3::Part>]

Container for elements related to a particular part. A response can
contain zero or more C<Part> elements.



=head2 RequestCharged => Str



Valid values are: C<"requester">

=head2 StorageClass => Str

Class of storage (STANDARD or REDUCED_REDUNDANCY) used to store the
uploaded object.

Valid values are: C<"STANDARD">, C<"REDUCED_REDUNDANCY">, C<"STANDARD_IA">, C<"ONEZONE_IA">, C<"INTELLIGENT_TIERING">, C<"GLACIER">, C<"DEEP_ARCHIVE">, C<"OUTPOSTS">

=head2 UploadId => Str

Upload ID identifying the multipart upload whose parts are being
listed.




=cut

