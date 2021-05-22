
package Paws::ResourceGroups::SearchResources;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has ResourceQuery => (is => 'ro', isa => 'Paws::ResourceGroups::ResourceQuery', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SearchResources');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/resources/search');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ResourceGroups::SearchResourcesOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ResourceGroups::SearchResources - Arguments for method SearchResources on L<Paws::ResourceGroups>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SearchResources on the
L<AWS Resource Groups|Paws::ResourceGroups> service. Use the attributes of this class
as arguments to method SearchResources.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SearchResources.

=head1 SYNOPSIS

    my $resource-groups = Paws->service('ResourceGroups');
    my $SearchResourcesOutput = $resource -groups->SearchResources(
      ResourceQuery => {
        Query => 'MyQuery',          # max: 4096
        Type  => 'TAG_FILTERS_1_0'
        ,    # values: TAG_FILTERS_1_0, CLOUDFORMATION_STACK_1_0min: 1, max: 128

      },
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $NextToken           = $SearchResourcesOutput->NextToken;
    my $QueryErrors         = $SearchResourcesOutput->QueryErrors;
    my $ResourceIdentifiers = $SearchResourcesOutput->ResourceIdentifiers;

    # Returns a L<Paws::ResourceGroups::SearchResourcesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/resource-groups/SearchResources>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The total number of results that you want included on each page of the
response. If you do not include this parameter, it defaults to a value
that is specific to the operation. If additional items exist beyond the
maximum you specify, the C<NextToken> response element is present and
has a value (is not null). Include that value as the C<NextToken>
request parameter in the next call to the operation to get the next
part of the results. Note that the service might return fewer results
than the maximum even when there are more results available. You should
check C<NextToken> after every operation to ensure that you receive all
of the results.



=head2 NextToken => Str

The parameter for receiving additional results if you receive a
C<NextToken> response in a previous request. A C<NextToken> response
indicates that more output is available. Set this parameter to the
value provided by a previous call's C<NextToken> response to indicate
where the output should continue from.



=head2 B<REQUIRED> ResourceQuery => L<Paws::ResourceGroups::ResourceQuery>

The search query, using the same formats that are supported for
resource group definition. For more information, see CreateGroup.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SearchResources in L<Paws::ResourceGroups>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

