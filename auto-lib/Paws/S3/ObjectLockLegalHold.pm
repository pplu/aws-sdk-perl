package Paws::S3::ObjectLockLegalHold;
  use Moose;
  has Status => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::ObjectLockLegalHold

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3::ObjectLockLegalHold object:

  $service_obj->Method(Att1 => { Status => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3::ObjectLockLegalHold object:

  $result = $service_obj->Method(...);
  $result->Att1->Status

=head1 DESCRIPTION

A Legal Hold configuration for an object.

=head1 ATTRIBUTES


=head2 Status => Str

  Indicates whether the specified object has a Legal Hold in place.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

