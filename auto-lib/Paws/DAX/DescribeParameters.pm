
package Paws::DAX::DescribeParameters;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has ParameterGroupName => (is => 'ro', isa => 'Str', required => 1);
  has Source => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeParameters');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DAX::DescribeParametersResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DAX::DescribeParameters - Arguments for method DescribeParameters on L<Paws::DAX>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeParameters on the
L<Amazon DynamoDB Accelerator (DAX)|Paws::DAX> service. Use the attributes of this class
as arguments to method DescribeParameters.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeParameters.

=head1 SYNOPSIS

    my $dax = Paws->service('DAX');
    my $DescribeParametersResponse = $dax->DescribeParameters(
      ParameterGroupName => 'MyString',
      MaxResults         => 1,             # OPTIONAL
      NextToken          => 'MyString',    # OPTIONAL
      Source             => 'MyString',    # OPTIONAL
    );

    # Results:
    my $NextToken  = $DescribeParametersResponse->NextToken;
    my $Parameters = $DescribeParametersResponse->Parameters;

    # Returns a L<Paws::DAX::DescribeParametersResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dax/DescribeParameters>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to include in the response. If more
results exist than the specified C<MaxResults> value, a token is
included in the response so that the remaining results can be
retrieved.

The value for C<MaxResults> must be between 20 and 100.



=head2 NextToken => Str

An optional token returned from a prior request. Use this token for
pagination of results from this action. If this parameter is specified,
the response includes only results beyond the token, up to the value
specified by C<MaxResults>.



=head2 B<REQUIRED> ParameterGroupName => Str

The name of the parameter group.



=head2 Source => Str

How the parameter is defined. For example, C<system> denotes a
system-defined parameter.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeParameters in L<Paws::DAX>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

