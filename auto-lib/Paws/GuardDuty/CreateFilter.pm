
package Paws::GuardDuty::CreateFilter;
  use Moose;
  has Action => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'action');
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DetectorId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'detectorId', required => 1);
  has FindingCriteria => (is => 'ro', isa => 'Paws::GuardDuty::FindingCriteria', traits => ['NameInRequest'], request_name => 'findingCriteria', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has Rank => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'rank');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateFilter');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/detector/{detectorId}/filter');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GuardDuty::CreateFilterResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::CreateFilter - Arguments for method CreateFilter on L<Paws::GuardDuty>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateFilter on the
L<Amazon GuardDuty|Paws::GuardDuty> service. Use the attributes of this class
as arguments to method CreateFilter.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateFilter.

=head1 SYNOPSIS

    my $guardduty = Paws->service('GuardDuty');
    my $CreateFilterResponse = $guardduty->CreateFilter(
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
      },
      Name        => 'MyFilterName',
      Action      => 'NOOP',                   # OPTIONAL
      ClientToken => 'My__stringMin0Max64',    # OPTIONAL
      Description => 'MyFilterDescription',    # OPTIONAL
      Rank        => 1,                        # OPTIONAL
    );

    # Results:
    my $Name = $CreateFilterResponse->Name;

    # Returns a L<Paws::GuardDuty::CreateFilterResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/guardduty/CreateFilter>

=head1 ATTRIBUTES


=head2 Action => Str

Specifies the action that is to be applied to the findings that match
the filter.

Valid values are: C<"NOOP">, C<"ARCHIVE">

=head2 ClientToken => Str

The idempotency token for the create request.



=head2 Description => Str

The description of the filter.



=head2 B<REQUIRED> DetectorId => Str

The unique ID of the detector that you want to update.



=head2 B<REQUIRED> FindingCriteria => L<Paws::GuardDuty::FindingCriteria>

Represents the criteria to be used in the filter for querying findings.



=head2 B<REQUIRED> Name => Str

The name of the filter.



=head2 Rank => Int

Specifies the position of the filter in the list of current filters.
Also specifies the order in which this filter is applied to the
findings.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateFilter in L<Paws::GuardDuty>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

