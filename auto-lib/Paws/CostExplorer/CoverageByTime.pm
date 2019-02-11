package Paws::CostExplorer::CoverageByTime;
  use Moose;
  has Groups => (is => 'ro', isa => 'ArrayRef[Paws::CostExplorer::ReservationCoverageGroup]');
  has TimePeriod => (is => 'ro', isa => 'Paws::CostExplorer::DateInterval');
  has Total => (is => 'ro', isa => 'Paws::CostExplorer::Coverage');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::CoverageByTime

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CostExplorer::CoverageByTime object:

  $service_obj->Method(Att1 => { Groups => $value, ..., Total => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CostExplorer::CoverageByTime object:

  $result = $service_obj->Method(...);
  $result->Att1->Groups

=head1 DESCRIPTION

Reservation coverage for a specified period, in hours.

=head1 ATTRIBUTES


=head2 Groups => ArrayRef[L<Paws::CostExplorer::ReservationCoverageGroup>]

  The groups of instances that the reservation covered.


=head2 TimePeriod => L<Paws::CostExplorer::DateInterval>

  The period that this coverage was used over.


=head2 Total => L<Paws::CostExplorer::Coverage>

  The total reservation coverage, in hours.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CostExplorer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

