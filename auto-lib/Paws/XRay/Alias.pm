package Paws::XRay::Alias;
  use Moose;
  has Name => (is => 'ro', isa => 'Str');
  has Names => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Type => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::XRay::Alias

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::XRay::Alias object:

  $service_obj->Method(Att1 => { Name => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::XRay::Alias object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

An alias for an edge.

=head1 ATTRIBUTES


=head2 Name => Str

  The canonical name of the alias.


=head2 Names => ArrayRef[Str|Undef]

  A list of names for the alias, including the canonical name.


=head2 Type => Str

  The type of the alias.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::XRay>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

