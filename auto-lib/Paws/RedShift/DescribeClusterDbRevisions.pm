
package Paws::RedShift::DescribeClusterDbRevisions;
  use Moose;
  has ClusterIdentifier => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeClusterDbRevisions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedShift::ClusterDbRevisionsMessage');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeClusterDbRevisionsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::DescribeClusterDbRevisions - Arguments for method DescribeClusterDbRevisions on L<Paws::RedShift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeClusterDbRevisions on the
L<Amazon Redshift|Paws::RedShift> service. Use the attributes of this class
as arguments to method DescribeClusterDbRevisions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeClusterDbRevisions.

=head1 SYNOPSIS

    my $redshift = Paws->service('RedShift');
    my $ClusterDbRevisionsMessage = $redshift->DescribeClusterDbRevisions(
      ClusterIdentifier => 'MyString',    # OPTIONAL
      Marker            => 'MyString',    # OPTIONAL
      MaxRecords        => 1,             # OPTIONAL
    );

    # Results:
    my $ClusterDbRevisions = $ClusterDbRevisionsMessage->ClusterDbRevisions;
    my $Marker             = $ClusterDbRevisionsMessage->Marker;

    # Returns a L<Paws::RedShift::ClusterDbRevisionsMessage> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift/DescribeClusterDbRevisions>

=head1 ATTRIBUTES


=head2 ClusterIdentifier => Str

A unique identifier for a cluster whose C<ClusterDbRevisions> you are
requesting. This parameter is case sensitive. All clusters defined for
an account are returned by default.



=head2 Marker => Str

An optional parameter that specifies the starting point for returning a
set of response records. When the results of a
C<DescribeClusterDbRevisions> request exceed the value specified in
C<MaxRecords>, Amazon Redshift returns a value in the C<marker> field
of the response. You can retrieve the next set of response records by
providing the returned C<marker> value in the C<marker> parameter and
retrying the request.

Constraints: You can specify either the C<ClusterIdentifier> parameter,
or the C<marker> parameter, but not both.



=head2 MaxRecords => Int

The maximum number of response records to return in each call. If the
number of remaining response records exceeds the specified MaxRecords
value, a value is returned in the C<marker> field of the response. You
can retrieve the next set of response records by providing the returned
C<marker> value in the C<marker> parameter and retrying the request.

Default: 100

Constraints: minimum 20, maximum 100.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeClusterDbRevisions in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

