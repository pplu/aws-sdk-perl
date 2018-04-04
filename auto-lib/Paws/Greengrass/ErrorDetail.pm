package Paws::Greengrass::ErrorDetail;
  use Moose;
  has DetailedErrorCode => (is => 'ro', isa => 'Str');
  has DetailedErrorMessage => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::ErrorDetail

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Greengrass::ErrorDetail object:

  $service_obj->Method(Att1 => { DetailedErrorCode => $value, ..., DetailedErrorMessage => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Greengrass::ErrorDetail object:

  $result = $service_obj->Method(...);
  $result->Att1->DetailedErrorCode

=head1 DESCRIPTION

Details about the error.

=head1 ATTRIBUTES


=head2 DetailedErrorCode => Str

  A detailed error code.


=head2 DetailedErrorMessage => Str

  A detailed error message.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Greengrass>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

