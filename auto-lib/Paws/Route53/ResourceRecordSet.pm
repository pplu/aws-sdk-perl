package Paws::Route53::ResourceRecordSet;
  use Moose;
  has AliasTarget => (is => 'ro', isa => 'Paws::Route53::AliasTarget');
  has Failover => (is => 'ro', isa => 'Str');
  has GeoLocation => (is => 'ro', isa => 'Paws::Route53::GeoLocation');
  has HealthCheckId => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Region => (is => 'ro', isa => 'Str');
  has ResourceRecords => (is => 'ro', isa => 'ArrayRef[Paws::Route53::ResourceRecord]');
  has SetIdentifier => (is => 'ro', isa => 'Str');
  has TTL => (is => 'ro', isa => 'Int');
  has Type => (is => 'ro', isa => 'Str', required => 1);
  has Weight => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::ResourceRecordSet

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Route53::ResourceRecordSet object:

  $service_obj->Method(Att1 => { AliasTarget => $value, ..., Weight => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Route53::ResourceRecordSet object:

  $result = $service_obj->Method(...);
  $result->Att1->AliasTarget

=head1 DESCRIPTION

A complex type that contains information about the current resource
record set.

=head1 ATTRIBUTES

=head2 AliasTarget => L<Paws::Route53::AliasTarget>

  I<Alias resource record sets only:> Information about the AWS resource
to which you are redirecting traffic.

=head2 Failover => Str

  I<Failover resource record sets only:> Among resource record sets that
have the same combination of DNS name and type, a value that indicates
whether the current resource record set is a primary or secondary
resource record set. A failover set may contain at most one resource
record set marked as primary and one resource record set marked as
secondary. A resource record set marked as primary will be returned if
any of the following are true: (1) an associated health check is
passing, (2) if the resource record set is an alias with the evaluate
target health and at least one target resource record set is healthy,
(3) both the primary and secondary resource record set are failing
health checks or (4) there is no secondary resource record set. A
secondary resource record set will be returned if: (1) the primary is
failing a health check and either the secondary is passing a health
check or has no associated health check, or (2) there is no primary
resource record set.

Valid values: C<PRIMARY> | C<SECONDARY>

=head2 GeoLocation => L<Paws::Route53::GeoLocation>

  I<Geo location resource record sets only:> Among resource record sets
that have the same combination of DNS name and type, a value that
specifies the geo location for the current resource record set.

=head2 HealthCheckId => Str

  I<Health Check resource record sets only, not required for alias
resource record sets:> An identifier that is used to identify health
check associated with the resource record set.

=head2 B<REQUIRED> Name => Str

  The domain name of the current resource record set.

=head2 Region => Str

  I<Latency-based resource record sets only:> Among resource record sets
that have the same combination of DNS name and type, a value that
specifies the AWS region for the current resource record set.

=head2 ResourceRecords => ArrayRef[L<Paws::Route53::ResourceRecord>]

  A complex type that contains the resource records for the current
resource record set.

=head2 SetIdentifier => Str

  I<Weighted, Latency, Geo, and Failover resource record sets only:> An
identifier that differentiates among multiple resource record sets that
have the same combination of DNS name and type.

=head2 TTL => Int

  The cache time to live for the current resource record set.

=head2 B<REQUIRED> Type => Str

  The type of the current resource record set.

=head2 Weight => Int

  I<Weighted resource record sets only:> Among resource record sets that
have the same combination of DNS name and type, a value that determines
what portion of traffic for the current resource record set is routed
to the associated location.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Route53>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

