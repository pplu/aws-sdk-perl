package Paws::Kafka::Error;
  use Moose;
  has InvalidParameter => (is => 'ro', isa => 'Str', request_name => 'invalidParameter', traits => ['NameInRequest']);
  has Message => (is => 'ro', isa => 'Str', request_name => 'message', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kafka::Error

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Kafka::Error object:

  $service_obj->Method(Att1 => { InvalidParameter => $value, ..., Message => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Kafka::Error object:

  $result = $service_obj->Method(...);
  $result->Att1->InvalidParameter

=head1 DESCRIPTION

Returns information about an error.

=head1 ATTRIBUTES


=head2 InvalidParameter => Str

  The parameter that caused the error.


=head2 Message => Str

  The description of the error.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Kafka>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

