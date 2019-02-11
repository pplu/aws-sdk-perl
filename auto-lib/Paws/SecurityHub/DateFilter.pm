package Paws::SecurityHub::DateFilter;
  use Moose;
  has DateRange => (is => 'ro', isa => 'Paws::SecurityHub::DateRange');
  has End => (is => 'ro', isa => 'Str');
  has Start => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::DateFilter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecurityHub::DateFilter object:

  $service_obj->Method(Att1 => { DateRange => $value, ..., Start => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecurityHub::DateFilter object:

  $result = $service_obj->Method(...);
  $result->Att1->DateRange

=head1 DESCRIPTION

A date filter for querying findings.

=head1 ATTRIBUTES


=head2 DateRange => L<Paws::SecurityHub::DateRange>

  A date range for the date filter.


=head2 End => Str

  An end date for the date filter.


=head2 Start => Str

  A start date for the date filter.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

