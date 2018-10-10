
package Paws::GuardDuty::UpdateFilter;
  use Moose;
  has Action => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'action');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DetectorId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'detectorId', required => 1);
  has FilterName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'filterName', required => 1);
  has FindingCriteria => (is => 'ro', isa => 'Paws::GuardDuty::FindingCriteria', traits => ['NameInRequest'], request_name => 'findingCriteria');
  has Rank => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'rank');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateFilter');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/detector/{detectorId}/filter/{filterName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GuardDuty::UpdateFilterResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::UpdateFilter - Arguments for method UpdateFilter on L<Paws::GuardDuty>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateFilter on the
L<Amazon GuardDuty|Paws::GuardDuty> service. Use the attributes of this class
as arguments to method UpdateFilter.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateFilter.

=head1 SYNOPSIS

    my $guardduty = Paws->service('GuardDuty');
    my $UpdateFilterResponse = $guardduty->UpdateFilter(
      DetectorId      => 'My__string',
      FilterName      => 'My__string',
      Action          => 'NOOP',                   # OPTIONAL
      Description     => 'MyFilterDescription',    # OPTIONAL
      FindingCriteria => {
        Criterion => {
          'My__string' => {
            Eq  => [ 'My__string', ... ],          # OPTIONAL
            Gt  => 1,                              # OPTIONAL
            Gte => 1,                              # OPTIONAL
            Lt  => 1,                              # OPTIONAL
            Lte => 1,                              # OPTIONAL
            Neq => [ 'My__string', ... ],          # OPTIONAL
          },
        },    # OPTIONAL
      },    # OPTIONAL
      Rank => 1,    # OPTIONAL
    );

    # Results:
    my $Name = $UpdateFilterResponse->Name;

    # Returns a L<Paws::GuardDuty::UpdateFilterResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/guardduty/UpdateFilter>

=head1 ATTRIBUTES


=head2 Action => Str

Specifies the action that is to be applied to the findings that match
the filter.

Valid values are: C<"NOOP">, C<"ARCHIVE">

=head2 Description => Str

The description of the filter.



=head2 B<REQUIRED> DetectorId => Str

The unique ID of the detector that specifies the GuardDuty service
where you want to update a filter.



=head2 B<REQUIRED> FilterName => Str

The name of the filter.



=head2 FindingCriteria => L<Paws::GuardDuty::FindingCriteria>

Represents the criteria to be used in the filter for querying findings.



=head2 Rank => Int

Specifies the position of the filter in the list of current filters.
Also specifies the order in which this filter is applied to the
findings.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateFilter in L<Paws::GuardDuty>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

