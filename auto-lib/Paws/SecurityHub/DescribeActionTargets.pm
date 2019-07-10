
package Paws::SecurityHub::DescribeActionTargets;
  use Moose;
  has ActionTargetArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeActionTargets');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/actionTargets/get');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecurityHub::DescribeActionTargetsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::DescribeActionTargets - Arguments for method DescribeActionTargets on L<Paws::SecurityHub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeActionTargets on the
L<AWS SecurityHub|Paws::SecurityHub> service. Use the attributes of this class
as arguments to method DescribeActionTargets.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeActionTargets.

=head1 SYNOPSIS

    my $securityhub = Paws->service('SecurityHub');
    my $DescribeActionTargetsResponse = $securityhub->DescribeActionTargets(
      ActionTargetArns => [ 'MyNonEmptyString', ... ],    # OPTIONAL
      MaxResults       => 1,                              # OPTIONAL
      NextToken        => 'MyNextToken',                  # OPTIONAL
    );

    # Results:
    my $ActionTargets = $DescribeActionTargetsResponse->ActionTargets;
    my $NextToken     = $DescribeActionTargetsResponse->NextToken;

    # Returns a L<Paws::SecurityHub::DescribeActionTargetsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/securityhub/DescribeActionTargets>

=head1 ATTRIBUTES


=head2 ActionTargetArns => ArrayRef[Str|Undef]

A list of custom action target ARNs for the custom action targets to
retrieve.



=head2 MaxResults => Int

The maximum number of results to return.



=head2 NextToken => Str

The token that is required for pagination.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeActionTargets in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

