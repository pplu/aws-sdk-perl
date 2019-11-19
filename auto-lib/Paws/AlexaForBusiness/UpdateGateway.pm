# Generated from json/callargs_class.tt

package Paws::AlexaForBusiness::UpdateGateway;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::AlexaForBusiness::Types qw//;
  has Description => (is => 'ro', isa => Str, predicate => 1);
  has GatewayArn => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Name => (is => 'ro', isa => Str, predicate => 1);
  has SoftwareVersion => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UpdateGateway');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::AlexaForBusiness::UpdateGatewayResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Description' => {
                                  'type' => 'Str'
                                },
               'GatewayArn' => {
                                 'type' => 'Str'
                               },
               'SoftwareVersion' => {
                                      'type' => 'Str'
                                    },
               'Name' => {
                           'type' => 'Str'
                         }
             },
  'IsRequired' => {
                    'GatewayArn' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::UpdateGateway - Arguments for method UpdateGateway on L<Paws::AlexaForBusiness>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateGateway on the
L<Alexa For Business|Paws::AlexaForBusiness> service. Use the attributes of this class
as arguments to method UpdateGateway.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateGateway.

=head1 SYNOPSIS

    my $a4b = Paws->service('AlexaForBusiness');
    my $UpdateGatewayResponse = $a4b->UpdateGateway(
      GatewayArn      => 'MyArn',
      Description     => 'MyGatewayDescription',    # OPTIONAL
      Name            => 'MyGatewayName',           # OPTIONAL
      SoftwareVersion => 'MyGatewayVersion',        # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/a4b/UpdateGateway>

=head1 ATTRIBUTES


=head2 Description => Str

The updated description of the gateway.



=head2 B<REQUIRED> GatewayArn => Str

The ARN of the gateway to update.



=head2 Name => Str

The updated name of the gateway.



=head2 SoftwareVersion => Str

The updated software version of the gateway. The gateway automatically
updates its software version during normal operation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateGateway in L<Paws::AlexaForBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

