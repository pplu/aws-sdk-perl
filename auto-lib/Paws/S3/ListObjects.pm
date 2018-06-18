
package Paws::S3::ListObjects;
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', uri_name => 'Bucket', traits => ['ParamInURI'], required => 1);
  has Delimiter => (is => 'ro', isa => 'Str', query_name => 'delimiter', traits => ['ParamInQuery']);
  has EncodingType => (is => 'ro', isa => 'Str', query_name => 'encoding-type', traits => ['ParamInQuery']);
  has Marker => (is => 'ro', isa => 'Str', query_name => 'marker', traits => ['ParamInQuery']);
  has MaxKeys => (is => 'ro', isa => 'Int', query_name => 'max-keys', traits => ['ParamInQuery']);
  has Prefix => (is => 'ro', isa => 'Str', query_name => 'prefix', traits => ['ParamInQuery']);
  has RequestPayer => (is => 'ro', isa => 'Str', header_name => 'x-amz-request-payer', traits => ['ParamInHeader']);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListObjects');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{Bucket}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3::ListObjectsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::ListObjects - Arguments for method ListObjects on L<Paws::S3>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListObjects on the
L<Amazon Simple Storage Service|Paws::S3> service. Use the attributes of this class
as arguments to method ListObjects.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListObjects.

=head1 SYNOPSIS

    my $s3 = Paws->service('S3');
    my $ListObjectsOutput = $s3->ListObjects(
      Bucket       => 'MyBucketName',
      Delimiter    => 'MyDelimiter',    # OPTIONAL
      EncodingType => 'url',            # OPTIONAL
      Marker       => 'MyMarker',       # OPTIONAL
      MaxKeys      => 1,                # OPTIONAL
      Prefix       => 'MyPrefix',       # OPTIONAL
      RequestPayer => 'requester',      # OPTIONAL
    );

    # Results:
    my $CommonPrefixes = $ListObjectsOutput->CommonPrefixes;
    my $Contents       = $ListObjectsOutput->Contents;
    my $Delimiter      = $ListObjectsOutput->Delimiter;
    my $EncodingType   = $ListObjectsOutput->EncodingType;
    my $IsTruncated    = $ListObjectsOutput->IsTruncated;
    my $Marker         = $ListObjectsOutput->Marker;
    my $MaxKeys        = $ListObjectsOutput->MaxKeys;
    my $Name           = $ListObjectsOutput->Name;
    my $NextMarker     = $ListObjectsOutput->NextMarker;
    my $Prefix         = $ListObjectsOutput->Prefix;

    # Returns a L<Paws::S3::ListObjectsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3/ListObjects>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Bucket => Str





=head2 Delimiter => Str

A delimiter is a character you use to group keys.



=head2 EncodingType => Str



Valid values are: C<"url">

=head2 Marker => Str

Specifies the key to start with when listing objects in a bucket.



=head2 MaxKeys => Int

Sets the maximum number of keys returned in the response. The response
might contain fewer keys but will never contain more.



=head2 Prefix => Str

Limits the response to keys that begin with the specified prefix.



=head2 RequestPayer => Str

Confirms that the requester knows that she or he will be charged for
the list objects request. Bucket owners need not specify this parameter
in their requests.

Valid values are: C<"requester">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListObjects in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

