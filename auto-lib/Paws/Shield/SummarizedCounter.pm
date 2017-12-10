package Paws::Shield::SummarizedCounter;
  use Moose;
  has Average => (is => 'ro', isa => 'Num');
  has Max => (is => 'ro', isa => 'Num');
  has N => (is => 'ro', isa => 'Int');
  has Name => (is => 'ro', isa => 'Str');
  has Sum => (is => 'ro', isa => 'Num');
  has Unit => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Shield::SummarizedCounter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Shield::SummarizedCounter object:

  $service_obj->Method(Att1 => { Average => $value, ..., Unit => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Shield::SummarizedCounter object:

  $result = $service_obj->Method(...);
  $result->Att1->Average

=head1 DESCRIPTION

The counter that describes a DDoS attack.

=head1 ATTRIBUTES


=head2 Average => Num

  The average value of the counter for a specified time period.


=head2 Max => Num

  The maximum value of the counter for a specified time period.


=head2 N => Int

  The number of counters for a specified time period.


=head2 Name => Str

  The counter name.


=head2 Sum => Num

  The total of counter values for a specified time period.


=head2 Unit => Str

  The unit of the counters.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Shield>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

