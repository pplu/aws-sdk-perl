
package Paws::RDS::DescribeDBSnapshotAttributes;
  use Moose;
  has DBSnapshotIdentifier => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDBSnapshotAttributes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::DescribeDBSnapshotAttributesResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeDBSnapshotAttributesResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DescribeDBSnapshotAttributes - Arguments for method DescribeDBSnapshotAttributes on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeDBSnapshotAttributes on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method DescribeDBSnapshotAttributes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeDBSnapshotAttributes.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    # To list DB snapshot attributes
    # This example lists attributes for the specified DB snapshot.
    my $DescribeDBSnapshotAttributesResult = $rds->DescribeDBSnapshotAttributes(
      {
        'DBSnapshotIdentifier' => 'mydbsnapshot'
      }
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/DescribeDBSnapshotAttributes>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DBSnapshotIdentifier => Str

The identifier for the DB snapshot to describe the attributes for.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeDBSnapshotAttributes in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

