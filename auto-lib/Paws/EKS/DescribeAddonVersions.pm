
package Paws::EKS::DescribeAddonVersions;
  use Moose;
  has AddonName => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'addonName');
  has KubernetesVersion => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'kubernetesVersion');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAddonVersions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/addons/supported-versions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EKS::DescribeAddonVersionsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EKS::DescribeAddonVersions - Arguments for method DescribeAddonVersions on L<Paws::EKS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeAddonVersions on the
L<Amazon Elastic Kubernetes Service|Paws::EKS> service. Use the attributes of this class
as arguments to method DescribeAddonVersions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeAddonVersions.

=head1 SYNOPSIS

    my $eks = Paws->service('EKS');
    my $DescribeAddonVersionsResponse = $eks->DescribeAddonVersions(
      AddonName         => 'MyString',    # OPTIONAL
      KubernetesVersion => 'MyString',    # OPTIONAL
      MaxResults        => 1,             # OPTIONAL
      NextToken         => 'MyString',    # OPTIONAL
    );

    # Results:
    my $Addons    = $DescribeAddonVersionsResponse->Addons;
    my $NextToken = $DescribeAddonVersionsResponse->NextToken;

    # Returns a L<Paws::EKS::DescribeAddonVersionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/eks/DescribeAddonVersions>

=head1 ATTRIBUTES


=head2 AddonName => Str

The name of the add-on. The name must match one of the names returned
by C<ListAddons>
(https://docs.aws.amazon.com/eks/latest/APIReference/API_ListAddons.html).



=head2 KubernetesVersion => Str

The Kubernetes versions that the add-on can be used with.



=head2 MaxResults => Int

The maximum number of results to return.



=head2 NextToken => Str

The C<nextToken> value returned from a previous paginated
C<DescribeAddonVersionsRequest> where C<maxResults> was used and the
results exceeded the value of that parameter. Pagination continues from
the end of the previous results that returned the C<nextToken> value.

This token should be treated as an opaque identifier that is used only
to retrieve the next items in a list and not for other programmatic
purposes.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeAddonVersions in L<Paws::EKS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

