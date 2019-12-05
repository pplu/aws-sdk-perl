
package Paws::RDS::ModifyDBProxyTargetGroup;
  use Moose;
  has ConnectionPoolConfig => (is => 'ro', isa => 'Paws::RDS::ConnectionPoolConfiguration');
  has DBProxyName => (is => 'ro', isa => 'Str', required => 1);
  has NewName => (is => 'ro', isa => 'Str');
  has TargetGroupName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyDBProxyTargetGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::ModifyDBProxyTargetGroupResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyDBProxyTargetGroupResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::ModifyDBProxyTargetGroup - Arguments for method ModifyDBProxyTargetGroup on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyDBProxyTargetGroup on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method ModifyDBProxyTargetGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyDBProxyTargetGroup.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    my $ModifyDBProxyTargetGroupResponse = $rds->ModifyDBProxyTargetGroup(
      DBProxyName          => 'MyString',
      TargetGroupName      => 'MyString',
      ConnectionPoolConfig => {
        ConnectionBorrowTimeout   => 1,                      # OPTIONAL
        InitQuery                 => 'MyString',
        MaxConnectionsPercent     => 1,                      # OPTIONAL
        MaxIdleConnectionsPercent => 1,                      # OPTIONAL
        SessionPinningFilters     => [ 'MyString', ... ],    # OPTIONAL
      },    # OPTIONAL
      NewName => 'MyString',    # OPTIONAL
    );

    # Results:
    my $DBProxyTargetGroup =
      $ModifyDBProxyTargetGroupResponse->DBProxyTargetGroup;

    # Returns a L<Paws::RDS::ModifyDBProxyTargetGroupResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/ModifyDBProxyTargetGroup>

=head1 ATTRIBUTES


=head2 ConnectionPoolConfig => L<Paws::RDS::ConnectionPoolConfiguration>

The settings that determine the size and behavior of the connection
pool for the target group.



=head2 B<REQUIRED> DBProxyName => Str

The name of the new proxy to which to assign the target group.



=head2 NewName => Str

The new name for the modified C<DBProxyTarget>. An identifier must
begin with a letter and must contain only ASCII letters, digits, and
hyphens; it can't end with a hyphen or contain two consecutive hyphens.



=head2 B<REQUIRED> TargetGroupName => Str

The name of the new target group to assign to the proxy.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyDBProxyTargetGroup in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

