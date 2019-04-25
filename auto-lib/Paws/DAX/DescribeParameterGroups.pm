
package Paws::DAX::DescribeParameterGroups;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has ParameterGroupNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeParameterGroups');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DAX::DescribeParameterGroupsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DAX::DescribeParameterGroups - Arguments for method DescribeParameterGroups on L<Paws::DAX>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeParameterGroups on the
L<Amazon DynamoDB Accelerator (DAX)|Paws::DAX> service. Use the attributes of this class
as arguments to method DescribeParameterGroups.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeParameterGroups.

=head1 SYNOPSIS

    my $dax = Paws->service('DAX');
    my $DescribeParameterGroupsResponse = $dax->DescribeParameterGroups(
      MaxResults          => 1,                      # OPTIONAL
      NextToken           => 'MyString',             # OPTIONAL
      ParameterGroupNames => [ 'MyString', ... ],    # OPTIONAL
    );

    # Results:
    my $NextToken       = $DescribeParameterGroupsResponse->NextToken;
    my $ParameterGroups = $DescribeParameterGroupsResponse->ParameterGroups;

    # Returns a L<Paws::DAX::DescribeParameterGroupsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dax/DescribeParameterGroups>

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



=head2 ParameterGroupNames => ArrayRef[Str|Undef]

The names of the parameter groups.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeParameterGroups in L<Paws::DAX>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

