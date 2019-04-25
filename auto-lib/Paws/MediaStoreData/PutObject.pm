
package Paws::MediaStoreData::PutObject;
  use Moose;
  has Body => (is => 'ro', isa => 'Str', required => 1);
  has CacheControl => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Cache-Control');
  has ContentType => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Content-Type');
  has Path => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Path', required => 1);
  has StorageClass => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-storage-class');

  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'Body');
  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutObject');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{Path+}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaStoreData::PutObjectResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaStoreData::PutObject - Arguments for method PutObject on L<Paws::MediaStoreData>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutObject on the
L<AWS Elemental MediaStore Data Plane|Paws::MediaStoreData> service. Use the attributes of this class
as arguments to method PutObject.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutObject.

=head1 SYNOPSIS

    my $data.mediastore = Paws->service('MediaStoreData');
    my $PutObjectResponse = $data . mediastore->PutObject(
      Body         => 'BlobPayloadBlob',
      Path         => 'MyPathNaming',
      CacheControl => 'MyStringPrimitive',    # OPTIONAL
      ContentType  => 'MyContentType',        # OPTIONAL
      StorageClass => 'TEMPORAL',             # OPTIONAL
    );

    # Results:
    my $ContentSHA256 = $PutObjectResponse->ContentSHA256;
    my $ETag          = $PutObjectResponse->ETag;
    my $StorageClass  = $PutObjectResponse->StorageClass;

    # Returns a L<Paws::MediaStoreData::PutObjectResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/data.mediastore/PutObject>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Body => Str

The bytes to be stored.



=head2 CacheControl => Str

An optional C<CacheControl> header that allows the caller to control
the object's cache behavior. Headers can be passed in as specified in
the HTTP at
https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9
(https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9).

Headers with a custom user-defined value are also accepted.



=head2 ContentType => Str

The content type of the object.



=head2 B<REQUIRED> Path => Str

The path (including the file name) where the object is stored in the
container. Format: E<lt>folder nameE<gt>/E<lt>folder
nameE<gt>/E<lt>file nameE<gt>

For example, to upload the file C<mlaw.avi> to the folder path
C<premium\canada> in the container C<movies>, enter the path
C<premium/canada/mlaw.avi>.

Do not include the container name in this path.

If the path includes any folders that don't exist yet, the service
creates them. For example, suppose you have an existing C<premium/usa>
subfolder. If you specify C<premium/canada>, the service creates a
C<canada> subfolder in the C<premium> folder. You then have two
subfolders, C<usa> and C<canada>, in the C<premium> folder.

There is no correlation between the path to the source and the path
(folders) in the container in AWS Elemental MediaStore.

For more information about folders and how they exist in a container,
see the AWS Elemental MediaStore User Guide
(http://docs.aws.amazon.com/mediastore/latest/ug/).

The file name is the name that is assigned to the file that you upload.
The file can have the same name inside and outside of AWS Elemental
MediaStore, or it can have the same name. The file name can include or
omit an extension.



=head2 StorageClass => Str

Indicates the storage class of a C<Put> request. Defaults to
high-performance temporal storage class, and objects are persisted into
durable storage shortly after being received.

Valid values are: C<"TEMPORAL">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutObject in L<Paws::MediaStoreData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

