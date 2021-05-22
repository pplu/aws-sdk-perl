
package Paws::TimestreamWrite::DescribeDatabase;
  use Moose;
  has DatabaseName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDatabase');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::TimestreamWrite::DescribeDatabaseResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::TimestreamWrite::DescribeDatabase - Arguments for method DescribeDatabase on L<Paws::TimestreamWrite>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeDatabase on the
L<Amazon Timestream Write|Paws::TimestreamWrite> service. Use the attributes of this class
as arguments to method DescribeDatabase.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeDatabase.

=head1 SYNOPSIS

    my $ingest.timestream = Paws->service('TimestreamWrite');
    my $DescribeDatabaseResponse = $ingest . timestream->DescribeDatabase(
      DatabaseName => 'MyResourceName',

    );

    # Results:
    my $Database = $DescribeDatabaseResponse->Database;

    # Returns a L<Paws::TimestreamWrite::DescribeDatabaseResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ingest.timestream/DescribeDatabase>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DatabaseName => Str

The name of the Timestream database.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeDatabase in L<Paws::TimestreamWrite>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

