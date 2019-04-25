
package Paws::GuardDuty::GetFindingsStatistics;
  use Moose;
  has DetectorId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'detectorId', required => 1);
  has FindingCriteria => (is => 'ro', isa => 'Paws::GuardDuty::FindingCriteria', traits => ['NameInRequest'], request_name => 'findingCriteria');
  has FindingStatisticTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'findingStatisticTypes', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetFindingsStatistics');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/detector/{detectorId}/findings/statistics');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GuardDuty::GetFindingsStatisticsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::GetFindingsStatistics - Arguments for method GetFindingsStatistics on L<Paws::GuardDuty>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetFindingsStatistics on the
L<Amazon GuardDuty|Paws::GuardDuty> service. Use the attributes of this class
as arguments to method GetFindingsStatistics.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetFindingsStatistics.

=head1 SYNOPSIS

    my $guardduty = Paws->service('GuardDuty');
    my $GetFindingsStatisticsResponse = $guardduty->GetFindingsStatistics(
      DetectorId            => 'My__string',
      FindingStatisticTypes => [
        'COUNT_BY_SEVERITY', ...    # values: COUNT_BY_SEVERITY
      ],
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
    );

    # Results:
    my $FindingStatistics = $GetFindingsStatisticsResponse->FindingStatistics;

    # Returns a L<Paws::GuardDuty::GetFindingsStatisticsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/guardduty/GetFindingsStatistics>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DetectorId => Str

The ID of the detector that specifies the GuardDuty service whose
findings' statistics you want to retrieve.



=head2 FindingCriteria => L<Paws::GuardDuty::FindingCriteria>

Represents the criteria used for querying findings.



=head2 B<REQUIRED> FindingStatisticTypes => ArrayRef[Str|Undef]

Types of finding statistics to retrieve.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetFindingsStatistics in L<Paws::GuardDuty>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

