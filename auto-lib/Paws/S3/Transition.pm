package Paws::S3::Transition;
  use Moose;
  has Date => (is => 'ro', isa => 'Str');
  has Days => (is => 'ro', isa => 'Int');
  has StorageClass => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::Transition

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3::Transition object:

  $service_obj->Method(Att1 => { Date => $value, ..., StorageClass => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3::Transition object:

  $result = $service_obj->Method(...);
  $result->Att1->Date

=head1 DESCRIPTION

Specifies when an object transitions to a specified storage class.

=head1 ATTRIBUTES


=head2 Date => Str

  Indicates when objects are transitioned to the specified storage class.
The date value must be in ISO 8601 format. The time is always midnight
UTC.


=head2 Days => Int

  Indicates the number of days after creation when objects are
transitioned to the specified storage class. The value must be a
positive integer.


=head2 StorageClass => Str

  The storage class to which you want the object to transition.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

