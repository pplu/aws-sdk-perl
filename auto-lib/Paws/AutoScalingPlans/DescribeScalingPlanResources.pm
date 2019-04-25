
package Paws::AutoScalingPlans::DescribeScalingPlanResources;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has ScalingPlanName => (is => 'ro', isa => 'Str', required => 1);
  has ScalingPlanVersion => (is => 'ro', isa => 'Int', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeScalingPlanResources');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AutoScalingPlans::DescribeScalingPlanResourcesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScalingPlans::DescribeScalingPlanResources - Arguments for method DescribeScalingPlanResources on L<Paws::AutoScalingPlans>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeScalingPlanResources on the
L<AWS Auto Scaling Plans|Paws::AutoScalingPlans> service. Use the attributes of this class
as arguments to method DescribeScalingPlanResources.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeScalingPlanResources.

=head1 SYNOPSIS

    my $autoscaling = Paws->service('AutoScalingPlans');
    my $DescribeScalingPlanResourcesResponse =
      $autoscaling->DescribeScalingPlanResources(
      ScalingPlanName    => 'MyScalingPlanName',
      ScalingPlanVersion => 1,
      MaxResults         => 1,                     # OPTIONAL
      NextToken          => 'MyNextToken',         # OPTIONAL
      );

    # Results:
    my $NextToken = $DescribeScalingPlanResourcesResponse->NextToken;
    my $ScalingPlanResources =
      $DescribeScalingPlanResourcesResponse->ScalingPlanResources;

# Returns a L<Paws::AutoScalingPlans::DescribeScalingPlanResourcesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/autoscaling/DescribeScalingPlanResources>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of scalable resources to return. The value must be
between 1 and 50. The default value is 50.



=head2 NextToken => Str

The token for the next set of results.



=head2 B<REQUIRED> ScalingPlanName => Str

The name of the scaling plan.



=head2 B<REQUIRED> ScalingPlanVersion => Int

The version number of the scaling plan.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeScalingPlanResources in L<Paws::AutoScalingPlans>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

