package Paws::XRay::AnnotationValue;
  use Moose;
  has BooleanValue => (is => 'ro', isa => 'Bool');
  has NumberValue => (is => 'ro', isa => 'Num');
  has StringValue => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::XRay::AnnotationValue

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::XRay::AnnotationValue object:

  $service_obj->Method(Att1 => { BooleanValue => $value, ..., StringValue => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::XRay::AnnotationValue object:

  $result = $service_obj->Method(...);
  $result->Att1->BooleanValue

=head1 DESCRIPTION

Value of a segment annotation. Has one of three value types: Number,
Boolean or String.

=head1 ATTRIBUTES


=head2 BooleanValue => Bool

  Value for a Boolean annotation.


=head2 NumberValue => Num

  Value for a Number annotation.


=head2 StringValue => Str

  Value for a String annotation.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::XRay>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

