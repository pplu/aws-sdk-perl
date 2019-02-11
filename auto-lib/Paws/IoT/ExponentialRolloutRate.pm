package Paws::IoT::ExponentialRolloutRate;
  use Moose;
  has BaseRatePerMinute => (is => 'ro', isa => 'Int', request_name => 'baseRatePerMinute', traits => ['NameInRequest'], required => 1);
  has IncrementFactor => (is => 'ro', isa => 'Num', request_name => 'incrementFactor', traits => ['NameInRequest'], required => 1);
  has RateIncreaseCriteria => (is => 'ro', isa => 'Paws::IoT::RateIncreaseCriteria', request_name => 'rateIncreaseCriteria', traits => ['NameInRequest'], required => 1);
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


=head2 B<REQUIRED> RateIncreaseCriteria => L<Paws::IoT::RateIncreaseCriteria>

  The criteria to initiate the increase in rate of rollout for a job.

AWS IoT supports up to one digit after the decimal (for example, 1.5,
but not 1.55).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

