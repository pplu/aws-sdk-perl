
package Paws::StorageGateway::UpdateSMBFileShareVisibility;
  use Moose;
  has FileSharesVisible => (is => 'ro', isa => 'Bool', required => 1);
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateSMBFileShareVisibility');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::StorageGateway::UpdateSMBFileShareVisibilityOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::UpdateSMBFileShareVisibility - Arguments for method UpdateSMBFileShareVisibility on L<Paws::StorageGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateSMBFileShareVisibility on the
L<AWS Storage Gateway|Paws::StorageGateway> service. Use the attributes of this class
as arguments to method UpdateSMBFileShareVisibility.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateSMBFileShareVisibility.

=head1 SYNOPSIS

    my $storagegateway = Paws->service('StorageGateway');
    my $UpdateSMBFileShareVisibilityOutput =
      $storagegateway->UpdateSMBFileShareVisibility(
      FileSharesVisible => 1,
      GatewayARN        => 'MyGatewayARN',

      );

    # Results:
    my $GatewayARN = $UpdateSMBFileShareVisibilityOutput->GatewayARN;

 # Returns a L<Paws::StorageGateway::UpdateSMBFileShareVisibilityOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/storagegateway/UpdateSMBFileShareVisibility>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FileSharesVisible => Bool

The shares on this gateway appear when listing shares.



=head2 B<REQUIRED> GatewayARN => Str






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateSMBFileShareVisibility in L<Paws::StorageGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

