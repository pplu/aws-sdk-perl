
package Paws::Config::DescribeConformancePacks;
  use Moose;
  has ConformancePackNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Limit => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeConformancePacks');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Config::DescribeConformancePacksResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::DescribeConformancePacks - Arguments for method DescribeConformancePacks on L<Paws::Config>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeConformancePacks on the
L<AWS Config|Paws::Config> service. Use the attributes of this class
as arguments to method DescribeConformancePacks.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeConformancePacks.

=head1 SYNOPSIS

    my $config = Paws->service('Config');
    my $DescribeConformancePacksResponse = $config->DescribeConformancePacks(
      ConformancePackNames => [
        'MyConformancePackName', ...    # min: 1, max: 256
      ],    # OPTIONAL
      Limit     => 1,                # OPTIONAL
      NextToken => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $ConformancePackDetails =
      $DescribeConformancePacksResponse->ConformancePackDetails;
    my $NextToken = $DescribeConformancePacksResponse->NextToken;

    # Returns a L<Paws::Config::DescribeConformancePacksResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/config/DescribeConformancePacks>

=head1 ATTRIBUTES


=head2 ConformancePackNames => ArrayRef[Str|Undef]

Comma-separated list of conformance pack names for which you want
details. If you do not specify any names, AWS Config returns details
for all your conformance packs.



=head2 Limit => Int

The maximum number of conformance packs returned on each page.



=head2 NextToken => Str

The C<nextToken> string returned in a previous request that you use to
request the next page of results in a paginated response.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeConformancePacks in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

