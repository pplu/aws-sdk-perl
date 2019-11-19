package Paws::S3::Object;
  use Moose;
  has ETag => (is => 'ro', isa => 'Str');
  has Key => (is => 'ro', isa => 'Str');
  has LastModified => (is => 'ro', isa => 'Str');
  has Owner => (is => 'ro', isa => 'Paws::S3::Owner');
  has Size => (is => 'ro', isa => 'Int');
  has StorageClass => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::Object

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3::Object object:

  $service_obj->Method(Att1 => { ETag => $value, ..., StorageClass => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3::Object object:

  $result = $service_obj->Method(...);
  $result->Att1->ETag

=head1 DESCRIPTION

An object consists of data and its descriptive metadata.

=head1 ATTRIBUTES


=head2 ETag => Str

  The entity tag is an MD5 hash of the object. ETag reflects only changes
to the contents of an object, not its metadata.


=head2 Key => Str

  The name that you assign to an object. You use the object key to
retrieve the object.


=head2 LastModified => Str

  The date the Object was Last Modified


=head2 Owner => L<Paws::S3::Owner>

  The owner of the object


=head2 Size => Int

  Size in bytes of the object


=head2 StorageClass => Str

  The class of storage used to store the object.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

