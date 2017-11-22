package Paws::Route53::AccountLimit;
  use Moose;
  has Type => (is => 'ro', isa => 'Str', required => 1);
  has Value => (is => 'ro', isa => 'Int', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::AccountLimit

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Route53::AccountLimit object:

  $service_obj->Method(Att1 => { Type => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Route53::AccountLimit object:

  $result = $service_obj->Method(...);
  $result->Att1->Type

=head1 DESCRIPTION

A complex type that contains the type of limit that you specified in
the request and the current value for that limit.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Type => Str

  The limit that you requested. Valid values include the following:

=over

=item *

B<MAX_HEALTH_CHECKS_BY_OWNER>: The maximum number of health checks that
you can create using the current account.

=item *

B<MAX_HOSTED_ZONES_BY_OWNER>: The maximum number of hosted zones that
you can create using the current account.

=item *

B<MAX_REUSABLE_DELEGATION_SETS_BY_OWNER>: The maximum number of
reusable delegation sets that you can create using the current account.

=item *

B<MAX_TRAFFIC_POLICIES_BY_OWNER>: The maximum number of traffic
policies that you can create using the current account.

=item *

B<MAX_TRAFFIC_POLICY_INSTANCES_BY_OWNER>: The maximum number of traffic
policy instances that you can create using the current account.
(Traffic policy instances are referred to as traffic flow policy
records in the Amazon Route 53 console.)

=back



=head2 B<REQUIRED> Value => Int

  The current value for the limit that is specified by AccountLimit$Type.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Route53>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

