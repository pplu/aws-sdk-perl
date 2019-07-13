
package Paws::Quicksight::DescribeGroup;
  use Moose;
  has AwsAccountId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'AwsAccountId', required => 1);
  has GroupName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'GroupName', required => 1);
  has Namespace => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Namespace', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeGroup');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/accounts/{AwsAccountId}/namespaces/{Namespace}/groups/{GroupName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Quicksight::DescribeGroupResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::DescribeGroup - Arguments for method DescribeGroup on L<Paws::Quicksight>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeGroup on the
L<Amazon QuickSight|Paws::Quicksight> service. Use the attributes of this class
as arguments to method DescribeGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeGroup.

=head1 SYNOPSIS

    my $quicksight = Paws->service('Quicksight');
    my $DescribeGroupResponse = $quicksight->DescribeGroup(
      AwsAccountId => 'MyAwsAccountId',
      GroupName    => 'MyGroupName',
      Namespace    => 'MyNamespace',

    );

    # Results:
    my $Group     = $DescribeGroupResponse->Group;
    my $RequestId = $DescribeGroupResponse->RequestId;
    my $Status    = $DescribeGroupResponse->Status;

    # Returns a L<Paws::Quicksight::DescribeGroupResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/quicksight/DescribeGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AwsAccountId => Str

The ID for the AWS account that the group is in. Currently, you use the
ID for the AWS account that contains your Amazon QuickSight account.



=head2 B<REQUIRED> GroupName => Str

The name of the group that you want to describe.



=head2 B<REQUIRED> Namespace => Str

The namespace. Currently, you should set this to C<default>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeGroup in L<Paws::Quicksight>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

