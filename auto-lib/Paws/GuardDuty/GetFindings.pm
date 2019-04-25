
package Paws::GuardDuty::GetFindings;
  use Moose;
  has DetectorId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'detectorId', required => 1);
  has FindingIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'findingIds', required => 1);
  has SortCriteria => (is => 'ro', isa => 'Paws::GuardDuty::SortCriteria', traits => ['NameInRequest'], request_name => 'sortCriteria');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetFindings');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/detector/{detectorId}/findings/get');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GuardDuty::GetFindingsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::GetFindings - Arguments for method GetFindings on L<Paws::GuardDuty>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetFindings on the
L<Amazon GuardDuty|Paws::GuardDuty> service. Use the attributes of this class
as arguments to method GetFindings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetFindings.

=head1 SYNOPSIS

    my $guardduty = Paws->service('GuardDuty');
    my $GetFindingsResponse = $guardduty->GetFindings(
      DetectorId   => 'My__string',
      FindingIds   => [ 'MyFindingId', ... ],
      SortCriteria => {
        AttributeName => 'My__string',
        OrderBy       => 'ASC',          # values: ASC, DESC; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $Findings = $GetFindingsResponse->Findings;

    # Returns a L<Paws::GuardDuty::GetFindingsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/guardduty/GetFindings>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DetectorId => Str

The ID of the detector that specifies the GuardDuty service whose
findings you want to retrieve.



=head2 B<REQUIRED> FindingIds => ArrayRef[Str|Undef]

IDs of the findings that you want to retrieve.



=head2 SortCriteria => L<Paws::GuardDuty::SortCriteria>

Represents the criteria used for sorting findings.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetFindings in L<Paws::GuardDuty>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

