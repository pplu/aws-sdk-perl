
package Paws::S3::ListPartsOutput;
  use Moose;
  has AbortDate => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-abort-date');
  has AbortRuleId => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-abort-rule-id');
  has Bucket => (is => 'ro', isa => 'Str');
  has Initiator => (is => 'ro', isa => 'Paws::S3::Initiator');
  has IsTruncated => (is => 'ro', isa => 'Bool');
  has Key => (is => 'ro', isa => 'Str');
  has MaxParts => (is => 'ro', isa => 'Int');
  has NextPartNumberMarker => (is => 'ro', isa => 'Int');
  has Owner => (is => 'ro', isa => 'Paws::S3::Owner');
  has PartNumberMarker => (is => 'ro', isa => 'Int');
  has Parts => (is => 'ro', isa => 'ArrayRef[Paws::S3::Part]', traits => ['NameInRequest'], request_name => 'Part');
  has RequestCharged => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-request-charged');
  has StorageClass => (is => 'ro', isa => 'Str');
  has UploadId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::ListPartsOutput

=head1 ATTRIBUTES


=head2 AbortDate => Str

Date when multipart upload will become eligible for abort operation by
lifecycle.



=head2 AbortRuleId => Str

Id of the lifecycle rule that makes a multipart upload eligible for
abort operation.



=head2 Bucket => Str

Name of the bucket to which the multipart upload was initiated.



=head2 Initiator => L<Paws::S3::Initiator>

Identifies who initiated the multipart upload.



=head2 IsTruncated => Bool

Indicates whether the returned list of parts is truncated.



=head2 Key => Str

Object key for which the multipart upload was initiated.



=head2 MaxParts => Int

Maximum number of parts that were allowed in the response.



=head2 NextPartNumberMarker => Int

When a list is truncated, this element specifies the last part in the
list, as well as the value to use for the part-number-marker request
parameter in a subsequent request.



=head2 Owner => L<Paws::S3::Owner>





=head2 PartNumberMarker => Int

Part number after which listing begins.



=head2 Parts => ArrayRef[L<Paws::S3::Part>]





=head2 RequestCharged => Str



Valid values are: C<"requester">

=head2 StorageClass => Str

The class of storage used to store the object.

Valid values are: C<"STANDARD">, C<"REDUCED_REDUNDANCY">, C<"STANDARD_IA">, C<"ONEZONE_IA">, C<"INTELLIGENT_TIERING">, C<"GLACIER">

=head2 UploadId => Str

Upload ID identifying the multipart upload whose parts are being
listed.




=cut

