package Paws::XRay::SamplingRuleUpdate;
  use Moose;
  has Attributes => (is => 'ro', isa => 'Paws::XRay::AttributeMap');
  has FixedRate => (is => 'ro', isa => 'Num');
  has Host => (is => 'ro', isa => 'Str');
  has HTTPMethod => (is => 'ro', isa => 'Str');
  has Priority => (is => 'ro', isa => 'Int');
  has ReservoirSize => (is => 'ro', isa => 'Int');
  has ResourceARN => (is => 'ro', isa => 'Str');
  has RuleARN => (is => 'ro', isa => 'Str');
  has RuleName => (is => 'ro', isa => 'Str');
  has ServiceName => (is => 'ro', isa => 'Str');
  has ServiceType => (is => 'ro', isa => 'Str');
  has URLPath => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::XRay::SamplingRuleUpdate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::XRay::SamplingRuleUpdate object:

  $service_obj->Method(Att1 => { Attributes => $value, ..., URLPath => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::XRay::SamplingRuleUpdate object:

  $result = $service_obj->Method(...);
  $result->Att1->Attributes

=head1 DESCRIPTION

A document specifying changes to a sampling rule's configuration.

=head1 ATTRIBUTES


=head2 Attributes => L<Paws::XRay::AttributeMap>

  Matches attributes derived from the request.


=head2 FixedRate => Num

  The percentage of matching requests to instrument, after the reservoir
is exhausted.


=head2 Host => Str

  Matches the hostname from a request URL.


=head2 HTTPMethod => Str

  Matches the HTTP method of a request.


=head2 Priority => Int

  The priority of the sampling rule.


=head2 ReservoirSize => Int

  A fixed number of matching requests to instrument per second, prior to
applying the fixed rate. The reservoir is not used directly by
services, but applies to all services using the rule collectively.


=head2 ResourceARN => Str

  Matches the ARN of the AWS resource on which the service runs.


=head2 RuleARN => Str

  The ARN of the sampling rule. Specify a rule by either name or ARN, but
not both.


=head2 RuleName => Str

  The name of the sampling rule. Specify a rule by either name or ARN,
but not both.


=head2 ServiceName => Str

  Matches the C<name> that the service uses to identify itself in
segments.


=head2 ServiceType => Str

  Matches the C<origin> that the service uses to identify its type in
segments.


=head2 URLPath => Str

  Matches the path from a request URL.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::XRay>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

