package Paws::EC2::DiskImageDetail;
  use Moose;
  has Bytes => (is => 'ro', isa => 'Int', request_name => 'bytes', traits => ['NameInRequest'], required => 1);
  has Format => (is => 'ro', isa => 'Str', request_name => 'format', traits => ['NameInRequest'], required => 1);
  has ImportManifestUrl => (is => 'ro', isa => 'Str', request_name => 'importManifestUrl', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DiskImageDetail

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::DiskImageDetail object:

  $service_obj->Method(Att1 => { Bytes => $value, ..., ImportManifestUrl => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::DiskImageDetail object:

  $result = $service_obj->Method(...);
  $result->Att1->Bytes

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 B<REQUIRED> Bytes => Int

  The size of the disk image, in GiB.


=head2 B<REQUIRED> Format => Str

  The disk image format.


=head2 B<REQUIRED> ImportManifestUrl => Str

  A presigned URL for the import manifest stored in Amazon S3 and
presented here as an Amazon S3 presigned URL. For information about
creating a presigned URL for an Amazon S3 object, read the "Query
String Request Authentication Alternative" section of the
Authenticating REST Requests
(https://docs.aws.amazon.com/AmazonS3/latest/dev/RESTAuthentication.html)
topic in the I<Amazon Simple Storage Service Developer Guide>.

For information about the import manifest referenced by this API
action, see VM Import Manifest
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/manifest.html).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
