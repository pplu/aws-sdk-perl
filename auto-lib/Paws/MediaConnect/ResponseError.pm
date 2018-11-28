package Paws::MediaConnect::ResponseError;
  use Moose;
  has Message => (is => 'ro', isa => 'Str', request_name => 'message', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::ResponseError

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConnect::ResponseError object:

  $service_obj->Method(Att1 => { Message => $value, ..., Message => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConnect::ResponseError object:

  $result = $service_obj->Method(...);
  $result->Att1->Message

=head1 DESCRIPTION

Exception raised by AWS Elemental MediaConnect. See the error message
and documentation for the operation for more information on the cause
of this exception.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Message => Str

  The error message returned by AWS Elemental MediaConnect.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

