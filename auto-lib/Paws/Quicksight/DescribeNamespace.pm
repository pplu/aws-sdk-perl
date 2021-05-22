
package Paws::Quicksight::DescribeNamespace;
  use Moose;
  has AwsAccountId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'AwsAccountId', required => 1);
  has Namespace => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Namespace', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeNamespace');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/accounts/{AwsAccountId}/namespaces/{Namespace}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Quicksight::DescribeNamespaceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::DescribeNamespace - Arguments for method DescribeNamespace on L<Paws::Quicksight>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeNamespace on the
L<Amazon QuickSight|Paws::Quicksight> service. Use the attributes of this class
as arguments to method DescribeNamespace.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeNamespace.

=head1 SYNOPSIS

    my $quicksight = Paws->service('Quicksight');
    my $DescribeNamespaceResponse = $quicksight->DescribeNamespace(
      AwsAccountId => 'MyAwsAccountId',
      Namespace    => 'MyNamespace',

    );

    # Results:
    my $Namespace = $DescribeNamespaceResponse->Namespace;
    my $RequestId = $DescribeNamespaceResponse->RequestId;
    my $Status    = $DescribeNamespaceResponse->Status;

    # Returns a L<Paws::Quicksight::DescribeNamespaceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/quicksight/DescribeNamespace>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AwsAccountId => Str

The ID for the AWS account that contains the QuickSight namespace that
you want to describe.



=head2 B<REQUIRED> Namespace => Str

The namespace that you want to describe.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeNamespace in L<Paws::Quicksight>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

