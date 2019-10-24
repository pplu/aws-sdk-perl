# Generated from json/callargs_class.tt

package Paws::StorageGateway::UpdateSMBSecurityStrategy;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::StorageGateway::Types qw//;
  has GatewayARN => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has SMBSecurityStrategy => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UpdateSMBSecurityStrategy');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::StorageGateway::UpdateSMBSecurityStrategyOutput');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SMBSecurityStrategy' => {
                                          'type' => 'Str'
                                        },
               'GatewayARN' => {
                                 'type' => 'Str'
                               }
             },
  'IsRequired' => {
                    'SMBSecurityStrategy' => 1,
                    'GatewayARN' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::UpdateSMBSecurityStrategy - Arguments for method UpdateSMBSecurityStrategy on L<Paws::StorageGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateSMBSecurityStrategy on the
L<AWS Storage Gateway|Paws::StorageGateway> service. Use the attributes of this class
as arguments to method UpdateSMBSecurityStrategy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateSMBSecurityStrategy.

=head1 SYNOPSIS

    my $storagegateway = Paws->service('StorageGateway');
    my $UpdateSMBSecurityStrategyOutput =
      $storagegateway->UpdateSMBSecurityStrategy(
      GatewayARN          => 'MyGatewayARN',
      SMBSecurityStrategy => 'ClientSpecified',

      );

    # Results:
    my $GatewayARN = $UpdateSMBSecurityStrategyOutput->GatewayARN;

    # Returns a L<Paws::StorageGateway::UpdateSMBSecurityStrategyOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/storagegateway/UpdateSMBSecurityStrategy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> GatewayARN => Str





=head2 B<REQUIRED> SMBSecurityStrategy => Str

Specifies the type of security strategy.

ClientSpecified: SMBv1 is enabled, SMB signing is offered but not
required, SMB encryption is offered but not required.

MandatorySigning: SMBv1 is disabled, SMB signing is required, SMB
encryption is offered but not required.

MandatoryEncryption: SMBv1 is disabled, SMB signing is offered but not
required, SMB encryption is required.

Valid values are: C<"ClientSpecified">, C<"MandatorySigning">, C<"MandatoryEncryption">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateSMBSecurityStrategy in L<Paws::StorageGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

