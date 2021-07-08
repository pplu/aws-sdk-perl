
package Paws::StorageGateway::UpdateAutomaticTapeCreationPolicy;
  use Moose;
  has AutomaticTapeCreationRules => (is => 'ro', isa => 'ArrayRef[Paws::StorageGateway::AutomaticTapeCreationRule]', required => 1);
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateAutomaticTapeCreationPolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::StorageGateway::UpdateAutomaticTapeCreationPolicyOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::UpdateAutomaticTapeCreationPolicy - Arguments for method UpdateAutomaticTapeCreationPolicy on L<Paws::StorageGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateAutomaticTapeCreationPolicy on the
L<AWS Storage Gateway|Paws::StorageGateway> service. Use the attributes of this class
as arguments to method UpdateAutomaticTapeCreationPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateAutomaticTapeCreationPolicy.

=head1 SYNOPSIS

    my $storagegateway = Paws->service('StorageGateway');
    my $UpdateAutomaticTapeCreationPolicyOutput =
      $storagegateway->UpdateAutomaticTapeCreationPolicy(
      AutomaticTapeCreationRules => [
        {
          MinimumNumTapes   => 1,                        # min: 1, max: 10
          PoolId            => 'MyPoolId',               # min: 1, max: 100
          TapeBarcodePrefix => 'MyTapeBarcodePrefix',    # min: 1, max: 4
          TapeSizeInBytes   => 1,
          Worm              => 1,                        # OPTIONAL
        },
        ...
      ],
      GatewayARN => 'MyGatewayARN',

      );

    # Results:
    my $GatewayARN = $UpdateAutomaticTapeCreationPolicyOutput->GatewayARN;

# Returns a L<Paws::StorageGateway::UpdateAutomaticTapeCreationPolicyOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/storagegateway/UpdateAutomaticTapeCreationPolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AutomaticTapeCreationRules => ArrayRef[L<Paws::StorageGateway::AutomaticTapeCreationRule>]

An automatic tape creation policy consists of a list of automatic tape
creation rules. The rules determine when and how to automatically
create new tapes.



=head2 B<REQUIRED> GatewayARN => Str






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateAutomaticTapeCreationPolicy in L<Paws::StorageGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

