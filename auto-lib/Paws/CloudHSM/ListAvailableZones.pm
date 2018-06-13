
package Paws::CloudHSM::ListAvailableZones;
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListAvailableZones');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudHSM::ListAvailableZonesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudHSM::ListAvailableZones - Arguments for method ListAvailableZones on L<Paws::CloudHSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListAvailableZones on the
L<Amazon CloudHSM|Paws::CloudHSM> service. Use the attributes of this class
as arguments to method ListAvailableZones.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListAvailableZones.

=head1 SYNOPSIS

    my $cloudhsm = Paws->service('CloudHSM');
    my $ListAvailableZonesResponse = $cloudhsm->ListAvailableZones();

    # Results:
    my $AZList = $ListAvailableZonesResponse->AZList;

    # Returns a L<Paws::CloudHSM::ListAvailableZonesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudhsm/ListAvailableZones>

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListAvailableZones in L<Paws::CloudHSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

