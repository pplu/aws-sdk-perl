
package Paws::EC2::DescribeVpcEndpointServiceConfigurations;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has ServiceIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'ServiceId' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeVpcEndpointServiceConfigurations');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DescribeVpcEndpointServiceConfigurationsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeVpcEndpointServiceConfigurations - Arguments for method DescribeVpcEndpointServiceConfigurations on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeVpcEndpointServiceConfigurations on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DescribeVpcEndpointServiceConfigurations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeVpcEndpointServiceConfigurations.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $DescribeVpcEndpointServiceConfigurationsResult =
      $ec2->DescribeVpcEndpointServiceConfigurations(
      DryRun  => 1,    # OPTIONAL
      Filters => [
        {
          Name   => 'MyString',    # OPTIONAL
          Values => [
            'MyString', ...        # OPTIONAL
          ],                       # OPTIONAL
        },
        ...
      ],                           # OPTIONAL
      MaxResults => 1,             # OPTIONAL
      NextToken  => 'MyString',    # OPTIONAL
      ServiceIds => [
        'MyString', ...            # OPTIONAL
      ],                           # OPTIONAL
      );

    # Results:
    my $NextToken = $DescribeVpcEndpointServiceConfigurationsResult->NextToken;
    my $ServiceConfigurations =
      $DescribeVpcEndpointServiceConfigurationsResult->ServiceConfigurations;

# Returns a L<Paws::EC2::DescribeVpcEndpointServiceConfigurationsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DescribeVpcEndpointServiceConfigurations>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 Filters => ArrayRef[L<Paws::EC2::Filter>]

One or more filters.

=over

=item *

C<service-name> - The name of the service.

=item *

C<service-id> - The ID of the service.

=item *

C<service-state> - The state of the service (C<Pending> | C<Available>
| C<Deleting> | C<Deleted> | C<Failed>).

=back




=head2 MaxResults => Int

The maximum number of results to return for the request in a single
page. The remaining results of the initial request can be seen by
sending another request with the returned C<NextToken> value. This
value can be between 5 and 1000; if C<MaxResults> is given a value
larger than 1000, only 1000 results are returned.



=head2 NextToken => Str

The token to retrieve the next page of results.



=head2 ServiceIds => ArrayRef[Str|Undef]

The IDs of one or more services.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeVpcEndpointServiceConfigurations in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

