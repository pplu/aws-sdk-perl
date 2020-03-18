
package Paws::MobileHub::ListBundles;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListBundles');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/bundles');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MobileHub::ListBundlesResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MobileHub::ListBundles - Arguments for method ListBundles on L<Paws::MobileHub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListBundles on the
L<AWS Mobile|Paws::MobileHub> service. Use the attributes of this class
as arguments to method ListBundles.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListBundles.

=head1 SYNOPSIS

    my $mobile = Paws->service('MobileHub');
    my $ListBundlesResult = $mobile->ListBundles(
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $BundleList = $ListBundlesResult->BundleList;
    my $NextToken  = $ListBundlesResult->NextToken;

    # Returns a L<Paws::MobileHub::ListBundlesResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mobile/ListBundles>

=head1 ATTRIBUTES


=head2 MaxResults => Int

Maximum number of records to list in a single response.



=head2 NextToken => Str

Pagination token. Set to null to start listing bundles from start. If
non-null pagination token is returned in a result, then pass its value
in here in another request to list more bundles.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListBundles in L<Paws::MobileHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

