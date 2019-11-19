
package Paws::S3::ListObjectVersions;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::S3::Types qw//;
  has Bucket => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Delimiter => (is => 'ro', isa => Str, predicate => 1);
  has EncodingType => (is => 'ro', isa => Str, predicate => 1);
  has KeyMarker => (is => 'ro', isa => Str, predicate => 1);
  has MaxKeys => (is => 'ro', isa => Int, predicate => 1);
  has Prefix => (is => 'ro', isa => Str, predicate => 1);
  has VersionIdMarker => (is => 'ro', isa => Str, predicate => 1);

use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ListObjectVersions');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/{Bucket}?versions');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'GET');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::S3::ListObjectVersionsOutput');
  class_has _result_key => (isa => Str, is => 'ro');
  
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'MaxKeys' => {
                              'type' => 'Int'
                            },
               'Prefix' => {
                             'type' => 'Str'
                           },
               'Delimiter' => {
                                'type' => 'Str'
                              },
               'VersionIdMarker' => {
                                      'type' => 'Str'
                                    },
               'EncodingType' => {
                                   'type' => 'Str'
                                 },
               'Bucket' => {
                             'type' => 'Str'
                           },
               'KeyMarker' => {
                                'type' => 'Str'
                              }
             },
  'IsRequired' => {
                    'Bucket' => 1
                  },
  'ParamInQuery' => {
                      'EncodingType' => 'encoding-type',
                      'Prefix' => 'prefix',
                      'KeyMarker' => 'key-marker',
                      'Delimiter' => 'delimiter',
                      'VersionIdMarker' => 'version-id-marker',
                      'MaxKeys' => 'max-keys'
                    },
  'ParamInURI' => {
                    'Bucket' => 'Bucket'
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::ListObjectVersions - Arguments for method ListObjectVersions on L<Paws::S3>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListObjectVersions on the
L<Amazon Simple Storage Service|Paws::S3> service. Use the attributes of this class
as arguments to method ListObjectVersions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListObjectVersions.

=head1 SYNOPSIS

    my $s3 = Paws->service('S3');
    my $ListObjectVersionsOutput = $s3->ListObjectVersions(
      Bucket          => 'MyBucketName',
      Delimiter       => 'MyDelimiter',          # OPTIONAL
      EncodingType    => 'url',                  # OPTIONAL
      KeyMarker       => 'MyKeyMarker',          # OPTIONAL
      MaxKeys         => 1,                      # OPTIONAL
      Prefix          => 'MyPrefix',             # OPTIONAL
      VersionIdMarker => 'MyVersionIdMarker',    # OPTIONAL
    );

    # Results:
    my $CommonPrefixes      = $ListObjectVersionsOutput->CommonPrefixes;
    my $DeleteMarkers       = $ListObjectVersionsOutput->DeleteMarkers;
    my $Delimiter           = $ListObjectVersionsOutput->Delimiter;
    my $EncodingType        = $ListObjectVersionsOutput->EncodingType;
    my $IsTruncated         = $ListObjectVersionsOutput->IsTruncated;
    my $KeyMarker           = $ListObjectVersionsOutput->KeyMarker;
    my $MaxKeys             = $ListObjectVersionsOutput->MaxKeys;
    my $Name                = $ListObjectVersionsOutput->Name;
    my $NextKeyMarker       = $ListObjectVersionsOutput->NextKeyMarker;
    my $NextVersionIdMarker = $ListObjectVersionsOutput->NextVersionIdMarker;
    my $Prefix              = $ListObjectVersionsOutput->Prefix;
    my $VersionIdMarker     = $ListObjectVersionsOutput->VersionIdMarker;
    my $Versions            = $ListObjectVersionsOutput->Versions;

    # Returns a L<Paws::S3::ListObjectVersionsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3/ListObjectVersions>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Bucket => Str

The name of the bucket that contains the objects.



=head2 Delimiter => Str

A delimiter is a character that you specify to group keys. All keys
that contain the same string between the C<prefix> and the first
occurrence of the delimiter are grouped under a single result element
in CommonPrefixes. These groups are counted as one result against the
max-keys limitation. These keys are not returned elsewhere in the
response.



=head2 EncodingType => Str



Valid values are: C<"url">

=head2 KeyMarker => Str

Specifies the key to start with when listing objects in a bucket.



=head2 MaxKeys => Int

Sets the maximum number of keys returned in the response. The response
might contain fewer keys but will never contain more. If additional
keys satisfy the search criteria, but were not returned because
max-keys was exceeded, the response contains
E<lt>isTruncatedE<gt>trueE<lt>/isTruncatedE<gt>. To return the
additional keys, see key-marker and version-id-marker.



=head2 Prefix => Str

Use this parameter to select only those keys that begin with the
specified prefix. You can use prefixes to separate a bucket into
different groupings of keys. (You can think of using prefix to make
groups in the same way you'd use a folder in a file system.) You can
use prefix with delimiter to roll up numerous objects into a single
result under CommonPrefixes.



=head2 VersionIdMarker => Str

Specifies the object version you want to start listing from.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListObjectVersions in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

