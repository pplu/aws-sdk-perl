
package Paws::SageMaker::ListEndpoints;
  use Moose;
  has CreationTimeAfter => (is => 'ro', isa => 'Str');
  has CreationTimeBefore => (is => 'ro', isa => 'Str');
  has LastModifiedTimeAfter => (is => 'ro', isa => 'Str');
  has LastModifiedTimeBefore => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NameContains => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');
  has SortBy => (is => 'ro', isa => 'Str');
  has SortOrder => (is => 'ro', isa => 'Str');
  has StatusEquals => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListEndpoints');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::ListEndpointsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListEndpoints - Arguments for method ListEndpoints on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListEndpoints on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method ListEndpoints.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListEndpoints.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $ListEndpointsOutput = $api . sagemaker->ListEndpoints(
      CreationTimeAfter      => '1970-01-01T01:00:00',       # OPTIONAL
      CreationTimeBefore     => '1970-01-01T01:00:00',       # OPTIONAL
      LastModifiedTimeAfter  => '1970-01-01T01:00:00',       # OPTIONAL
      LastModifiedTimeBefore => '1970-01-01T01:00:00',       # OPTIONAL
      MaxResults             => 1,                           # OPTIONAL
      NameContains           => 'MyEndpointNameContains',    # OPTIONAL
      NextToken              => 'MyPaginationToken',         # OPTIONAL
      SortBy                 => 'Name',                      # OPTIONAL
      SortOrder              => 'Ascending',                 # OPTIONAL
      StatusEquals           => 'OutOfService',              # OPTIONAL
    );

    # Results:
    my $Endpoints = $ListEndpointsOutput->Endpoints;
    my $NextToken = $ListEndpointsOutput->NextToken;

    # Returns a L<Paws::SageMaker::ListEndpointsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/ListEndpoints>

=head1 ATTRIBUTES


=head2 CreationTimeAfter => Str

A filter that returns only endpoints that were created after the
specified time (timestamp).



=head2 CreationTimeBefore => Str

A filter that returns only endpoints that were created before the
specified time (timestamp).



=head2 LastModifiedTimeAfter => Str

A filter that returns only endpoints that were modified after the
specified timestamp.



=head2 LastModifiedTimeBefore => Str

A filter that returns only endpoints that were modified before the
specified timestamp.



=head2 MaxResults => Int

The maximum number of endpoints to return in the response.



=head2 NameContains => Str

A string in endpoint names. This filter returns only endpoints whose
name contains the specified string.



=head2 NextToken => Str

If the result of a C<ListEndpoints> request was truncated, the response
includes a C<NextToken>. To retrieve the next set of endpoints, use the
token in the next request.



=head2 SortBy => Str

Sorts the list of results. The default is C<CreationTime>.

Valid values are: C<"Name">, C<"CreationTime">, C<"Status">

=head2 SortOrder => Str

The sort order for results. The default is C<Ascending>.

Valid values are: C<"Ascending">, C<"Descending">

=head2 StatusEquals => Str

A filter that returns only endpoints with the specified status.

Valid values are: C<"OutOfService">, C<"Creating">, C<"Updating">, C<"SystemUpdating">, C<"RollingBack">, C<"InService">, C<"Deleting">, C<"Failed">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListEndpoints in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

