
package Paws::DocDB::DeleteDBInstance;
  use Moose;
  has DBInstanceIdentifier => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteDBInstance');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DocDB::DeleteDBInstanceResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteDBInstanceResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DocDB::DeleteDBInstance - Arguments for method DeleteDBInstance on L<Paws::DocDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteDBInstance on the
L<Amazon DocumentDB with MongoDB compatibility|Paws::DocDB> service. Use the attributes of this class
as arguments to method DeleteDBInstance.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteDBInstance.

=head1 SYNOPSIS

    my $rds = Paws->service('DocDB');
    my $DeleteDBInstanceResult = $rds->DeleteDBInstance(
      DBInstanceIdentifier => 'MyString',

    );

    # Results:
    my $DBInstance = $DeleteDBInstanceResult->DBInstance;

    # Returns a L<Paws::DocDB::DeleteDBInstanceResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/DeleteDBInstance>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DBInstanceIdentifier => Str

The DB instance identifier for the DB instance to be deleted. This
parameter isn't case sensitive.

Constraints:

=over

=item *

Must match the name of an existing DB instance.

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteDBInstance in L<Paws::DocDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

