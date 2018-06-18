
package Paws::CloudFormation::DescribeAccountLimits;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAccountLimits');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFormation::DescribeAccountLimitsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeAccountLimitsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::DescribeAccountLimits - Arguments for method DescribeAccountLimits on L<Paws::CloudFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeAccountLimits on the
L<AWS CloudFormation|Paws::CloudFormation> service. Use the attributes of this class
as arguments to method DescribeAccountLimits.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeAccountLimits.

=head1 SYNOPSIS

    my $cloudformation = Paws->service('CloudFormation');
    my $DescribeAccountLimitsOutput = $cloudformation->DescribeAccountLimits(
      NextToken => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $AccountLimits = $DescribeAccountLimitsOutput->AccountLimits;
    my $NextToken     = $DescribeAccountLimitsOutput->NextToken;

    # Returns a L<Paws::CloudFormation::DescribeAccountLimitsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudformation/DescribeAccountLimits>

=head1 ATTRIBUTES


=head2 NextToken => Str

A string that identifies the next page of limits that you want to
retrieve.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeAccountLimits in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

