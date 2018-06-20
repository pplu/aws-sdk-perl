
package Paws::SSM::DescribeParameters;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::SSM::ParametersFilter]');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has ParameterFilters => (is => 'ro', isa => 'ArrayRef[Paws::SSM::ParameterStringFilter]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeParameters');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::DescribeParametersResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::DescribeParameters - Arguments for method DescribeParameters on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeParameters on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method DescribeParameters.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeParameters.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $DescribeParametersResult = $ssm->DescribeParameters(
      Filters => [
        {
          Key    => 'Name',    # values: Name, Type, KeyId
          Values => [
            'MyParametersFilterValue', ...    # min: 1, max: 1024
          ],                                  # min: 1, max: 50

        },
        ...
      ],                                      # OPTIONAL
      MaxResults       => 1,                  # OPTIONAL
      NextToken        => 'MyNextToken',      # OPTIONAL
      ParameterFilters => [
        {
          Key    => 'MyParameterStringFilterKey',    # min: 1, max: 132
          Option => 'MyParameterStringQueryOption',  # min: 1, max: 10; OPTIONAL
          Values => [
            'MyParameterStringFilterValue', ...      # min: 1, max: 1024
          ],                                         # min: 1, max: 50; OPTIONAL
        },
        ...
      ],                                             # OPTIONAL
    );

    # Results:
    my $NextToken  = $DescribeParametersResult->NextToken;
    my $Parameters = $DescribeParametersResult->Parameters;

    # Returns a L<Paws::SSM::DescribeParametersResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/DescribeParameters>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::SSM::ParametersFilter>]

One or more filters. Use a filter to return a more specific list of
results.



=head2 MaxResults => Int

The maximum number of items to return for this call. The call also
returns a token that you can specify in a subsequent call to get the
next set of results.



=head2 NextToken => Str

The token for the next set of items to return. (You received this token
from a previous call.)



=head2 ParameterFilters => ArrayRef[L<Paws::SSM::ParameterStringFilter>]

Filters to limit the request results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeParameters in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

