
package Paws::S3::ListParts;
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', uri_name => 'Bucket', traits => ['ParamInURI'], required => 1);
  has Key => (is => 'ro', isa => 'Str', uri_name => 'Key', traits => ['ParamInURI'], required => 1);
  has MaxParts => (is => 'ro', isa => 'Int', query_name => 'max-parts', traits => ['ParamInQuery']);
  has PartNumberMarker => (is => 'ro', isa => 'Int', query_name => 'part-number-marker', traits => ['ParamInQuery']);
  has RequestPayer => (is => 'ro', isa => 'Str', header_name => 'x-amz-request-payer', traits => ['ParamInHeader']);
  has UploadId => (is => 'ro', isa => 'Str', query_name => 'uploadId', traits => ['ParamInQuery'], required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListParts');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{Bucket}/{Key+}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3::ListPartsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::ListParts - Arguments for method ListParts on L<Paws::S3>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListParts on the
L<Amazon Simple Storage Service|Paws::S3> service. Use the attributes of this class
as arguments to method ListParts.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListParts.

=head1 SYNOPSIS

    my $s3 = Paws->service('S3');
    my $ListPartsOutput = $s3->ListParts(
      Bucket           => 'MyBucketName',
      Key              => 'MyObjectKey',
      UploadId         => 'MyMultipartUploadId',
      MaxParts         => 1,                       # OPTIONAL
      PartNumberMarker => 1,                       # OPTIONAL
      RequestPayer     => 'requester',             # OPTIONAL
    );

    # Results:
    my $AbortDate            = $ListPartsOutput->AbortDate;
    my $AbortRuleId          = $ListPartsOutput->AbortRuleId;
    my $Bucket               = $ListPartsOutput->Bucket;
    my $Initiator            = $ListPartsOutput->Initiator;
    my $IsTruncated          = $ListPartsOutput->IsTruncated;
    my $Key                  = $ListPartsOutput->Key;
    my $MaxParts             = $ListPartsOutput->MaxParts;
    my $NextPartNumberMarker = $ListPartsOutput->NextPartNumberMarker;
    my $Owner                = $ListPartsOutput->Owner;
    my $PartNumberMarker     = $ListPartsOutput->PartNumberMarker;
    my $Parts                = $ListPartsOutput->Parts;
    my $RequestCharged       = $ListPartsOutput->RequestCharged;
    my $StorageClass         = $ListPartsOutput->StorageClass;
    my $UploadId             = $ListPartsOutput->UploadId;

    # Returns a L<Paws::S3::ListPartsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3/ListParts>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Bucket => Str





=head2 B<REQUIRED> Key => Str





=head2 MaxParts => Int

Sets the maximum number of parts to return.



=head2 PartNumberMarker => Int

Specifies the part after which listing should begin. Only parts with
higher part numbers will be listed.



=head2 RequestPayer => Str



Valid values are: C<"requester">

=head2 B<REQUIRED> UploadId => Str

Upload ID identifying the multipart upload whose parts are being
listed.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListParts in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

