
package Paws::ApplicationInsights::DescribeLogPattern;
  use Moose;
  has PatternName => (is => 'ro', isa => 'Str', required => 1);
  has PatternSetName => (is => 'ro', isa => 'Str', required => 1);
  has ResourceGroupName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeLogPattern');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApplicationInsights::DescribeLogPatternResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationInsights::DescribeLogPattern - Arguments for method DescribeLogPattern on L<Paws::ApplicationInsights>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeLogPattern on the
L<Amazon CloudWatch Application Insights|Paws::ApplicationInsights> service. Use the attributes of this class
as arguments to method DescribeLogPattern.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeLogPattern.

=head1 SYNOPSIS

    my $applicationinsights = Paws->service('ApplicationInsights');
    my $DescribeLogPatternResponse = $applicationinsights->DescribeLogPattern(
      PatternName       => 'MyLogPatternName',
      PatternSetName    => 'MyLogPatternSetName',
      ResourceGroupName => 'MyResourceGroupName',

    );

    # Results:
    my $LogPattern        = $DescribeLogPatternResponse->LogPattern;
    my $ResourceGroupName = $DescribeLogPatternResponse->ResourceGroupName;

    # Returns a L<Paws::ApplicationInsights::DescribeLogPatternResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/applicationinsights/DescribeLogPattern>

=head1 ATTRIBUTES


=head2 B<REQUIRED> PatternName => Str

The name of the log pattern.



=head2 B<REQUIRED> PatternSetName => Str

The name of the log pattern set.



=head2 B<REQUIRED> ResourceGroupName => Str

The name of the resource group.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeLogPattern in L<Paws::ApplicationInsights>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

