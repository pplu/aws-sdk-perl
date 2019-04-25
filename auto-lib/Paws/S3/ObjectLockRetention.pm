package Paws::S3::ObjectLockRetention;
  use Moose;
  has Mode => (is => 'ro', isa => 'Str');
  has RetainUntilDate => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::ObjectLockRetention

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3::ObjectLockRetention object:

  $service_obj->Method(Att1 => { Mode => $value, ..., RetainUntilDate => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3::ObjectLockRetention object:

  $result = $service_obj->Method(...);
  $result->Att1->Mode

=head1 DESCRIPTION

A Retention configuration for an object.

=head1 ATTRIBUTES


=head2 Mode => Str

  Indicates the Retention mode for the specified object.


=head2 RetainUntilDate => Str

  The date on which this Object Lock Retention will expire.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

