package Paws::Route53::TrafficPolicyInstance;
  use Moose;
  has HostedZoneId => (is => 'ro', isa => 'Str', required => 1);
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has Message => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has State => (is => 'ro', isa => 'Str', required => 1);
  has TrafficPolicyId => (is => 'ro', isa => 'Str', required => 1);
  has TrafficPolicyType => (is => 'ro', isa => 'Str', required => 1);
  has TrafficPolicyVersion => (is => 'ro', isa => 'Int', required => 1);
  has TTL => (is => 'ro', isa => 'Int', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::TrafficPolicyInstance

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Route53::TrafficPolicyInstance object:

  $service_obj->Method(Att1 => { HostedZoneId => $value, ..., TTL => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Route53::TrafficPolicyInstance object:

  $result = $service_obj->Method(...);
  $result->Att1->HostedZoneId

=head1 DESCRIPTION

A complex type that contains settings for the new traffic policy
instance.

=head1 ATTRIBUTES


=head2 B<REQUIRED> HostedZoneId => Str

  The ID of the hosted zone that Amazon Route 53 created resource record
sets in.


=head2 B<REQUIRED> Id => Str

  The ID that Amazon Route 53 assigned to the new traffic policy
instance.


=head2 B<REQUIRED> Message => Str

  If C<State> is C<Failed>, an explanation of the reason for the failure.
If C<State> is another value, C<Message> is empty.


=head2 B<REQUIRED> Name => Str

  The DNS name, such as www.example.com, for which Amazon Route 53
responds to queries by using the resource record sets that are
associated with this traffic policy instance.


=head2 B<REQUIRED> State => Str

  The value of C<State> is one of the following values:

=over

=item Applied

Amazon Route 53 has finished creating resource record sets, and changes
have propagated to all Route 53 edge locations.

=item Creating

Route 53 is creating the resource record sets. Use
C<GetTrafficPolicyInstance> to confirm that the
C<CreateTrafficPolicyInstance> request completed successfully.

=item Failed

Route 53 wasn't able to create or update the resource record sets. When
the value of C<State> is C<Failed>, see C<Message> for an explanation
of what caused the request to fail.

=back



=head2 B<REQUIRED> TrafficPolicyId => Str

  The ID of the traffic policy that Amazon Route 53 used to create
resource record sets in the specified hosted zone.


=head2 B<REQUIRED> TrafficPolicyType => Str

  The DNS type that Amazon Route 53 assigned to all of the resource
record sets that it created for this traffic policy instance.


=head2 B<REQUIRED> TrafficPolicyVersion => Int

  The version of the traffic policy that Amazon Route 53 used to create
resource record sets in the specified hosted zone.


=head2 B<REQUIRED> TTL => Int

  The TTL that Amazon Route 53 assigned to all of the resource record
sets that it created in the specified hosted zone.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Route53>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

