package Paws::AlexaForBusiness::Category;
  use Moose;
  has CategoryId => (is => 'ro', isa => 'Int');
  has CategoryName => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::Category

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AlexaForBusiness::Category object:

  $service_obj->Method(Att1 => { CategoryId => $value, ..., CategoryName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AlexaForBusiness::Category object:

  $result = $service_obj->Method(...);
  $result->Att1->CategoryId

=head1 DESCRIPTION

The skill store category that is shown. Alexa skills are assigned a
specific skill category during creation, such as News, Social, and
Sports.

=head1 ATTRIBUTES


=head2 CategoryId => Int

  The ID of the skill store category.


=head2 CategoryName => Str

  The name of the skill store category.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AlexaForBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

