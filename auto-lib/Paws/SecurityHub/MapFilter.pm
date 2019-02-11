package Paws::SecurityHub::MapFilter;
  use Moose;
  has Comparison => (is => 'ro', isa => 'Str');
  has Key => (is => 'ro', isa => 'Str');
  has Value => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::MapFilter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecurityHub::MapFilter object:

  $service_obj->Method(Att1 => { Comparison => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecurityHub::MapFilter object:

  $result = $service_obj->Method(...);
  $result->Att1->Comparison

=head1 DESCRIPTION

The map filter for querying findings.

=head1 ATTRIBUTES


=head2 Comparison => Str

  Represents the condition to be applied to a key value when querying for
findings with a map filter.


=head2 Key => Str

  The key of the map filter.


=head2 Value => Str

  The value for the key in the map filter.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

