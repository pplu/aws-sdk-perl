# Generated from default/object.tt
package Paws::IoT::ExponentialRolloutRate;
  use Moo;
  use Types::Standard qw/Int Num/;
  use Paws::IoT::Types qw/IoT_RateIncreaseCriteria/;
  has BaseRatePerMinute => (is => 'ro', isa => Int, required => 1);
  has IncrementFactor => (is => 'ro', isa => Num, required => 1);
  has RateIncreaseCriteria => (is => 'ro', isa => IoT_RateIncreaseCriteria, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RateIncreaseCriteria' => {
                                           'class' => 'Paws::IoT::RateIncreaseCriteria',
                                           'type' => 'IoT_RateIncreaseCriteria'
                                         },
               'IncrementFactor' => {
                                      'type' => 'Num'
                                    },
               'BaseRatePerMinute' => {
                                        'type' => 'Int'
                                      }
             },
  'IsRequired' => {
                    'RateIncreaseCriteria' => 1,
                    'IncrementFactor' => 1,
                    'BaseRatePerMinute' => 1
                  },
  'NameInRequest' => {
                       'RateIncreaseCriteria' => 'rateIncreaseCriteria',
                       'BaseRatePerMinute' => 'baseRatePerMinute',
                       'IncrementFactor' => 'incrementFactor'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ExponentialRolloutRate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::ExponentialRolloutRate object:

  $service_obj->Method(Att1 => { BaseRatePerMinute => $value, ..., RateIncreaseCriteria => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::ExponentialRolloutRate object:

  $result = $service_obj->Method(...);
  $result->Att1->BaseRatePerMinute

=head1 DESCRIPTION

Allows you to create an exponential rate of rollout for a job.

=head1 ATTRIBUTES


=head2 B<REQUIRED> BaseRatePerMinute => Int

  The minimum number of things that will be notified of a pending job,
per minute at the start of job rollout. This parameter allows you to
define the initial rate of rollout.


=head2 B<REQUIRED> IncrementFactor => Num

  The exponential factor to increase the rate of rollout for a job.


=head2 B<REQUIRED> RateIncreaseCriteria => IoT_RateIncreaseCriteria

  The criteria to initiate the increase in rate of rollout for a job.

AWS IoT supports up to one digit after the decimal (for example, 1.5,
but not 1.55).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

