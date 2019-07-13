package Paws::Datasync::LocationListEntry;
  use Moose;
  has LocationArn => (is => 'ro', isa => 'Str');
  has LocationUri => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::LocationListEntry

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Datasync::LocationListEntry object:

  $service_obj->Method(Att1 => { LocationArn => $value, ..., LocationUri => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Datasync::LocationListEntry object:

  $result = $service_obj->Method(...);
  $result->Att1->LocationArn

=head1 DESCRIPTION

Represents a single entry in a list of locations. C<LocationListEntry>
returns an array that contains a list of locations when the
ListLocations operation is called.

=head1 ATTRIBUTES


=head2 LocationArn => Str

  The Amazon Resource Name (ARN) of the location. For Network File System
(NFS) or Amazon EFS, the location is the export path. For Amazon S3,
the location is the prefix path that you want to mount and use as the
root of the location.


=head2 LocationUri => Str

  Represents a list of URLs of a location. C<LocationUri> returns an
array that contains a list of locations when the ListLocations
operation is called.

Format: C<TYPE://GLOBAL_ID/SUBDIR>.

TYPE designates the type of location. Valid values: NFS | EFS | S3.

GLOBAL_ID is the globally unique identifier of the resource that backs
the location. An example for EFS is C<us-east-2.fs-abcd1234>. An
example for Amazon S3 is the bucket name, such as C<myBucket>. An
example for NFS is a valid IPv4 address or a host name compliant with
Domain Name Service (DNS).

SUBDIR is a valid file system path, delimited by forward slashes as is
the *nix convention. For NFS and Amazon EFS, it's the export path to
mount the location. For Amazon S3, it's the prefix path that you mount
to and treat as the root of the location.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Datasync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

