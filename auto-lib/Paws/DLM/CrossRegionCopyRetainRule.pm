package Paws::DLM::CrossRegionCopyRetainRule;
  use Moose;
  has Interval => (is => 'ro', isa => 'Int');
  has IntervalUnit => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DLM::CrossRegionCopyRetainRule

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DLM::CrossRegionCopyRetainRule object:

  $service_obj->Method(Att1 => { Interval => $value, ..., IntervalUnit => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DLM::CrossRegionCopyRetainRule object:

  $result = $service_obj->Method(...);
  $result->Att1->Interval

=head1 DESCRIPTION

Specifies the retention rule for cross-Region snapshot copies.

=head1 ATTRIBUTES


=head2 Interval => Int

  The amount of time to retain each snapshot. The maximum is 100 years.
This is equivalent to 1200 months, 5200 weeks, or 36500 days.


=head2 IntervalUnit => Str

  The unit of time for time-based retention.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DLM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

