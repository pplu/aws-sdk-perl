package Paws::Route53::HealthCheck;
  use Moose;
  has CallerReference => (is => 'ro', isa => 'Str', required => 1);
  has HealthCheckConfig => (is => 'ro', isa => 'Paws::Route53::HealthCheckConfig', required => 1);
  has HealthCheckVersion => (is => 'ro', isa => 'Int', required => 1);
  has Id => (is => 'ro', isa => 'Str', required => 1);
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

  $service_obj->Method(Att1 => { CallerReference => $value, ..., Id => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Route53::HealthCheck object:

  $result = $service_obj->Method(...);
  $result->Att1->CallerReference

=head1 DESCRIPTION

A complex type that contains identifying information about the health
check.

=head1 ATTRIBUTES

=head2 B<REQUIRED> CallerReference => Str

  A unique string that identifies the request to create the health check.

=head2 B<REQUIRED> HealthCheckConfig => L<Paws::Route53::HealthCheckConfig>

  A complex type that contains the health check configuration.

=head2 B<REQUIRED> HealthCheckVersion => Int

  The version of the health check. You can optionally pass this value in
a call to C<UpdateHealthCheck> to prevent overwriting another change to
the health check.

=head2 B<REQUIRED> Id => Str

  The ID of the specified health check.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Route53>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

