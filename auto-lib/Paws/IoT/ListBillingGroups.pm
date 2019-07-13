
package Paws::IoT::ListBillingGroups;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NamePrefixFilter => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'namePrefixFilter');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListBillingGroups');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/billing-groups');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::ListBillingGroupsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListBillingGroups - Arguments for method ListBillingGroups on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListBillingGroups on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method ListBillingGroups.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListBillingGroups.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $ListBillingGroupsResponse = $iot->ListBillingGroups(
      MaxResults       => 1,                       # OPTIONAL
      NamePrefixFilter => 'MyBillingGroupName',    # OPTIONAL
      NextToken        => 'MyNextToken',           # OPTIONAL
    );

    # Results:
    my $BillingGroups = $ListBillingGroupsResponse->BillingGroups;
    my $NextToken     = $ListBillingGroupsResponse->NextToken;

    # Returns a L<Paws::IoT::ListBillingGroupsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/ListBillingGroups>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to return per request.



=head2 NamePrefixFilter => Str

Limit the results to billing groups whose names have the given prefix.



=head2 NextToken => Str

The token to retrieve the next set of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListBillingGroups in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

