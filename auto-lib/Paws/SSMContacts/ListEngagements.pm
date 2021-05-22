
package Paws::SSMContacts::ListEngagements;
  use Moose;
  has IncidentId => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has TimeRangeValue => (is => 'ro', isa => 'Paws::SSMContacts::TimeRange');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListEngagements');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSMContacts::ListEngagementsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSMContacts::ListEngagements - Arguments for method ListEngagements on L<Paws::SSMContacts>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListEngagements on the
L<AWS Systems Manager Incident Manager Contacts|Paws::SSMContacts> service. Use the attributes of this class
as arguments to method ListEngagements.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListEngagements.

=head1 SYNOPSIS

    my $ssm-contacts = Paws->service('SSMContacts');
    my $ListEngagementsResult = $ssm -contacts->ListEngagements(
      IncidentId     => 'MyIncidentId',         # OPTIONAL
      MaxResults     => 1,                      # OPTIONAL
      NextToken      => 'MyPaginationToken',    # OPTIONAL
      TimeRangeValue => {
        EndTime   => '1970-01-01T01:00:00',     # OPTIONAL
        StartTime => '1970-01-01T01:00:00',     # OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $Engagements = $ListEngagementsResult->Engagements;
    my $NextToken   = $ListEngagementsResult->NextToken;

    # Returns a L<Paws::SSMContacts::ListEngagementsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm-contacts/ListEngagements>

=head1 ATTRIBUTES


=head2 IncidentId => Str

The Amazon Resource Name (ARN) of the incident you're listing
engagements for.



=head2 MaxResults => Int

The maximum number of engagements per page of results.



=head2 NextToken => Str

The pagination token to continue to the next page of results.



=head2 TimeRangeValue => L<Paws::SSMContacts::TimeRange>

The time range to lists engagements for an incident.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListEngagements in L<Paws::SSMContacts>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

