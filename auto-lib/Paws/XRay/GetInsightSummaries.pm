
package Paws::XRay::GetInsightSummaries;
  use Moose;
  has EndTime => (is => 'ro', isa => 'Str', required => 1);
  has GroupARN => (is => 'ro', isa => 'Str');
  has GroupName => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has StartTime => (is => 'ro', isa => 'Str', required => 1);
  has States => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetInsightSummaries');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/InsightSummaries');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::XRay::GetInsightSummariesResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::XRay::GetInsightSummaries - Arguments for method GetInsightSummaries on L<Paws::XRay>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetInsightSummaries on the
L<AWS X-Ray|Paws::XRay> service. Use the attributes of this class
as arguments to method GetInsightSummaries.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetInsightSummaries.

=head1 SYNOPSIS

    my $xray = Paws->service('XRay');
    my $GetInsightSummariesResult = $xray->GetInsightSummaries(
      EndTime    => '1970-01-01T01:00:00',
      StartTime  => '1970-01-01T01:00:00',
      GroupARN   => 'MyGroupARN',            # OPTIONAL
      GroupName  => 'MyGroupName',           # OPTIONAL
      MaxResults => 1,                       # OPTIONAL
      NextToken  => 'MyToken',               # OPTIONAL
      States     => [
        'ACTIVE', ...                        # values: ACTIVE, CLOSED
      ],                                     # OPTIONAL
    );

    # Results:
    my $InsightSummaries = $GetInsightSummariesResult->InsightSummaries;
    my $NextToken        = $GetInsightSummariesResult->NextToken;

    # Returns a L<Paws::XRay::GetInsightSummariesResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/xray/GetInsightSummaries>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EndTime => Str

The end of the time frame in which the insights ended. The end time
can't be more than 30 days old.



=head2 GroupARN => Str

The Amazon Resource Name (ARN) of the group. Required if the GroupName
isn't provided.



=head2 GroupName => Str

The name of the group. Required if the GroupARN isn't provided.



=head2 MaxResults => Int

The maximum number of results to display.



=head2 NextToken => Str

Pagination token.



=head2 B<REQUIRED> StartTime => Str

The beginning of the time frame in which the insights started. The
start time can't be more than 30 days old.



=head2 States => ArrayRef[Str|Undef]

The list of insight states.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetInsightSummaries in L<Paws::XRay>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

