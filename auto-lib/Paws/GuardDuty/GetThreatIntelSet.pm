
package Paws::GuardDuty::GetThreatIntelSet;
  use Moose;
  has DetectorId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'detectorId', required => 1);
  has ThreatIntelSetId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'threatIntelSetId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetThreatIntelSet');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/detector/{detectorId}/threatintelset/{threatIntelSetId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GuardDuty::GetThreatIntelSetResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::GetThreatIntelSet - Arguments for method GetThreatIntelSet on L<Paws::GuardDuty>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetThreatIntelSet on the
L<Amazon GuardDuty|Paws::GuardDuty> service. Use the attributes of this class
as arguments to method GetThreatIntelSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetThreatIntelSet.

=head1 SYNOPSIS

    my $guardduty = Paws->service('GuardDuty');
    my $GetThreatIntelSetResponse = $guardduty->GetThreatIntelSet(
      DetectorId       => 'MyDetectorId',
      ThreatIntelSetId => 'MyString',

    );

    # Results:
    my $Format   = $GetThreatIntelSetResponse->Format;
    my $Location = $GetThreatIntelSetResponse->Location;
    my $Name     = $GetThreatIntelSetResponse->Name;
    my $Status   = $GetThreatIntelSetResponse->Status;
    my $Tags     = $GetThreatIntelSetResponse->Tags;

    # Returns a L<Paws::GuardDuty::GetThreatIntelSetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/guardduty/GetThreatIntelSet>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DetectorId => Str

The unique ID of the detector the threatIntelSet is associated with.



=head2 B<REQUIRED> ThreatIntelSetId => Str

The unique ID of the threatIntelSet you want to get.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetThreatIntelSet in L<Paws::GuardDuty>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

