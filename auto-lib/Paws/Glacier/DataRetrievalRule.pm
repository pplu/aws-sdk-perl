package Paws::Glacier::DataRetrievalRule;
  use Moose;
  has BytesPerHour => (is => 'ro', isa => 'Int');
  has Strategy => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glacier::DataRetrievalRule

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glacier::DataRetrievalRule object:

  $service_obj->Method(Att1 => { BytesPerHour => $value, ..., Strategy => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glacier::DataRetrievalRule object:

  $result = $service_obj->Method(...);
  $result->Att1->BytesPerHour

=head1 DESCRIPTION

Data retrieval policy rule.

=head1 ATTRIBUTES


=head2 BytesPerHour => Int

  The maximum number of bytes that can be retrieved in an hour.

This field is required only if the value of the Strategy field is
C<BytesPerHour>. Your PUT operation will be rejected if the Strategy
field is not set to C<BytesPerHour> and you set this field.


=head2 Strategy => Str

  The type of data retrieval policy to set.

Valid values: BytesPerHour|FreeTier|None



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glacier>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

