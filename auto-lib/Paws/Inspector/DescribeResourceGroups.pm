
package Paws::Inspector::DescribeResourceGroups;
  use Moose;
  has ResourceGroupArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'resourceGroupArns' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeResourceGroups');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Inspector::DescribeResourceGroupsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector::DescribeResourceGroups - Arguments for method DescribeResourceGroups on L<Paws::Inspector>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeResourceGroups on the
L<Amazon Inspector|Paws::Inspector> service. Use the attributes of this class
as arguments to method DescribeResourceGroups.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeResourceGroups.

=head1 SYNOPSIS

    my $inspector = Paws->service('Inspector');
    # Describe resource groups
    # Describes the resource groups that are specified by the ARNs of the
    # resource groups.
    my $DescribeResourceGroupsResponse = $inspector->DescribeResourceGroups(
      {
        'ResourceGroupArns' =>
          ['arn:aws:inspector:us-west-2:123456789012:resourcegroup/0-PyGXopAI']
      }
    );

    # Results:
    my $failedItems    = $DescribeResourceGroupsResponse->failedItems;
    my $resourceGroups = $DescribeResourceGroupsResponse->resourceGroups;

    # Returns a L<Paws::Inspector::DescribeResourceGroupsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/inspector/DescribeResourceGroups>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceGroupArns => ArrayRef[Str|Undef]

The ARN that specifies the resource group that you want to describe.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeResourceGroups in L<Paws::Inspector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

