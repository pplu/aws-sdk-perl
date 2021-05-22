
package Paws::SSMIncidents::ListIncidentRecords;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::SSMIncidents::Filter]', traits => ['NameInRequest'], request_name => 'filters');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListIncidentRecords');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/listIncidentRecords');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSMIncidents::ListIncidentRecordsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSMIncidents::ListIncidentRecords - Arguments for method ListIncidentRecords on L<Paws::SSMIncidents>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListIncidentRecords on the
L<AWS Systems Manager Incident Manager|Paws::SSMIncidents> service. Use the attributes of this class
as arguments to method ListIncidentRecords.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListIncidentRecords.

=head1 SYNOPSIS

    my $ssm-incidents = Paws->service('SSMIncidents');
    my $ListIncidentRecordsOutput = $ssm -incidents->ListIncidentRecords(
      Filters => [
        {
          Condition => {
            After  => '1970-01-01T01:00:00',    # OPTIONAL
            Before => '1970-01-01T01:00:00',    # OPTIONAL
            Equals => {
              IntegerValues => [ 1, ... ],      # max: 100; OPTIONAL
              StringValues  => [
                'MyStringListMemberString', ...    # max: 1000
              ],                                   # max: 100; OPTIONAL
            },    # OPTIONAL
          },
          Key => 'MyFilterKeyString',    # max: 50

        },
        ...
      ],                                 # OPTIONAL
      MaxResults => 1,                   # OPTIONAL
      NextToken  => 'MyNextToken',       # OPTIONAL
    );

    # Results:
    my $IncidentRecordSummaries =
      $ListIncidentRecordsOutput->IncidentRecordSummaries;
    my $NextToken = $ListIncidentRecordsOutput->NextToken;

    # Returns a L<Paws::SSMIncidents::ListIncidentRecordsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm-incidents/ListIncidentRecords>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::SSMIncidents::Filter>]

Filter the list of incident records you are searching through. You can
filter on the following keys:

=over

=item *

C<creationTime>

=item *

C<impact>

=item *

C<status>

=item *

C<createdBy>

=back




=head2 MaxResults => Int

The maximum number of results per page.



=head2 NextToken => Str

The pagination token to continue to the next page of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListIncidentRecords in L<Paws::SSMIncidents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

