
package Paws::SageMaker::ListApps;
  use Moose;
  has DomainIdEquals => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has SortBy => (is => 'ro', isa => 'Str');
  has SortOrder => (is => 'ro', isa => 'Str');
  has UserProfileNameEquals => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListApps');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::ListAppsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListApps - Arguments for method ListApps on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListApps on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method ListApps.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListApps.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $ListAppsResponse = $api . sagemaker->ListApps(
      DomainIdEquals        => 'MyDomainId',           # OPTIONAL
      MaxResults            => 1,                      # OPTIONAL
      NextToken             => 'MyNextToken',          # OPTIONAL
      SortBy                => 'CreationTime',         # OPTIONAL
      SortOrder             => 'Ascending',            # OPTIONAL
      UserProfileNameEquals => 'MyUserProfileName',    # OPTIONAL
    );

    # Results:
    my $Apps      = $ListAppsResponse->Apps;
    my $NextToken = $ListAppsResponse->NextToken;

    # Returns a L<Paws::SageMaker::ListAppsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/ListApps>

=head1 ATTRIBUTES


=head2 DomainIdEquals => Str

A parameter to search for the domain ID.



=head2 MaxResults => Int

Returns a list up to a specified limit.



=head2 NextToken => Str

If the previous response was truncated, you will receive this token.
Use it in your next request to receive the next set of results.



=head2 SortBy => Str

The parameter by which to sort the results. The default is
CreationTime.

Valid values are: C<"CreationTime">

=head2 SortOrder => Str

The sort order for the results. The default is Ascending.

Valid values are: C<"Ascending">, C<"Descending">

=head2 UserProfileNameEquals => Str

A parameter to search by user profile name.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListApps in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

