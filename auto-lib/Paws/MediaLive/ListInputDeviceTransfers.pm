
package Paws::MediaLive::ListInputDeviceTransfers;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has TransferType => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'transferType', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListInputDeviceTransfers');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/prod/inputDeviceTransfers');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaLive::ListInputDeviceTransfersResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::ListInputDeviceTransfers - Arguments for method ListInputDeviceTransfers on L<Paws::MediaLive>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListInputDeviceTransfers on the
L<AWS Elemental MediaLive|Paws::MediaLive> service. Use the attributes of this class
as arguments to method ListInputDeviceTransfers.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListInputDeviceTransfers.

=head1 SYNOPSIS

    my $medialive = Paws->service('MediaLive');
    my $ListInputDeviceTransfersResponse = $medialive->ListInputDeviceTransfers(
      TransferType => 'My__string',
      MaxResults   => 1,               # OPTIONAL
      NextToken    => 'My__string',    # OPTIONAL
    );

    # Results:
    my $InputDeviceTransfers =
      $ListInputDeviceTransfersResponse->InputDeviceTransfers;
    my $NextToken = $ListInputDeviceTransfersResponse->NextToken;

    # Returns a L<Paws::MediaLive::ListInputDeviceTransfersResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/medialive/ListInputDeviceTransfers>

=head1 ATTRIBUTES


=head2 MaxResults => Int





=head2 NextToken => Str





=head2 B<REQUIRED> TransferType => Str






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListInputDeviceTransfers in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

