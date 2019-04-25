
package Paws::MediaStoreData::GetObject;
  use Moose;
  has Path => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Path', required => 1);
  has Range => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Range');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetObject');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{Path+}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaStoreData::GetObjectResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaStoreData::GetObject - Arguments for method GetObject on L<Paws::MediaStoreData>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetObject on the
L<AWS Elemental MediaStore Data Plane|Paws::MediaStoreData> service. Use the attributes of this class
as arguments to method GetObject.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetObject.

=head1 SYNOPSIS

    my $data.mediastore = Paws->service('MediaStoreData');
    my $GetObjectResponse = $data . mediastore->GetObject(
      Path  => 'MyPathNaming',
      Range => 'MyRangePattern',    # OPTIONAL
    );

    # Results:
    my $Body          = $GetObjectResponse->Body;
    my $CacheControl  = $GetObjectResponse->CacheControl;
    my $ContentLength = $GetObjectResponse->ContentLength;
    my $ContentRange  = $GetObjectResponse->ContentRange;
    my $ContentType   = $GetObjectResponse->ContentType;
    my $ETag          = $GetObjectResponse->ETag;
    my $LastModified  = $GetObjectResponse->LastModified;
    my $StatusCode    = $GetObjectResponse->StatusCode;

    # Returns a L<Paws::MediaStoreData::GetObjectResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/data.mediastore/GetObject>

=head1 ATTRIBUTES


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



=head2 Range => Str

The range bytes of an object to retrieve. For more information about
the C<Range> header, go to
http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.35
(http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.35).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetObject in L<Paws::MediaStoreData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

