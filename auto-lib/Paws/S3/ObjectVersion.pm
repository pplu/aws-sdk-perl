package Paws::S3::ObjectVersion;
  use Moose;
  has ETag => (is => 'ro', isa => 'Str');
  has IsLatest => (is => 'ro', isa => 'Bool');
  has Key => (is => 'ro', isa => 'Str');
  has LastModified => (is => 'ro', isa => 'Str');
  has Owner => (is => 'ro', isa => 'Paws::S3::Owner');
  has Size => (is => 'ro', isa => 'Int');
  has StorageClass => (is => 'ro', isa => 'Str');
  has VersionId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::ObjectVersion

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3::ObjectVersion object:

  $service_obj->Method(Att1 => { ETag => $value, ..., VersionId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3::ObjectVersion object:

  $result = $service_obj->Method(...);
  $result->Att1->ETag

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 ETag => Str

  


=head2 IsLatest => Bool

  Specifies whether the object is (true) or is not (false) the latest
version of an object.


=head2 Key => Str

  The object key.


=head2 LastModified => Str

  Date and time the object was last modified.


=head2 Owner => L<Paws::S3::Owner>

  


=head2 Size => Int

  Size in bytes of the object.


=head2 StorageClass => Str

  The class of storage used to store the object.


=head2 VersionId => Str

  Version ID of an object.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

