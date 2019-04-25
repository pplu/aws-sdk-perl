
package Paws::GuardDuty::ListFindings;
  use Moose;
  has DetectorId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'detectorId', required => 1);
  has FindingCriteria => (is => 'ro', isa => 'Paws::GuardDuty::FindingCriteria', traits => ['NameInRequest'], request_name => 'findingCriteria');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has SortCriteria => (is => 'ro', isa => 'Paws::GuardDuty::SortCriteria', traits => ['NameInRequest'], request_name => 'sortCriteria');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListFindings');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/detector/{detectorId}/findings');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GuardDuty::ListFindingsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::ListFindings - Arguments for method ListFindings on L<Paws::GuardDuty>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListFindings on the
L<Amazon GuardDuty|Paws::GuardDuty> service. Use the attributes of this class
as arguments to method ListFindings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListFindings.

=head1 SYNOPSIS

    my $guardduty = Paws->service('GuardDuty');
    my $ListFindingsResponse = $guardduty->ListFindings(
      DetectorId      => 'My__string',
      FindingCriteria => {
        Criterion => {
          'My__string' => {
            Eq  => [ 'My__string', ... ],    # OPTIONAL
            Gt  => 1,                        # OPTIONAL
            Gte => 1,                        # OPTIONAL
            Lt  => 1,                        # OPTIONAL
            Lte => 1,                        # OPTIONAL
            Neq => [ 'My__string', ... ],    # OPTIONAL
          },
        },    # OPTIONAL
      },    # OPTIONAL
      MaxResults   => 1,                # OPTIONAL
      NextToken    => 'MyNextToken',    # OPTIONAL
      SortCriteria => {
        AttributeName => 'My__string',
        OrderBy       => 'ASC',          # values: ASC, DESC; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $FindingIds = $ListFindingsResponse->FindingIds;
    my $NextToken  = $ListFindingsResponse->NextToken;

    # Returns a L<Paws::GuardDuty::ListFindingsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/guardduty/ListFindings>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DetectorId => Str

The ID of the detector that specifies the GuardDuty service whose
findings you want to list.



=head2 FindingCriteria => L<Paws::GuardDuty::FindingCriteria>

Represents the criteria used for querying findings.



=head2 MaxResults => Int

You can use this parameter to indicate the maximum number of items you
want in the response. The default value is 50. The maximum value is 50.



=head2 NextToken => Str

You can use this parameter when paginating results. Set the value of
this parameter to null on your first call to the ListFindings action.
For subsequent calls to the action fill nextToken in the request with
the value of nextToken from the previous response to continue listing
data.



=head2 SortCriteria => L<Paws::GuardDuty::SortCriteria>

Represents the criteria used for sorting findings.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListFindings in L<Paws::GuardDuty>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

