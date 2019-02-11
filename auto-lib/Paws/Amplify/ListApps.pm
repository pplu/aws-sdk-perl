
package Paws::Amplify::ListApps;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListApps');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/apps');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Amplify::ListAppsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Amplify::ListApps - Arguments for method ListApps on L<Paws::Amplify>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListApps on the
L<AWS Amplify|Paws::Amplify> service. Use the attributes of this class
as arguments to method ListApps.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListApps.

=head1 SYNOPSIS

    my $amplify = Paws->service('Amplify');
    my $ListAppsResult = $amplify->ListApps(
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $Apps      = $ListAppsResult->Apps;
    my $NextToken = $ListAppsResult->NextToken;

    # Returns a L<Paws::Amplify::ListAppsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/amplify/ListApps>

=head1 ATTRIBUTES


=head2 MaxResults => Int

Maximum number of records to list in a single response.



=head2 NextToken => Str

Pagination token. If non-null pagination token is returned in a result,
then pass its value in another request to fetch more entries.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListApps in L<Paws::Amplify>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

