package Paws::XRay::SamplingRule;
  use Moose;
  has Attributes => (is => 'ro', isa => 'Paws::XRay::AttributeMap');
  has FixedRate => (is => 'ro', isa => 'Num', required => 1);
  has Host => (is => 'ro', isa => 'Str', required => 1);
  has HTTPMethod => (is => 'ro', isa => 'Str', required => 1);
  has Priority => (is => 'ro', isa => 'Int', required => 1);
  has ReservoirSize => (is => 'ro', isa => 'Int', required => 1);
  has ResourceARN => (is => 'ro', isa => 'Str', required => 1);
  has RuleARN => (is => 'ro', isa => 'Str');
  has RuleName => (is => 'ro', isa => 'Str');
  has ServiceName => (is => 'ro', isa => 'Str', required => 1);
  has ServiceType => (is => 'ro', isa => 'Str', required => 1);
  has URLPath => (is => 'ro', isa => 'Str', required => 1);
  has Version => (is => 'ro', isa => 'Int', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::XRay::SamplingRule

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::XRay::SamplingRule object:

  $service_obj->Method(Att1 => { Attributes => $value, ..., Version => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::XRay::SamplingRule object:

  $result = $service_obj->Method(...);
  $result->Att1->Attributes

=head1 DESCRIPTION

A sampling rule that services use to decide whether to instrument a
request. Rule fields can match properties of the service, or properties
of a request. The service can ignore rules that don't match its
properties.

=head1 ATTRIBUTES


=head2 Attributes => L<Paws::XRay::AttributeMap>

  Matches attributes derived from the request.


=head2 B<REQUIRED> FixedRate => Num

  The percentage of matching requests to instrument, after the reservoir
is exhausted.


=head2 B<REQUIRED> Host => Str

  Matches the hostname from a request URL.


=head2 B<REQUIRED> HTTPMethod => Str

  Matches the HTTP method of a request.


=head2 B<REQUIRED> Priority => Int

  The priority of the sampling rule.


=head2 B<REQUIRED> ReservoirSize => Int

  A fixed number of matching requests to instrument per second, prior to
applying the fixed rate. The reservoir is not used directly by
services, but applies to all services using the rule collectively.


=head2 B<REQUIRED> ResourceARN => Str

  Matches the ARN of the AWS resource on which the service runs.


=head2 RuleARN => Str

  The ARN of the sampling rule. Specify a rule by either name or ARN, but
not both.


=head2 RuleName => Str

  The name of the sampling rule. Specify a rule by either name or ARN,
but not both.


=head2 B<REQUIRED> ServiceName => Str

  Matches the C<name> that the service uses to identify itself in
segments.


=head2 B<REQUIRED> ServiceType => Str

  Matches the C<origin> that the service uses to identify its type in
segments.


=head2 B<REQUIRED> URLPath => Str

  Matches the path from a request URL.


=head2 B<REQUIRED> Version => Int

  The version of the sampling rule format (C<1>).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::XRay>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

