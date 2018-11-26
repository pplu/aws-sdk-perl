package Paws::Robomaker::Filter;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has Values => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'values', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::Filter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Robomaker::Filter object:

  $service_obj->Method(Att1 => { Name => $value, ..., Values => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Robomaker::Filter object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

Information about a filter.

=head1 ATTRIBUTES


=head2 Name => Str

  The name of the filter.


=head2 Values => ArrayRef[Str|Undef]

  A list of values.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Robomaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

