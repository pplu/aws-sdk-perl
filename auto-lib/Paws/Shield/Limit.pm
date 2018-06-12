package Paws::Shield::Limit;
  use Moose;
  has Max => (is => 'ro', isa => 'Int');
  has Type => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Shield::Limit

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Shield::Limit object:

  $service_obj->Method(Att1 => { Max => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Shield::Limit object:

  $result = $service_obj->Method(...);
  $result->Att1->Max

=head1 DESCRIPTION

Specifies how many protections of a given type you can create.

=head1 ATTRIBUTES


=head2 Max => Int

  The maximum number of protections that can be created for the specified
C<Type>.


=head2 Type => Str

  The type of protection.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Shield>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

