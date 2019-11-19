# Generated from default/object.tt
package Paws::CostExplorer::CurrentInstance;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CostExplorer::Types qw/CostExplorer_ResourceUtilization CostExplorer_ResourceDetails CostExplorer_TagValues/;
  has CurrencyCode => (is => 'ro', isa => Str);
  has MonthlyCost => (is => 'ro', isa => Str);
  has OnDemandHoursInLookbackPeriod => (is => 'ro', isa => Str);
  has ReservationCoveredHoursInLookbackPeriod => (is => 'ro', isa => Str);
  has ResourceDetails => (is => 'ro', isa => CostExplorer_ResourceDetails);
  has ResourceId => (is => 'ro', isa => Str);
  has ResourceUtilization => (is => 'ro', isa => CostExplorer_ResourceUtilization);
  has SavingsPlansCoveredHoursInLookbackPeriod => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => ArrayRef[CostExplorer_TagValues]);
  has TotalRunningHoursInLookbackPeriod => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ResourceId' => {
                                 'type' => 'Str'
                               },
               'TotalRunningHoursInLookbackPeriod' => {
                                                        'type' => 'Str'
                                                      },
               'SavingsPlansCoveredHoursInLookbackPeriod' => {
                                                               'type' => 'Str'
                                                             },
               'ResourceUtilization' => {
                                          'class' => 'Paws::CostExplorer::ResourceUtilization',
                                          'type' => 'CostExplorer_ResourceUtilization'
                                        },
               'Tags' => {
                           'type' => 'ArrayRef[CostExplorer_TagValues]',
                           'class' => 'Paws::CostExplorer::TagValues'
                         },
               'OnDemandHoursInLookbackPeriod' => {
                                                    'type' => 'Str'
                                                  },
               'ReservationCoveredHoursInLookbackPeriod' => {
                                                              'type' => 'Str'
                                                            },
               'CurrencyCode' => {
                                   'type' => 'Str'
                                 },
               'ResourceDetails' => {
                                      'class' => 'Paws::CostExplorer::ResourceDetails',
                                      'type' => 'CostExplorer_ResourceDetails'
                                    },
               'MonthlyCost' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::CurrentInstance

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CostExplorer::CurrentInstance object:

  $service_obj->Method(Att1 => { CurrencyCode => $value, ..., TotalRunningHoursInLookbackPeriod => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CostExplorer::CurrentInstance object:

  $result = $service_obj->Method(...);
  $result->Att1->CurrencyCode

=head1 DESCRIPTION

Context about the current instance.

=head1 ATTRIBUTES


=head2 CurrencyCode => Str

  The currency code that Amazon Web Services used to calculate the costs
for this instance.


=head2 MonthlyCost => Str

  Current On Demand cost of operating this instance on a monthly basis.


=head2 OnDemandHoursInLookbackPeriod => Str

  Number of hours during the lookback period billed at On Demand rates.


=head2 ReservationCoveredHoursInLookbackPeriod => Str

  Number of hours during the lookback period covered by reservations.


=head2 ResourceDetails => CostExplorer_ResourceDetails

  Details about the resource and utilization.


=head2 ResourceId => Str

  Resource ID of the current instance.


=head2 ResourceUtilization => CostExplorer_ResourceUtilization

  Utilization information of the current instance during the lookback
period.


=head2 SavingsPlansCoveredHoursInLookbackPeriod => Str

  Number of hours during the lookback period covered by Savings Plans.


=head2 Tags => ArrayRef[CostExplorer_TagValues]

  Cost allocation resource tags applied to the instance.


=head2 TotalRunningHoursInLookbackPeriod => Str

  The total number of hours the instance ran during the lookback period.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CostExplorer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

