package Paws::SecurityHub::DateRange;
  use Moose;
  has Unit => (is => 'ro', isa => 'Str');
  has Value => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::DateRange

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecurityHub::DateRange object:

  $service_obj->Method(Att1 => { Unit => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecurityHub::DateRange object:

  $result = $service_obj->Method(...);
  $result->Att1->Unit

=head1 DESCRIPTION

A date range for the date filter.

=head1 ATTRIBUTES


=head2 Unit => Str

  A date range unit for the date filter.


=head2 Value => Int

  A date range value for the date filter.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

