
package Paws::GuardDuty::ListFilters;
  use Moose;
  has DetectorId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'detectorId', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListFilters');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/detector/{detectorId}/filter');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GuardDuty::ListFiltersResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::ListFilters - Arguments for method ListFilters on L<Paws::GuardDuty>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListFilters on the
L<Amazon GuardDuty|Paws::GuardDuty> service. Use the attributes of this class
as arguments to method ListFilters.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListFilters.

=head1 SYNOPSIS

    my $guardduty = Paws->service('GuardDuty');
    my $ListFiltersResponse = $guardduty->ListFilters(
      DetectorId => 'My__string',
      MaxResults => 1,               # OPTIONAL
      NextToken  => 'My__string',    # OPTIONAL
    );

    # Results:
    my $FilterNames = $ListFiltersResponse->FilterNames;
    my $NextToken   = $ListFiltersResponse->NextToken;

    # Returns a L<Paws::GuardDuty::ListFiltersResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/guardduty/ListFilters>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DetectorId => Str

The ID of the detector that specifies the GuardDuty service where you
want to list filters.



=head2 MaxResults => Int

Indicates the maximum number of items that you want in the response.
The maximum value is 50.



=head2 NextToken => Str

Paginates results. Set the value of this parameter to NULL on your
first call to the ListFilters operation.For subsequent calls to the
operation, fill nextToken in the request with the value of nextToken
from the previous response to continue listing data.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListFilters in L<Paws::GuardDuty>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

