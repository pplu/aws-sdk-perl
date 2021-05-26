
package Paws::SecurityHub::DescribeStandards;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'MaxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'NextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeStandards');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/standards');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecurityHub::DescribeStandardsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::DescribeStandards - Arguments for method DescribeStandards on L<Paws::SecurityHub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeStandards on the
L<AWS SecurityHub|Paws::SecurityHub> service. Use the attributes of this class
as arguments to method DescribeStandards.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeStandards.

=head1 SYNOPSIS

    my $securityhub = Paws->service('SecurityHub');
    my $DescribeStandardsResponse = $securityhub->DescribeStandards(
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $NextToken = $DescribeStandardsResponse->NextToken;
    my $Standards = $DescribeStandardsResponse->Standards;

    # Returns a L<Paws::SecurityHub::DescribeStandardsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/securityhub/DescribeStandards>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of standards to return.



=head2 NextToken => Str

The token that is required for pagination. On your first call to the
C<DescribeStandards> operation, set the value of this parameter to
C<NULL>.

For subsequent calls to the operation, to continue listing data, set
the value of this parameter to the value returned from the previous
response.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeStandards in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

