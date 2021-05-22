
package Paws::Synthetics::DescribeCanaries;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeCanaries');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/canaries');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Synthetics::DescribeCanariesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Synthetics::DescribeCanaries - Arguments for method DescribeCanaries on L<Paws::Synthetics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeCanaries on the
L<Synthetics|Paws::Synthetics> service. Use the attributes of this class
as arguments to method DescribeCanaries.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeCanaries.

=head1 SYNOPSIS

    my $synthetics = Paws->service('Synthetics');
    my $DescribeCanariesResponse = $synthetics->DescribeCanaries(
      MaxResults => 1,            # OPTIONAL
      NextToken  => 'MyToken',    # OPTIONAL
    );

    # Results:
    my $Canaries  = $DescribeCanariesResponse->Canaries;
    my $NextToken = $DescribeCanariesResponse->NextToken;

    # Returns a L<Paws::Synthetics::DescribeCanariesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/synthetics/DescribeCanaries>

=head1 ATTRIBUTES


=head2 MaxResults => Int

Specify this parameter to limit how many canaries are returned each
time you use the C<DescribeCanaries> operation. If you omit this
parameter, the default of 100 is used.



=head2 NextToken => Str

A token that indicates that there is more data available. You can use
this token in a subsequent operation to retrieve the next set of
results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeCanaries in L<Paws::Synthetics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

