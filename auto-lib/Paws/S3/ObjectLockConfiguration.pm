package Paws::S3::ObjectLockConfiguration;
  use Moose;
  has ObjectLockEnabled => (is => 'ro', isa => 'Str');
  has Rule => (is => 'ro', isa => 'Paws::S3::ObjectLockRule');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::ObjectLockConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3::ObjectLockConfiguration object:

  $service_obj->Method(Att1 => { ObjectLockEnabled => $value, ..., Rule => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3::ObjectLockConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->ObjectLockEnabled

=head1 DESCRIPTION

The container element for Object Lock configuration parameters.

=head1 ATTRIBUTES


=head2 ObjectLockEnabled => Str

  Indicates whether this bucket has an Object Lock configuration enabled.


=head2 Rule => L<Paws::S3::ObjectLockRule>

  The Object Lock rule in place for the specified object.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

