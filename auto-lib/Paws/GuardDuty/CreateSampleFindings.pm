
package Paws::GuardDuty::CreateSampleFindings;
  use Moose;
  has DetectorId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'detectorId', required => 1);
  has FindingTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'findingTypes');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateSampleFindings');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/detector/{detectorId}/findings/create');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GuardDuty::CreateSampleFindingsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::CreateSampleFindings - Arguments for method CreateSampleFindings on L<Paws::GuardDuty>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateSampleFindings on the
L<Amazon GuardDuty|Paws::GuardDuty> service. Use the attributes of this class
as arguments to method CreateSampleFindings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateSampleFindings.

=head1 SYNOPSIS

    my $guardduty = Paws->service('GuardDuty');
    my $CreateSampleFindingsResponse = $guardduty->CreateSampleFindings(
      DetectorId   => 'My__string',
      FindingTypes => [ 'MyFindingType', ... ],    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/guardduty/CreateSampleFindings>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DetectorId => Str

The ID of the detector to create sample findings for.



=head2 FindingTypes => ArrayRef[Str|Undef]

Types of sample findings that you want to generate.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateSampleFindings in L<Paws::GuardDuty>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

