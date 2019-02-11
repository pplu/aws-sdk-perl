
package Paws::CloudFormation::DescribeStackResourceDrifts;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has StackName => (is => 'ro', isa => 'Str', required => 1);
  has StackResourceDriftStatusFilters => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeStackResourceDrifts');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFormation::DescribeStackResourceDriftsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeStackResourceDriftsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::DescribeStackResourceDrifts - Arguments for method DescribeStackResourceDrifts on L<Paws::CloudFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeStackResourceDrifts on the
L<AWS CloudFormation|Paws::CloudFormation> service. Use the attributes of this class
as arguments to method DescribeStackResourceDrifts.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeStackResourceDrifts.

=head1 SYNOPSIS

    my $cloudformation = Paws->service('CloudFormation');
    my $DescribeStackResourceDriftsOutput =
      $cloudformation->DescribeStackResourceDrifts(
      StackName                       => 'MyStackNameOrId',
      MaxResults                      => 1,                   # OPTIONAL
      NextToken                       => 'MyNextToken',       # OPTIONAL
      StackResourceDriftStatusFilters => [
        'IN_SYNC', ...    # values: IN_SYNC, MODIFIED, DELETED, NOT_CHECKED
      ],                  # OPTIONAL
      );

    # Results:
    my $NextToken = $DescribeStackResourceDriftsOutput->NextToken;
    my $StackResourceDrifts =
      $DescribeStackResourceDriftsOutput->StackResourceDrifts;

  # Returns a L<Paws::CloudFormation::DescribeStackResourceDriftsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudformation/DescribeStackResourceDrifts>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to be returned with a single call. If the
number of available results exceeds this maximum, the response includes
a C<NextToken> value that you can assign to the C<NextToken> request
parameter to get the next set of results.



=head2 NextToken => Str

A string that identifies the next page of stack resource drift results.



=head2 B<REQUIRED> StackName => Str

The name of the stack for which you want drift information.



=head2 StackResourceDriftStatusFilters => ArrayRef[Str|Undef]

The resource drift status values to use as filters for the resource
drift results returned.

=over

=item *

C<DELETED>: The resource differs from its expected template
configuration in that the resource has been deleted.

=item *

C<MODIFIED>: One or more resource properties differ from their expected
template values.

=item *

C<IN_SYNC>: The resources's actual configuration matches its expected
template configuration.

=item *

C<NOT_CHECKED>: AWS CloudFormation does not currently return this
value.

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeStackResourceDrifts in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

