package Paws::CostExplorer::UtilizationByTime;
  use Moose;
  has Groups => (is => 'ro', isa => 'ArrayRef[Paws::CostExplorer::ReservationUtilizationGroup]');
  has TimePeriod => (is => 'ro', isa => 'Paws::CostExplorer::DateInterval');
  has Total => (is => 'ro', isa => 'Paws::CostExplorer::ReservationAggregates');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::UtilizationByTime

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CostExplorer::UtilizationByTime object:

  $service_obj->Method(Att1 => { Groups => $value, ..., Total => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CostExplorer::UtilizationByTime object:

  $result = $service_obj->Method(...);
  $result->Att1->Groups

=head1 DESCRIPTION

The amount of utilization, in hours.

=head1 ATTRIBUTES


=head2 Groups => ArrayRef[L<Paws::CostExplorer::ReservationUtilizationGroup>]

  The groups that this utilization result uses.


=head2 TimePeriod => L<Paws::CostExplorer::DateInterval>

  The period of time that this utilization was used for.


=head2 Total => L<Paws::CostExplorer::ReservationAggregates>

  The total number of reservation hours that were used.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CostExplorer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

