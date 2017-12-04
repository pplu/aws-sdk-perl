package Paws::Route53::HealthCheck;
  use Moose;
  has CallerReference => (is => 'ro', isa => 'Str', required => 1);
  has CloudWatchAlarmConfiguration => (is => 'ro', isa => 'Paws::Route53::CloudWatchAlarmConfiguration');
  has HealthCheckConfig => (is => 'ro', isa => 'Paws::Route53::HealthCheckConfig', required => 1);
  has HealthCheckVersion => (is => 'ro', isa => 'Int', required => 1);
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has LinkedService => (is => 'ro', isa => 'Paws::Route53::LinkedService');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::HealthCheck

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Route53::HealthCheck object:

  $service_obj->Method(Att1 => { CallerReference => $value, ..., LinkedService => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Route53::HealthCheck object:

  $result = $service_obj->Method(...);
  $result->Att1->CallerReference

=head1 DESCRIPTION

A complex type that contains information about one health check that is
associated with the current AWS account.

=head1 ATTRIBUTES


=head2 B<REQUIRED> CallerReference => Str

  A unique string that you specified when you created the health check.


=head2 CloudWatchAlarmConfiguration => L<Paws::Route53::CloudWatchAlarmConfiguration>

  A complex type that contains information about the CloudWatch alarm
that Amazon Route 53 is monitoring for this health check.


=head2 B<REQUIRED> HealthCheckConfig => L<Paws::Route53::HealthCheckConfig>

  A complex type that contains detailed information about one health
check.


=head2 B<REQUIRED> HealthCheckVersion => Int

  The version of the health check. You can optionally pass this value in
a call to C<UpdateHealthCheck> to prevent overwriting another change to
the health check.


=head2 B<REQUIRED> Id => Str

  The identifier that Amazon Route 53assigned to the health check when
you created it. When you add or update a resource record set, you use
this value to specify which health check to use. The value can be up to
64 characters long.


=head2 LinkedService => L<Paws::Route53::LinkedService>

  If the health check was created by another service, the service that
created the health check. When a health check is created by another
service, you can't edit or delete it using Amazon Route 53.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Route53>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

