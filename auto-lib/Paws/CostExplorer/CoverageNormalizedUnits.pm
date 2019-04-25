package Paws::CostExplorer::CoverageNormalizedUnits;
  use Moose;
  has CoverageNormalizedUnitsPercentage => (is => 'ro', isa => 'Str');
  has OnDemandNormalizedUnits => (is => 'ro', isa => 'Str');
  has ReservedNormalizedUnits => (is => 'ro', isa => 'Str');
  has TotalRunningNormalizedUnits => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::CoverageNormalizedUnits

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CostExplorer::CoverageNormalizedUnits object:

  $service_obj->Method(Att1 => { CoverageNormalizedUnitsPercentage => $value, ..., TotalRunningNormalizedUnits => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CostExplorer::CoverageNormalizedUnits object:

  $result = $service_obj->Method(...);
  $result->Att1->CoverageNormalizedUnitsPercentage

=head1 DESCRIPTION

The amount of instance usage, in normalized units. Normalized units
enable you to see your EC2 usage for multiple sizes of instances in a
uniform way. For example, suppose you run an xlarge instance and a
2xlarge instance. If you run both instances for the same amount of
time, the 2xlarge instance uses twice as much of your reservation as
the xlarge instance, even though both instances show only one
instance-hour. Using normalized units instead of instance-hours, the
xlarge instance used 8 normalized units, and the 2xlarge instance used
16 normalized units.

For more information, see Modifying Reserved Instances
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ri-modifying.html)
in the I<Amazon Elastic Compute Cloud User Guide for Linux Instances>.

=head1 ATTRIBUTES


=head2 CoverageNormalizedUnitsPercentage => Str

  The percentage of your used instance normalized units that a
reservation covers.


=head2 OnDemandNormalizedUnits => Str

  The number of normalized units that are covered by On-Demand Instances
instead of a reservation.


=head2 ReservedNormalizedUnits => Str

  The number of normalized units that a reservation covers.


=head2 TotalRunningNormalizedUnits => Str

  The total number of normalized units that you used.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CostExplorer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

