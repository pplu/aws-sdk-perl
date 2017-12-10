package Paws::Route53::TrafficPolicySummary;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has LatestVersion => (is => 'ro', isa => 'Int', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has TrafficPolicyCount => (is => 'ro', isa => 'Int', required => 1);
  has Type => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::TrafficPolicySummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Route53::TrafficPolicySummary object:

  $service_obj->Method(Att1 => { Id => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Route53::TrafficPolicySummary object:

  $result = $service_obj->Method(...);
  $result->Att1->Id

=head1 DESCRIPTION

A complex type that contains information about the latest version of
one traffic policy that is associated with the current AWS account.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

  The ID that Amazon Route 53 assigned to the traffic policy when you
created it.


=head2 B<REQUIRED> LatestVersion => Int

  The version number of the latest version of the traffic policy.


=head2 B<REQUIRED> Name => Str

  The name that you specified for the traffic policy when you created it.


=head2 B<REQUIRED> TrafficPolicyCount => Int

  The number of traffic policies that are associated with the current AWS
account.


=head2 B<REQUIRED> Type => Str

  The DNS type of the resource record sets that Amazon Route 53 creates
when you use a traffic policy to create a traffic policy instance.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Route53>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

