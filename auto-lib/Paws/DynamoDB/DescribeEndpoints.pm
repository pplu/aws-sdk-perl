
package Paws::DynamoDB::DescribeEndpoints;
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeEndpoints');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DynamoDB::DescribeEndpointsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::DescribeEndpoints - Arguments for method DescribeEndpoints on L<Paws::DynamoDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeEndpoints on the
L<Amazon DynamoDB|Paws::DynamoDB> service. Use the attributes of this class
as arguments to method DescribeEndpoints.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeEndpoints.

=head1 SYNOPSIS

    my $dynamodb = Paws->service('DynamoDB');
    my $DescribeEndpointsResponse = $dynamodb->DescribeEndpoints();

    # Results:
    my $Endpoints = $DescribeEndpointsResponse->Endpoints;

    # Returns a L<Paws::DynamoDB::DescribeEndpointsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dynamodb/DescribeEndpoints>

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeEndpoints in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

