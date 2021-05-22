
package Paws::GuardDuty::UpdatePublishingDestination;
  use Moose;
  has DestinationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'destinationId', required => 1);
  has DestinationProperties => (is => 'ro', isa => 'Paws::GuardDuty::DestinationProperties', traits => ['NameInRequest'], request_name => 'destinationProperties');
  has DetectorId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'detectorId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdatePublishingDestination');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/detector/{detectorId}/publishingDestination/{destinationId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GuardDuty::UpdatePublishingDestinationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::UpdatePublishingDestination - Arguments for method UpdatePublishingDestination on L<Paws::GuardDuty>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdatePublishingDestination on the
L<Amazon GuardDuty|Paws::GuardDuty> service. Use the attributes of this class
as arguments to method UpdatePublishingDestination.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdatePublishingDestination.

=head1 SYNOPSIS

    my $guardduty = Paws->service('GuardDuty');
    my $UpdatePublishingDestinationResponse =
      $guardduty->UpdatePublishingDestination(
      DestinationId         => 'MyString',
      DetectorId            => 'MyDetectorId',
      DestinationProperties => {
        DestinationArn => 'MyString',
        KmsKeyArn      => 'MyString',
      },    # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/guardduty/UpdatePublishingDestination>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DestinationId => Str

The ID of the publishing destination to update.



=head2 DestinationProperties => L<Paws::GuardDuty::DestinationProperties>

A C<DestinationProperties> object that includes the C<DestinationArn>
and C<KmsKeyArn> of the publishing destination.



=head2 B<REQUIRED> DetectorId => Str

The ID of the detector associated with the publishing destinations to
update.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdatePublishingDestination in L<Paws::GuardDuty>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

