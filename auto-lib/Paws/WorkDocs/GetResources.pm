
package Paws::WorkDocs::GetResources;
  use Moose;
  has AuthenticationToken => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Authentication');
  has CollectionType => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'collectionType');
  has Limit => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'limit');
  has Marker => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'marker');
  has UserId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'userId');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetResources');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/api/v1/resources');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkDocs::GetResourcesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkDocs::GetResources - Arguments for method GetResources on L<Paws::WorkDocs>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetResources on the
L<Amazon WorkDocs|Paws::WorkDocs> service. Use the attributes of this class
as arguments to method GetResources.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetResources.

=head1 SYNOPSIS

    my $workdocs = Paws->service('WorkDocs');
    my $GetResourcesResponse = $workdocs->GetResources(
      AuthenticationToken => 'MyAuthenticationHeaderType',    # OPTIONAL
      CollectionType      => 'SHARED_WITH_ME',                # OPTIONAL
      Limit               => 1,                               # OPTIONAL
      Marker              => 'MyPageMarkerType',              # OPTIONAL
      UserId              => 'MyIdType',                      # OPTIONAL
    );

    # Results:
    my $Documents = $GetResourcesResponse->Documents;
    my $Folders   = $GetResourcesResponse->Folders;
    my $Marker    = $GetResourcesResponse->Marker;

    # Returns a L<Paws::WorkDocs::GetResourcesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workdocs/GetResources>

=head1 ATTRIBUTES


=head2 AuthenticationToken => Str

The Amazon WorkDocs authentication token. Do not set this field when
using administrative API actions, as in accessing the API operation
using AWS credentials.



=head2 CollectionType => Str

The collection type.

Valid values are: C<"SHARED_WITH_ME">

=head2 Limit => Int

The maximum number of resources to return.



=head2 Marker => Str

The marker for the next set of results. This marker was received from a
previous call.



=head2 UserId => Str

The user ID for the resource collection. This is a required field for
accessing the API operation using IAM credentials.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetResources in L<Paws::WorkDocs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

