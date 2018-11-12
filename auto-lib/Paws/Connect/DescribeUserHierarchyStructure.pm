
package Paws::Connect::DescribeUserHierarchyStructure;
  use Moose;
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'InstanceId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeUserHierarchyStructure');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/user-hierarchy-structure/{InstanceId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Connect::DescribeUserHierarchyStructureResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::DescribeUserHierarchyStructure - Arguments for method DescribeUserHierarchyStructure on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeUserHierarchyStructure on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method DescribeUserHierarchyStructure.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeUserHierarchyStructure.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    my $DescribeUserHierarchyStructureResponse =
      $connect->DescribeUserHierarchyStructure(
      InstanceId => 'MyInstanceId',

      );

    # Results:
    my $HierarchyStructure =
      $DescribeUserHierarchyStructureResponse->HierarchyStructure;

    # Returns a L<Paws::Connect::DescribeUserHierarchyStructureResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/DescribeUserHierarchyStructure>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InstanceId => Str

The identifier for your Amazon Connect instance. To find the ID of your
instance, open the AWS console and select Amazon Connect. Select the
alias of the instance in the Instance alias column. The instance ID is
displayed in the Overview section of your instance settings. For
example, the instance ID is the set of characters at the end of the
instance ARN, after instance/, such as
10a4c4eb-f57e-4d4c-b602-bf39176ced07.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeUserHierarchyStructure in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

