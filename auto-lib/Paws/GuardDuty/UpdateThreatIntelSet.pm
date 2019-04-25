
package Paws::GuardDuty::UpdateThreatIntelSet;
  use Moose;
  has Activate => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'activate');
  has DetectorId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'detectorId', required => 1);
  has Location => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'location');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has ThreatIntelSetId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'threatIntelSetId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateThreatIntelSet');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/detector/{detectorId}/threatintelset/{threatIntelSetId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GuardDuty::UpdateThreatIntelSetResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::UpdateThreatIntelSet - Arguments for method UpdateThreatIntelSet on L<Paws::GuardDuty>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateThreatIntelSet on the
L<Amazon GuardDuty|Paws::GuardDuty> service. Use the attributes of this class
as arguments to method UpdateThreatIntelSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateThreatIntelSet.

=head1 SYNOPSIS

    my $guardduty = Paws->service('GuardDuty');
    my $UpdateThreatIntelSetResponse = $guardduty->UpdateThreatIntelSet(
      DetectorId       => 'My__string',
      ThreatIntelSetId => 'My__string',
      Activate         => 1,               # OPTIONAL
      Location         => 'MyLocation',    # OPTIONAL
      Name             => 'MyName',        # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/guardduty/UpdateThreatIntelSet>

=head1 ATTRIBUTES


=head2 Activate => Bool

The updated boolean value that specifies whether the ThreateIntelSet is
active or not.



=head2 B<REQUIRED> DetectorId => Str

The detectorID that specifies the GuardDuty service whose
ThreatIntelSet you want to update.



=head2 Location => Str

The updated URI of the file that contains the ThreateIntelSet. For
example (https://s3.us-west-2.amazonaws.com/my-bucket/my-object-key)



=head2 Name => Str

The unique ID that specifies the ThreatIntelSet that you want to
update.



=head2 B<REQUIRED> ThreatIntelSetId => Str

The unique ID that specifies the ThreatIntelSet that you want to
update.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateThreatIntelSet in L<Paws::GuardDuty>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

