package Paws::Kendra::DocumentAttributeValue;
  use Moose;
  has DateValue => (is => 'ro', isa => 'Str');
  has LongValue => (is => 'ro', isa => 'Int');
  has StringListValue => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has StringValue => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::DocumentAttributeValue

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Kendra::DocumentAttributeValue object:

  $service_obj->Method(Att1 => { DateValue => $value, ..., StringValue => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Kendra::DocumentAttributeValue object:

  $result = $service_obj->Method(...);
  $result->Att1->DateValue

=head1 DESCRIPTION

The value of a custom document attribute. You can only provide one
value for a custom attribute.

=head1 ATTRIBUTES


=head2 DateValue => Str

  A date value expressed as seconds from the Unix epoch.


=head2 LongValue => Int

  A long integer value.


=head2 StringListValue => ArrayRef[Str|Undef]

  A list of strings.


=head2 StringValue => Str

  A string, such as "department".



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Kendra>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

