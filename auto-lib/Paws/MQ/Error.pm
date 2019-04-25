package Paws::MQ::Error;
  use Moose;
  has ErrorAttribute => (is => 'ro', isa => 'Str', request_name => 'errorAttribute', traits => ['NameInRequest']);
  has Message => (is => 'ro', isa => 'Str', request_name => 'message', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MQ::Error

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MQ::Error object:

  $service_obj->Method(Att1 => { ErrorAttribute => $value, ..., Message => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MQ::Error object:

  $result = $service_obj->Method(...);
  $result->Att1->ErrorAttribute

=head1 DESCRIPTION

Returns information about an error.

=head1 ATTRIBUTES


=head2 ErrorAttribute => Str

  The attribute which caused the error.


=head2 Message => Str

  The explanation of the error.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MQ>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

