package Paws::RedShift::ResizeInfo;
  use Moose;
  has AllowCancelResize => (is => 'ro', isa => 'Bool');
  has ResizeType => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::ResizeInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RedShift::ResizeInfo object:

  $service_obj->Method(Att1 => { AllowCancelResize => $value, ..., ResizeType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RedShift::ResizeInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->AllowCancelResize

=head1 DESCRIPTION

Describes a resize operation.

=head1 ATTRIBUTES


=head2 AllowCancelResize => Bool

  A boolean value indicating if the resize operation can be cancelled.


=head2 ResizeType => Str

  Returns the value C<ClassicResize>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

