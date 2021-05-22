
package Paws::Synthetics::DescribeCanariesLastRun;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeCanariesLastRun');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/canaries/last-run');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Synthetics::DescribeCanariesLastRunResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Synthetics::DescribeCanariesLastRun - Arguments for method DescribeCanariesLastRun on L<Paws::Synthetics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeCanariesLastRun on the
L<Synthetics|Paws::Synthetics> service. Use the attributes of this class
as arguments to method DescribeCanariesLastRun.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeCanariesLastRun.

=head1 SYNOPSIS

    my $synthetics = Paws->service('Synthetics');
    my $DescribeCanariesLastRunResponse = $synthetics->DescribeCanariesLastRun(
      MaxResults => 1,            # OPTIONAL
      NextToken  => 'MyToken',    # OPTIONAL
    );

    # Results:
    my $CanariesLastRun = $DescribeCanariesLastRunResponse->CanariesLastRun;
    my $NextToken       = $DescribeCanariesLastRunResponse->NextToken;

    # Returns a L<Paws::Synthetics::DescribeCanariesLastRunResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/synthetics/DescribeCanariesLastRun>

=head1 ATTRIBUTES


=head2 MaxResults => Int

Specify this parameter to limit how many runs are returned each time
you use the C<DescribeLastRun> operation. If you omit this parameter,
the default of 100 is used.



=head2 NextToken => Str

A token that indicates that there is more data available. You can use
this token in a subsequent C<DescribeCanaries> operation to retrieve
the next set of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeCanariesLastRun in L<Paws::Synthetics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

