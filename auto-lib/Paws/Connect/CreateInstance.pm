
package Paws::Connect::CreateInstance;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has DirectoryId => (is => 'ro', isa => 'Str');
  has IdentityManagementType => (is => 'ro', isa => 'Str', required => 1);
  has InboundCallsEnabled => (is => 'ro', isa => 'Bool', required => 1);
  has InstanceAlias => (is => 'ro', isa => 'Str');
  has OutboundCallsEnabled => (is => 'ro', isa => 'Bool', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateInstance');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/instance');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Connect::CreateInstanceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::CreateInstance - Arguments for method CreateInstance on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateInstance on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method CreateInstance.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateInstance.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    my $CreateInstanceResponse = $connect->CreateInstance(
      IdentityManagementType => 'SAML',
      InboundCallsEnabled    => 1,
      OutboundCallsEnabled   => 1,
      ClientToken            => 'MyClientToken',       # OPTIONAL
      DirectoryId            => 'MyDirectoryId',       # OPTIONAL
      InstanceAlias          => 'MyDirectoryAlias',    # OPTIONAL
    );

    # Results:
    my $Arn = $CreateInstanceResponse->Arn;
    my $Id  = $CreateInstanceResponse->Id;

    # Returns a L<Paws::Connect::CreateInstanceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/CreateInstance>

=head1 ATTRIBUTES


=head2 ClientToken => Str

The idempotency token.



=head2 DirectoryId => Str

The identifier for the directory.



=head2 B<REQUIRED> IdentityManagementType => Str

The type of identity management for your Amazon Connect users.

Valid values are: C<"SAML">, C<"CONNECT_MANAGED">, C<"EXISTING_DIRECTORY">

=head2 B<REQUIRED> InboundCallsEnabled => Bool

Your contact center handles incoming contacts.



=head2 InstanceAlias => Str

The name for your instance.



=head2 B<REQUIRED> OutboundCallsEnabled => Bool

Your contact center allows outbound calls.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateInstance in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

