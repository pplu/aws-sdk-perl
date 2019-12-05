package Paws::RDS::DBProxyTarget;
  use Moose;
  has Endpoint => (is => 'ro', isa => 'Str');
  has Port => (is => 'ro', isa => 'Int');
  has RdsResourceId => (is => 'ro', isa => 'Str');
  has TargetArn => (is => 'ro', isa => 'Str');
  has TrackedClusterId => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DBProxyTarget

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RDS::DBProxyTarget object:

  $service_obj->Method(Att1 => { Endpoint => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RDS::DBProxyTarget object:

  $result = $service_obj->Method(...);
  $result->Att1->Endpoint

=head1 DESCRIPTION

This is prerelease documentation for the RDS Database Proxy feature in
preview release. It is subject to change.

Contains the details for an RDS Proxy target. It represents an RDS DB
instance or Aurora DB cluster that the proxy can connect to. One or
more targets are associated with an RDS Proxy target group.

This data type is used as a response element in the
C<DescribeDBProxyTargets> action.

=head1 ATTRIBUTES


=head2 Endpoint => Str

  The writer endpoint for the RDS DB instance or Aurora DB cluster.


=head2 Port => Int

  The port that the RDS Proxy uses to connect to the target RDS DB
instance or Aurora DB cluster.


=head2 RdsResourceId => Str

  The identifier representing the target. It can be the instance
identifier for an RDS DB instance, or the cluster identifier for an
Aurora DB cluster.


=head2 TargetArn => Str

  The Amazon Resource Name (ARN) for the RDS DB instance or Aurora DB
cluster.


=head2 TrackedClusterId => Str

  The DB cluster identifier when the target represents an Aurora DB
cluster. This field is blank when the target represents an


=head2 Type => Str

  Specifies the kind of database, such as an RDS DB instance or an Aurora
DB cluster, that the target represents.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

