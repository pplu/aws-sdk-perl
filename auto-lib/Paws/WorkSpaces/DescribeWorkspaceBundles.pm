
package Paws::WorkSpaces::DescribeWorkspaceBundles;
  use Moose;
  has BundleIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has NextToken => (is => 'ro', isa => 'Str');
  has Owner => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeWorkspaceBundles');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkSpaces::DescribeWorkspaceBundlesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::DescribeWorkspaceBundles - Arguments for method DescribeWorkspaceBundles on L<Paws::WorkSpaces>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeWorkspaceBundles on the
L<Amazon WorkSpaces|Paws::WorkSpaces> service. Use the attributes of this class
as arguments to method DescribeWorkspaceBundles.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeWorkspaceBundles.

=head1 SYNOPSIS

    my $workspaces = Paws->service('WorkSpaces');
    my $DescribeWorkspaceBundlesResult = $workspaces->DescribeWorkspaceBundles(
      BundleIds => [ 'MyBundleId', ... ],    # OPTIONAL
      NextToken => 'MyPaginationToken',      # OPTIONAL
      Owner     => 'MyBundleOwner',          # OPTIONAL
    );

    # Results:
    my $Bundles   = $DescribeWorkspaceBundlesResult->Bundles;
    my $NextToken = $DescribeWorkspaceBundlesResult->NextToken;

    # Returns a L<Paws::WorkSpaces::DescribeWorkspaceBundlesResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workspaces/DescribeWorkspaceBundles>

=head1 ATTRIBUTES


=head2 BundleIds => ArrayRef[Str|Undef]

The identifiers of the bundles. You cannot combine this parameter with
any other filter.



=head2 NextToken => Str

The token for the next set of results. (You received this token from a
previous call.)



=head2 Owner => Str

The owner of the bundles. You cannot combine this parameter with any
other filter.

Specify C<AMAZON> to describe the bundles provided by AWS or null to
describe the bundles that belong to your account.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeWorkspaceBundles in L<Paws::WorkSpaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

