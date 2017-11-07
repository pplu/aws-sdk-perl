package Paws::MTurk::Locale;
  use Moose;
  has Country => (is => 'ro', isa => 'Str', required => 1);
  has Subdivision => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MTurk::Locale

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MTurk::Locale object:

  $service_obj->Method(Att1 => { Country => $value, ..., Subdivision => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MTurk::Locale object:

  $result = $service_obj->Method(...);
  $result->Att1->Country

=head1 DESCRIPTION

The Locale data structure represents a geographical region or location.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Country => Str

  The country of the locale. Must be a valid ISO 3166 country code. For
example, the code US refers to the United States of America.


=head2 Subdivision => Str

  The state or subdivision of the locale. A valid ISO 3166-2 subdivision
code. For example, the code WA refers to the state of Washington.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MTurk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

