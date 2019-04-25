package Paws::SecurityHub::StringFilter;
  use Moose;
  has Comparison => (is => 'ro', isa => 'Str');
  has Value => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::StringFilter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecurityHub::StringFilter object:

  $service_obj->Method(Att1 => { Comparison => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecurityHub::StringFilter object:

  $result = $service_obj->Method(...);
  $result->Att1->Comparison

=head1 DESCRIPTION

A string filter for querying findings.

=head1 ATTRIBUTES


=head2 Comparison => Str

  Represents the condition to be applied to a string value when querying
for findings.


=head2 Value => Str

  The string filter value.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

