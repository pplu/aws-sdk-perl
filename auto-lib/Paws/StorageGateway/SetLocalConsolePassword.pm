
package Paws::StorageGateway::SetLocalConsolePassword;
  use Moose;
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);
  has LocalConsolePassword => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SetLocalConsolePassword');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::StorageGateway::SetLocalConsolePasswordOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::SetLocalConsolePassword - Arguments for method SetLocalConsolePassword on L<Paws::StorageGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SetLocalConsolePassword on the
L<AWS Storage Gateway|Paws::StorageGateway> service. Use the attributes of this class
as arguments to method SetLocalConsolePassword.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SetLocalConsolePassword.

=head1 SYNOPSIS

    my $storagegateway = Paws->service('StorageGateway');
    # To set a password for your VM
    # Sets the password for your VM local console.
    my $SetLocalConsolePasswordOutput =
      $storagegateway->SetLocalConsolePassword(
      {
        'GatewayARN' =>
          'arn:aws:storagegateway:us-east-1:999999999999:gateway/sgw-12A3456B',
        'LocalConsolePassword' => 'PassWordMustBeAtLeast6Chars.'
      }
      );

    # Results:
    my $GatewayARN = $SetLocalConsolePasswordOutput->GatewayARN;

    # Returns a L<Paws::StorageGateway::SetLocalConsolePasswordOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/storagegateway/SetLocalConsolePassword>

=head1 ATTRIBUTES


=head2 B<REQUIRED> GatewayARN => Str





=head2 B<REQUIRED> LocalConsolePassword => Str

The password you want to set for your VM local console.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SetLocalConsolePassword in L<Paws::StorageGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

