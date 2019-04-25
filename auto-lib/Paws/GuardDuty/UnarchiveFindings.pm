
package Paws::GuardDuty::UnarchiveFindings;
  use Moose;
  has DetectorId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'detectorId', required => 1);
  has FindingIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'findingIds', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UnarchiveFindings');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/detector/{detectorId}/findings/unarchive');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GuardDuty::UnarchiveFindingsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::UnarchiveFindings - Arguments for method UnarchiveFindings on L<Paws::GuardDuty>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UnarchiveFindings on the
L<Amazon GuardDuty|Paws::GuardDuty> service. Use the attributes of this class
as arguments to method UnarchiveFindings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UnarchiveFindings.

=head1 SYNOPSIS

    my $guardduty = Paws->service('GuardDuty');
    my $UnarchiveFindingsResponse = $guardduty->UnarchiveFindings(
      DetectorId => 'My__string',
      FindingIds => [ 'MyFindingId', ... ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/guardduty/UnarchiveFindings>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DetectorId => Str

The ID of the detector that specifies the GuardDuty service whose
findings you want to unarchive.



=head2 B<REQUIRED> FindingIds => ArrayRef[Str|Undef]

IDs of the findings that you want to unarchive.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UnarchiveFindings in L<Paws::GuardDuty>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

