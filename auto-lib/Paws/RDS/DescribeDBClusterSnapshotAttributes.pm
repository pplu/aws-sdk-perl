
package Paws::RDS::DescribeDBClusterSnapshotAttributes;
  use Moose;
  has DBClusterSnapshotIdentifier => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDBClusterSnapshotAttributes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::DescribeDBClusterSnapshotAttributesResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeDBClusterSnapshotAttributesResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DescribeDBClusterSnapshotAttributes - Arguments for method DescribeDBClusterSnapshotAttributes on Paws::RDS

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeDBClusterSnapshotAttributes on the 
Amazon Relational Database Service service. Use the attributes of this class
as arguments to method DescribeDBClusterSnapshotAttributes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeDBClusterSnapshotAttributes.

As an example:

  $service_obj->DescribeDBClusterSnapshotAttributes(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> DBClusterSnapshotIdentifier => Str

The identifier for the DB cluster snapshot to describe the attributes
for.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeDBClusterSnapshotAttributes in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

