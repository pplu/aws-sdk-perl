package Paws::XRay::SamplingTargetDocument;
  use Moose;
  has FixedRate => (is => 'ro', isa => 'Num');
  has Interval => (is => 'ro', isa => 'Int');
  has ReservoirQuota => (is => 'ro', isa => 'Int');
  has ReservoirQuotaTTL => (is => 'ro', isa => 'Str');
  has RuleName => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::XRay::SamplingTargetDocument

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::XRay::SamplingTargetDocument object:

  $service_obj->Method(Att1 => { FixedRate => $value, ..., RuleName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::XRay::SamplingTargetDocument object:

  $result = $service_obj->Method(...);
  $result->Att1->FixedRate

=head1 DESCRIPTION

Temporary changes to a sampling rule configuration. To meet the global
sampling target for a rule, X-Ray calculates a new reservoir for each
service based on the recent sampling results of all services that
called GetSamplingTargets.

=head1 ATTRIBUTES


=head2 FixedRate => Num

  The percentage of matching requests to instrument, after the reservoir
is exhausted.


=head2 Interval => Int

  The number of seconds for the service to wait before getting sampling
targets again.


=head2 ReservoirQuota => Int

  The number of requests per second that X-Ray allocated this service.


=head2 ReservoirQuotaTTL => Str

  When the reservoir quota expires.


=head2 RuleName => Str

  The name of the sampling rule.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::XRay>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

