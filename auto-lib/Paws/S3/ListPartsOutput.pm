
package Paws::S3::ListPartsOutput;
  use Moo;

  use Types::Standard qw/Str Bool Int ArrayRef/;
  use Paws::S3::Types qw/S3_Initiator S3_Part S3_Owner/;
  has AbortDate => (is => 'ro', isa => Str);
  has AbortRuleId => (is => 'ro', isa => Str);
  has Bucket => (is => 'ro', isa => Str);
  has Initiator => (is => 'ro', isa => S3_Initiator);
  has IsTruncated => (is => 'ro', isa => Bool);
  has Key => (is => 'ro', isa => Str);
  has MaxParts => (is => 'ro', isa => Int);
  has NextPartNumberMarker => (is => 'ro', isa => Int);
  has Owner => (is => 'ro', isa => S3_Owner);
  has PartNumberMarker => (is => 'ro', isa => Int);
  has Parts => (is => 'ro', isa => ArrayRef[S3_Part]);
  has RequestCharged => (is => 'ro', isa => Str);
  has StorageClass => (is => 'ro', isa => Str);
  has UploadId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'IsTruncated' => {
                                  'type' => 'Bool'
                                },
               'Bucket' => {
                             'type' => 'Str'
                           },
               'AbortRuleId' => {
                                  'type' => 'Str'
                                },
               'RequestCharged' => {
                                     'type' => 'Str'
                                   },
               'Owner' => {
                            'class' => 'Paws::S3::Owner',
                            'type' => 'S3_Owner'
                          },
               'PartNumberMarker' => {
                                       'type' => 'Int'
                                     },
               'AbortDate' => {
                                'type' => 'Str'
                              },
               'Parts' => {
                            'class' => 'Paws::S3::Part',
                            'type' => 'ArrayRef[S3_Part]'
                          },
               'MaxParts' => {
                               'type' => 'Int'
                             },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'UploadId' => {
                               'type' => 'Str'
                             },
               'StorageClass' => {
                                   'type' => 'Str'
                                 },
               'NextPartNumberMarker' => {
                                           'type' => 'Int'
                                         },
               'Initiator' => {
                                'class' => 'Paws::S3::Initiator',
                                'type' => 'S3_Initiator'
                              },
               'Key' => {
                          'type' => 'Str'
                        }
             },
  'ParamInHeader' => {
                       'AbortDate' => 'x-amz-abort-date',
                       'AbortRuleId' => 'x-amz-abort-rule-id',
                       'RequestCharged' => 'x-amz-request-charged'
                     },
  'NameInRequest' => {
                       'Parts' => 'Part'
                     }
}
;
    return $Params_map;
  }

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



=head2 Initiator => S3_Initiator

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



=head2 Owner => S3_Owner





=head2 PartNumberMarker => Int

Part number after which listing begins.



=head2 Parts => ArrayRef[S3_Part]





=head2 RequestCharged => Str



Valid values are: C<"requester">

=head2 StorageClass => Str

The class of storage used to store the object.

Valid values are: C<"STANDARD">, C<"REDUCED_REDUNDANCY">, C<"STANDARD_IA">, C<"ONEZONE_IA">, C<"INTELLIGENT_TIERING">, C<"GLACIER">, C<"DEEP_ARCHIVE">

=head2 UploadId => Str

Upload ID identifying the multipart upload whose parts are being
listed.




=cut

