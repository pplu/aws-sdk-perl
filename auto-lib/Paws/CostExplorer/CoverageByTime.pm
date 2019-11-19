# Generated from default/object.tt
package Paws::CostExplorer::CoverageByTime;
  use Moo;
  use Types::Standard qw/ArrayRef/;
  use Paws::CostExplorer::Types qw/CostExplorer_DateInterval CostExplorer_ReservationCoverageGroup CostExplorer_Coverage/;
  has Groups => (is => 'ro', isa => ArrayRef[CostExplorer_ReservationCoverageGroup]);
  has TimePeriod => (is => 'ro', isa => CostExplorer_DateInterval);
  has Total => (is => 'ro', isa => CostExplorer_Coverage);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Total' => {
                            'type' => 'CostExplorer_Coverage',
                            'class' => 'Paws::CostExplorer::Coverage'
                          },
               'TimePeriod' => {
                                 'class' => 'Paws::CostExplorer::DateInterval',
                                 'type' => 'CostExplorer_DateInterval'
                               },
               'Groups' => {
                             'type' => 'ArrayRef[CostExplorer_ReservationCoverageGroup]',
                             'class' => 'Paws::CostExplorer::ReservationCoverageGroup'
                           }
             }
}
;
    return $Params_map;
  }


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


=head2 Groups => ArrayRef[CostExplorer_ReservationCoverageGroup]

  The groups of instances that the reservation covered.


=head2 TimePeriod => CostExplorer_DateInterval

  The period that this coverage was used over.


=head2 Total => CostExplorer_Coverage

  The total reservation coverage, in hours.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CostExplorer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

