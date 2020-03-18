package Paws::S3::DeletedObject;
  use Moose;
  has DeleteMarker => (is => 'ro', isa => 'Bool');
  has DeleteMarkerVersionId => (is => 'ro', isa => 'Str');
  has Key => (is => 'ro', isa => 'Str');
  has VersionId => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::DeletedObject

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3::DeletedObject object:

  $service_obj->Method(Att1 => { DeleteMarker => $value, ..., VersionId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3::DeletedObject object:

  $result = $service_obj->Method(...);
  $result->Att1->DeleteMarker

=head1 DESCRIPTION

Information about the deleted object.

=head1 ATTRIBUTES


=head2 DeleteMarker => Bool

  Specifies whether the versioned object that was permanently deleted was
(true) or was not (false) a delete marker. In a simple DELETE, this
header indicates whether (true) or not (false) a delete marker was
created.


=head2 DeleteMarkerVersionId => Str

  The version ID of the delete marker created as a result of the DELETE
operation. If you delete a specific object version, the value returned
by this header is the version ID of the object version deleted.


=head2 Key => Str

  The name of the deleted object.


=head2 VersionId => Str

  The version ID of the deleted object.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

