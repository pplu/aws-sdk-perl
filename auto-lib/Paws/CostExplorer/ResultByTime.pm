# Generated from default/object.tt
package Paws::CostExplorer::ResultByTime;
  use Moo;
  use Types::Standard qw/Bool ArrayRef/;
  use Paws::CostExplorer::Types qw/CostExplorer_DateInterval CostExplorer_Group CostExplorer_Metrics/;
  has Estimated => (is => 'ro', isa => Bool);
  has Groups => (is => 'ro', isa => ArrayRef[CostExplorer_Group]);
  has TimePeriod => (is => 'ro', isa => CostExplorer_DateInterval);
  has Total => (is => 'ro', isa => CostExplorer_Metrics);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Total' => {
                            'class' => 'Paws::CostExplorer::Metrics',
                            'type' => 'CostExplorer_Metrics'
                          },
               'Groups' => {
                             'class' => 'Paws::CostExplorer::Group',
                             'type' => 'ArrayRef[CostExplorer_Group]'
                           },
               'Estimated' => {
                                'type' => 'Bool'
                              },
               'TimePeriod' => {
                                 'class' => 'Paws::CostExplorer::DateInterval',
                                 'type' => 'CostExplorer_DateInterval'
                               }
             }
}
;
    return $Params_map;
  }


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


=head2 Groups => ArrayRef[CostExplorer_Group]

  The groups that this time period includes.


=head2 TimePeriod => CostExplorer_DateInterval

  The time period that the result covers.


=head2 Total => CostExplorer_Metrics

  The total amount of cost or usage accrued during the time period.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CostExplorer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

