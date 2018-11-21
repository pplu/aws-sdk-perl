
package Paws::AutoScalingPlans::DescribeScalingPlans;
  use Moose;
  has ApplicationSources => (is => 'ro', isa => 'ArrayRef[Paws::AutoScalingPlans::ApplicationSource]');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has ScalingPlanNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ScalingPlanVersion => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeScalingPlans');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AutoScalingPlans::DescribeScalingPlansResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScalingPlans::DescribeScalingPlans - Arguments for method DescribeScalingPlans on L<Paws::AutoScalingPlans>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeScalingPlans on the
L<AWS Auto Scaling Plans|Paws::AutoScalingPlans> service. Use the attributes of this class
as arguments to method DescribeScalingPlans.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeScalingPlans.

=head1 SYNOPSIS

    my $autoscaling = Paws->service('AutoScalingPlans');
    my $DescribeScalingPlansResponse = $autoscaling->DescribeScalingPlans(
      ApplicationSources => [
        {
          CloudFormationStackARN => 'MyXmlString',    # OPTIONAL
          TagFilters             => [
            {
              Key    => 'MyXmlStringMaxLen128',    # min: 1, max: 128; OPTIONAL
              Values => [
                'MyXmlStringMaxLen256', ...        # min: 1, max: 256
              ],                                   # OPTIONAL
            },
            ...
          ],                                       # OPTIONAL
        },
        ...
      ],                                           # OPTIONAL
      MaxResults       => 1,                       # OPTIONAL
      NextToken        => 'MyNextToken',           # OPTIONAL
      ScalingPlanNames => [
        'MyScalingPlanName', ...                   # min: 1, max: 128
      ],                                           # OPTIONAL
      ScalingPlanVersion => 1,                     # OPTIONAL
    );

    # Results:
    my $NextToken    = $DescribeScalingPlansResponse->NextToken;
    my $ScalingPlans = $DescribeScalingPlansResponse->ScalingPlans;

    # Returns a L<Paws::AutoScalingPlans::DescribeScalingPlansResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/autoscaling/DescribeScalingPlans>

=head1 ATTRIBUTES


=head2 ApplicationSources => ArrayRef[L<Paws::AutoScalingPlans::ApplicationSource>]

The sources for the applications (up to 10). If you specify scaling
plan names, you cannot specify application sources.



=head2 MaxResults => Int

The maximum number of scalable resources to return. This value can be
between 1 and 50. The default value is 50.



=head2 NextToken => Str

The token for the next set of results.



=head2 ScalingPlanNames => ArrayRef[Str|Undef]

The names of the scaling plans (up to 10). If you specify application
sources, you cannot specify scaling plan names.



=head2 ScalingPlanVersion => Int

The version number of the scaling plan. If you specify a scaling plan
version, you must also specify a scaling plan name.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeScalingPlans in L<Paws::AutoScalingPlans>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

