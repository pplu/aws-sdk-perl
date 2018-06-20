
package Paws::Neptune::DescribeValidDBInstanceModifications;
  use Moose;
  has DBInstanceIdentifier => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeValidDBInstanceModifications');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Neptune::DescribeValidDBInstanceModificationsResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeValidDBInstanceModificationsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptune::DescribeValidDBInstanceModifications - Arguments for method DescribeValidDBInstanceModifications on L<Paws::Neptune>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeValidDBInstanceModifications on the
L<Amazon Neptune|Paws::Neptune> service. Use the attributes of this class
as arguments to method DescribeValidDBInstanceModifications.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeValidDBInstanceModifications.

=head1 SYNOPSIS

    my $rds = Paws->service('Neptune');
    my $DescribeValidDBInstanceModificationsResult =
      $rds->DescribeValidDBInstanceModifications(
      DBInstanceIdentifier => 'MyString',

      );

    # Results:
    my $ValidDBInstanceModificationsMessage =
      $DescribeValidDBInstanceModificationsResult
      ->ValidDBInstanceModificationsMessage;

# Returns a L<Paws::Neptune::DescribeValidDBInstanceModificationsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/DescribeValidDBInstanceModifications>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DBInstanceIdentifier => Str

The customer identifier or the ARN of your DB instance.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeValidDBInstanceModifications in L<Paws::Neptune>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

