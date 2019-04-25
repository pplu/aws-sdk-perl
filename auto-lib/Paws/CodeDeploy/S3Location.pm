package Paws::CodeDeploy::S3Location;
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', request_name => 'bucket', traits => ['NameInRequest']);
  has BundleType => (is => 'ro', isa => 'Str', request_name => 'bundleType', traits => ['NameInRequest']);
  has ETag => (is => 'ro', isa => 'Str', request_name => 'eTag', traits => ['NameInRequest']);
  has Key => (is => 'ro', isa => 'Str', request_name => 'key', traits => ['NameInRequest']);
  has Version => (is => 'ro', isa => 'Str', request_name => 'version', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::S3Location

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeDeploy::S3Location object:

  $service_obj->Method(Att1 => { Bucket => $value, ..., Version => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeDeploy::S3Location object:

  $result = $service_obj->Method(...);
  $result->Att1->Bucket

=head1 DESCRIPTION

Information about the location of application artifacts stored in
Amazon S3.

=head1 ATTRIBUTES


=head2 Bucket => Str

  The name of the Amazon S3 bucket where the application revision is
stored.


=head2 BundleType => Str

  The file type of the application revision. Must be one of the
following:

=over

=item *

tar: A tar archive file.

=item *

tgz: A compressed tar archive file.

=item *

zip: A zip archive file.

=back



=head2 ETag => Str

  The ETag of the Amazon S3 object that represents the bundled artifacts
for the application revision.

If the ETag is not specified as an input parameter, ETag validation of
the object is skipped.


=head2 Key => Str

  The name of the Amazon S3 object that represents the bundled artifacts
for the application revision.


=head2 Version => Str

  A specific version of the Amazon S3 object that represents the bundled
artifacts for the application revision.

If the version is not specified, the system uses the most recent
version by default.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeDeploy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

