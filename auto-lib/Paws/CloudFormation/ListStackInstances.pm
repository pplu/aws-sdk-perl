
package Paws::CloudFormation::ListStackInstances;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has StackInstanceAccount => (is => 'ro', isa => 'Str');
  has StackInstanceRegion => (is => 'ro', isa => 'Str');
  has StackSetName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListStackInstances');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFormation::ListStackInstancesOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListStackInstancesResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::ListStackInstances - Arguments for method ListStackInstances on L<Paws::CloudFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListStackInstances on the
L<AWS CloudFormation|Paws::CloudFormation> service. Use the attributes of this class
as arguments to method ListStackInstances.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListStackInstances.

=head1 SYNOPSIS

    my $cloudformation = Paws->service('CloudFormation');
    my $ListStackInstancesOutput = $cloudformation->ListStackInstances(
      StackSetName         => 'MyStackSetName',
      MaxResults           => 1,                  # OPTIONAL
      NextToken            => 'MyNextToken',      # OPTIONAL
      StackInstanceAccount => 'MyAccount',        # OPTIONAL
      StackInstanceRegion  => 'MyRegion',         # OPTIONAL
    );

    # Results:
    my $NextToken = $ListStackInstancesOutput->NextToken;
    my $Summaries = $ListStackInstancesOutput->Summaries;

    # Returns a L<Paws::CloudFormation::ListStackInstancesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudformation/ListStackInstances>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to be returned with a single call. If the
number of available results exceeds this maximum, the response includes
a C<NextToken> value that you can assign to the C<NextToken> request
parameter to get the next set of results.



=head2 NextToken => Str

If the previous request didn't return all of the remaining results, the
response's C<NextToken> parameter value is set to a token. To retrieve
the next set of results, call C<ListStackInstances> again and assign
that token to the request object's C<NextToken> parameter. If there are
no remaining results, the previous response object's C<NextToken>
parameter is set to C<null>.



=head2 StackInstanceAccount => Str

The name of the AWS account that you want to list stack instances for.



=head2 StackInstanceRegion => Str

The name of the region where you want to list stack instances.



=head2 B<REQUIRED> StackSetName => Str

The name or unique ID of the stack set that you want to list stack
instances for.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListStackInstances in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

