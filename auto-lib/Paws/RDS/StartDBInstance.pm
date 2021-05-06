
package Paws::RDS::StartDBInstance;
  use Moose;
  has DBInstanceIdentifier => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartDBInstance');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::StartDBInstanceResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'StartDBInstanceResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::StartDBInstance - Arguments for method StartDBInstance on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartDBInstance on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method StartDBInstance.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartDBInstance.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    my $StartDBInstanceResult = $rds->StartDBInstance(
      DBInstanceIdentifier => 'MyString',

    );

    # Results:
    my $DBInstance = $StartDBInstanceResult->DBInstance;

    # Returns a L<Paws::RDS::StartDBInstanceResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/StartDBInstance>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DBInstanceIdentifier => Str

The user-supplied instance identifier.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartDBInstance in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

