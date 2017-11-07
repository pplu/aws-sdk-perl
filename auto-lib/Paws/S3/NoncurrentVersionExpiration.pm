package Paws::S3::NoncurrentVersionExpiration;
  use Moose;
  has NoncurrentDays => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::NoncurrentVersionExpiration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3::NoncurrentVersionExpiration object:

  $service_obj->Method(Att1 => { NoncurrentDays => $value, ..., NoncurrentDays => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3::NoncurrentVersionExpiration object:

  $result = $service_obj->Method(...);
  $result->Att1->NoncurrentDays

=head1 DESCRIPTION

Specifies when noncurrent object versions expire. Upon expiration,
Amazon S3 permanently deletes the noncurrent object versions. You set
this lifecycle configuration action on a bucket that has versioning
enabled (or suspended) to request that Amazon S3 delete noncurrent
object versions at a specific period in the object's lifetime.

=head1 ATTRIBUTES


=head2 NoncurrentDays => Int

  Specifies the number of days an object is noncurrent before Amazon S3
can perform the associated action. For information about the noncurrent
days calculations, see How Amazon S3 Calculates When an Object Became
Noncurrent
(http://docs.aws.amazon.com/AmazonS3/latest/dev/s3-access-control.html)
in the Amazon Simple Storage Service Developer Guide.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

