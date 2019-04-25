package Paws::CostExplorer::CoverageHours;
  use Moose;
  has CoverageHoursPercentage => (is => 'ro', isa => 'Str');
  has OnDemandHours => (is => 'ro', isa => 'Str');
  has ReservedHours => (is => 'ro', isa => 'Str');
  has TotalRunningHours => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::CoverageHours

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CostExplorer::CoverageHours object:

  $service_obj->Method(Att1 => { CoverageHoursPercentage => $value, ..., TotalRunningHours => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CostExplorer::CoverageHours object:

  $result = $service_obj->Method(...);
  $result->Att1->CoverageHoursPercentage

=head1 DESCRIPTION

How long a running instance either used a reservation or was On-Demand.

=head1 ATTRIBUTES


=head2 CoverageHoursPercentage => Str

  The percentage of instance hours that a reservation covered.


=head2 OnDemandHours => Str

  The number of instance running hours that On-Demand Instances covered.


=head2 ReservedHours => Str

  The number of instance running hours that reservations covered.


=head2 TotalRunningHours => Str

  The total instance usage, in hours.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CostExplorer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

