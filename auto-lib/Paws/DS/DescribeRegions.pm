
package Paws::DS::DescribeRegions;
  use Moose;
  has DirectoryId => (is => 'ro', isa => 'Str', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');
  has RegionName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeRegions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DS::DescribeRegionsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DS::DescribeRegions - Arguments for method DescribeRegions on L<Paws::DS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeRegions on the
L<AWS Directory Service|Paws::DS> service. Use the attributes of this class
as arguments to method DescribeRegions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeRegions.

=head1 SYNOPSIS

    my $ds = Paws->service('DS');
    my $DescribeRegionsResult = $ds->DescribeRegions(
      DirectoryId => 'MyDirectoryId',
      NextToken   => 'MyNextToken',     # OPTIONAL
      RegionName  => 'MyRegionName',    # OPTIONAL
    );

    # Results:
    my $NextToken          = $DescribeRegionsResult->NextToken;
    my $RegionsDescription = $DescribeRegionsResult->RegionsDescription;

    # Returns a L<Paws::DS::DescribeRegionsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ds/DescribeRegions>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DirectoryId => Str

The identifier of the directory.



=head2 NextToken => Str

The C<DescribeRegionsResult.NextToken> value from a previous call to
DescribeRegions. Pass null if this is the first call.



=head2 RegionName => Str

The name of the Region. For example, C<us-east-1>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeRegions in L<Paws::DS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

