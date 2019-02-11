package Paws::RedShift::SupportedOperation;
  use Moose;
  has OperationName => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::SupportedOperation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RedShift::SupportedOperation object:

  $service_obj->Method(Att1 => { OperationName => $value, ..., OperationName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RedShift::SupportedOperation object:

  $result = $service_obj->Method(...);
  $result->Att1->OperationName

=head1 DESCRIPTION

Describes the operations that are allowed on a maintenance track.

=head1 ATTRIBUTES


=head2 OperationName => Str

  A list of the supported operations.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

