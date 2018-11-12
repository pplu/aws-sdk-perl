
package Paws::GuardDuty::CreateDetector;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has Enable => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'enable', required => 1);
  has FindingPublishingFrequency => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'findingPublishingFrequency');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDetector');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/detector');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GuardDuty::CreateDetectorResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::CreateDetector - Arguments for method CreateDetector on L<Paws::GuardDuty>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDetector on the
L<Amazon GuardDuty|Paws::GuardDuty> service. Use the attributes of this class
as arguments to method CreateDetector.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDetector.

=head1 SYNOPSIS

    my $guardduty = Paws->service('GuardDuty');
    my $CreateDetectorResponse = $guardduty->CreateDetector(
      Enable                     => 1,
      ClientToken                => 'My__stringMin0Max64',    # OPTIONAL
      FindingPublishingFrequency => 'FIFTEEN_MINUTES',        # OPTIONAL
    );

    # Results:
    my $DetectorId = $CreateDetectorResponse->DetectorId;

    # Returns a L<Paws::GuardDuty::CreateDetectorResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/guardduty/CreateDetector>

=head1 ATTRIBUTES


=head2 ClientToken => Str

The idempotency token for the create request.



=head2 B<REQUIRED> Enable => Bool

A boolean value that specifies whether the detector is to be enabled.



=head2 FindingPublishingFrequency => Str

A enum value that specifies how frequently customer got Finding updates
published.

Valid values are: C<"FIFTEEN_MINUTES">, C<"ONE_HOUR">, C<"SIX_HOURS">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDetector in L<Paws::GuardDuty>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

