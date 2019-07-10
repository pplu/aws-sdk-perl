package Paws::AlexaForBusiness::Text;
  use Moose;
  has Locale => (is => 'ro', isa => 'Str', required => 1);
  has Value => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::Text

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AlexaForBusiness::Text object:

  $service_obj->Method(Att1 => { Locale => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AlexaForBusiness::Text object:

  $result = $service_obj->Method(...);
  $result->Att1->Locale

=head1 DESCRIPTION

The text message.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Locale => Str

  The locale of the text message. Currently, en-US is supported.


=head2 B<REQUIRED> Value => Str

  The value of the text message.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AlexaForBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

