package Paws::Route53::TrafficPolicy;
  use Moose;
  has Comment => (is => 'ro', isa => 'Str');
  has Document => (is => 'ro', isa => 'Str', required => 1);
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Type => (is => 'ro', isa => 'Str', required => 1);
  has Version => (is => 'ro', isa => 'Int', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::TrafficPolicy

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Route53::TrafficPolicy object:

  $service_obj->Method(Att1 => { Comment => $value, ..., Version => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Route53::TrafficPolicy object:

  $result = $service_obj->Method(...);
  $result->Att1->Comment

=head1 DESCRIPTION

A complex type that contains settings for a traffic policy.

=head1 ATTRIBUTES


=head2 Comment => Str

  The comment that you specify in the C<CreateTrafficPolicy> request, if
any.


=head2 B<REQUIRED> Document => Str

  The definition of a traffic policy in JSON format. You specify the JSON
document to use for a new traffic policy in the C<CreateTrafficPolicy>
request. For more information about the JSON format, see Traffic Policy
Document Format
(http://docs.aws.amazon.com/Route53/latest/APIReference/api-policies-traffic-policy-document-format.html).


=head2 B<REQUIRED> Id => Str

  The ID that Amazon Route 53 assigned to a traffic policy when you
created it.


=head2 B<REQUIRED> Name => Str

  The name that you specified when you created the traffic policy.


=head2 B<REQUIRED> Type => Str

  The DNS type of the resource record sets that Amazon Route 53 creates
when you use a traffic policy to create a traffic policy instance.


=head2 B<REQUIRED> Version => Int

  The version number that Amazon Route 53 assigns to a traffic policy.
For a new traffic policy, the value of C<Version> is always 1.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Route53>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

