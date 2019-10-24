# Generated from json/callargs_class.tt

package Paws::AlexaForBusiness::AssociateDeviceWithNetworkProfile;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::AlexaForBusiness::Types qw//;
  has DeviceArn => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has NetworkProfileArn => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'AssociateDeviceWithNetworkProfile');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::AlexaForBusiness::AssociateDeviceWithNetworkProfileResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NetworkProfileArn' => {
                                        'type' => 'Str'
                                      },
               'DeviceArn' => {
                                'type' => 'Str'
                              }
             },
  'IsRequired' => {
                    'NetworkProfileArn' => 1,
                    'DeviceArn' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::AssociateDeviceWithNetworkProfile - Arguments for method AssociateDeviceWithNetworkProfile on L<Paws::AlexaForBusiness>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssociateDeviceWithNetworkProfile on the
L<Alexa For Business|Paws::AlexaForBusiness> service. Use the attributes of this class
as arguments to method AssociateDeviceWithNetworkProfile.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssociateDeviceWithNetworkProfile.

=head1 SYNOPSIS

    my $a4b = Paws->service('AlexaForBusiness');
    my $AssociateDeviceWithNetworkProfileResponse =
      $a4b->AssociateDeviceWithNetworkProfile(
      DeviceArn         => 'MyArn',
      NetworkProfileArn => 'MyArn',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/a4b/AssociateDeviceWithNetworkProfile>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DeviceArn => Str

The device ARN.



=head2 B<REQUIRED> NetworkProfileArn => Str

The ARN of the network profile to associate with a device.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssociateDeviceWithNetworkProfile in L<Paws::AlexaForBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

