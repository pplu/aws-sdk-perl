
package Paws::Connect::ListSecurityProfiles;
  use Moose;
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'InstanceId', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListSecurityProfiles');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/security-profiles-summary/{InstanceId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Connect::ListSecurityProfilesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::ListSecurityProfiles - Arguments for method ListSecurityProfiles on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListSecurityProfiles on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method ListSecurityProfiles.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListSecurityProfiles.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    my $ListSecurityProfilesResponse = $connect->ListSecurityProfiles(
      InstanceId => 'MyInstanceId',
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListSecurityProfilesResponse->NextToken;
    my $SecurityProfileSummaryList =
      $ListSecurityProfilesResponse->SecurityProfileSummaryList;

    # Returns a L<Paws::Connect::ListSecurityProfilesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/ListSecurityProfiles>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InstanceId => Str

The identifier for your Amazon Connect instance. To find the ID of your
instance, open the AWS console and select Amazon Connect. Select the
alias of the instance in the Instance alias column. The instance ID is
displayed in the Overview section of your instance settings. For
example, the instance ID is the set of characters at the end of the
instance ARN, after instance/, such as
10a4c4eb-f57e-4d4c-b602-bf39176ced07.



=head2 MaxResults => Int

The maximum number of security profiles to return.



=head2 NextToken => Str

The token for the next set of results. Use the value returned in the
previous response in the next request to retrieve the next set of
results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListSecurityProfiles in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

