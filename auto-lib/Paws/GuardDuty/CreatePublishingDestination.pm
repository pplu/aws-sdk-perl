
package Paws::GuardDuty::CreatePublishingDestination;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has DestinationProperties => (is => 'ro', isa => 'Paws::GuardDuty::DestinationProperties', traits => ['NameInRequest'], request_name => 'destinationProperties', required => 1);
  has DestinationType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'destinationType', required => 1);
  has DetectorId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'detectorId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePublishingDestination');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/detector/{detectorId}/publishingDestination');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GuardDuty::CreatePublishingDestinationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::CreatePublishingDestination - Arguments for method CreatePublishingDestination on L<Paws::GuardDuty>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreatePublishingDestination on the
L<Amazon GuardDuty|Paws::GuardDuty> service. Use the attributes of this class
as arguments to method CreatePublishingDestination.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreatePublishingDestination.

=head1 SYNOPSIS

    my $guardduty = Paws->service('GuardDuty');
    my $CreatePublishingDestinationResponse =
      $guardduty->CreatePublishingDestination(
      DestinationProperties => {
        DestinationArn => 'MyString',    # OPTIONAL
        KmsKeyArn      => 'MyString',    # OPTIONAL
      },
      DestinationType => 'S3',
      DetectorId      => 'MyDetectorId',
      ClientToken     => 'MyClientToken',    # OPTIONAL
      );

    # Results:
    my $DestinationId = $CreatePublishingDestinationResponse->DestinationId;

    # Returns a L<Paws::GuardDuty::CreatePublishingDestinationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/guardduty/CreatePublishingDestination>

=head1 ATTRIBUTES


=head2 ClientToken => Str

The idempotency token for the request.



=head2 B<REQUIRED> DestinationProperties => L<Paws::GuardDuty::DestinationProperties>

The properties of the publishing destination, including the ARNs for
the destination and the KMS key used for encryption.



=head2 B<REQUIRED> DestinationType => Str

The type of resource for the publishing destination. Currently only
Amazon S3 buckets are supported.

Valid values are: C<"S3">

=head2 B<REQUIRED> DetectorId => Str

The ID of the GuardDuty detector associated with the publishing
destination.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreatePublishingDestination in L<Paws::GuardDuty>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

