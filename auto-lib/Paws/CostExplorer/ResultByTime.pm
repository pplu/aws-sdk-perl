package Paws::CostExplorer::ResultByTime;
  use Moose;
  has Estimated => (is => 'ro', isa => 'Bool');
  has Groups => (is => 'ro', isa => 'ArrayRef[Paws::CostExplorer::Group]');
  has TimePeriod => (is => 'ro', isa => 'Paws::CostExplorer::DateInterval');
  has Total => (is => 'ro', isa => 'Paws::CostExplorer::Metrics');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::ResultByTime

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CostExplorer::ResultByTime object:

  $service_obj->Method(Att1 => { Estimated => $value, ..., Total => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CostExplorer::ResultByTime object:

  $result = $service_obj->Method(...);
  $result->Att1->Estimated

=head1 DESCRIPTION

The result that is associated with a time period.

=head1 ATTRIBUTES


=head2 Estimated => Bool

  Whether the result is estimated.


=head2 Groups => ArrayRef[L<Paws::CostExplorer::Group>]

  The groups that this time period includes.


=head2 TimePeriod => L<Paws::CostExplorer::DateInterval>

  The time period that the result covers.


=head2 Total => L<Paws::CostExplorer::Metrics>

  The total amount of cost or usage accrued during the time period.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CostExplorer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

