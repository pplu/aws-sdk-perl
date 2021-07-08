
package Paws::NimbleStudio::CreateStudio;
  use Moose;
  has AdminRoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'adminRoleArn', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'X-Amz-Client-Token');
  has DisplayName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'displayName', required => 1);
  has StudioEncryptionConfiguration => (is => 'ro', isa => 'Paws::NimbleStudio::StudioEncryptionConfiguration', traits => ['NameInRequest'], request_name => 'studioEncryptionConfiguration');
  has StudioName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'studioName', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::NimbleStudio::Tags', traits => ['NameInRequest'], request_name => 'tags');
  has UserRoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'userRoleArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateStudio');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2020-08-01/studios');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NimbleStudio::CreateStudioResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NimbleStudio::CreateStudio - Arguments for method CreateStudio on L<Paws::NimbleStudio>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateStudio on the
L<AmazonNimbleStudio|Paws::NimbleStudio> service. Use the attributes of this class
as arguments to method CreateStudio.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateStudio.

=head1 SYNOPSIS

    my $nimble = Paws->service('NimbleStudio');
    my $CreateStudioResponse = $nimble->CreateStudio(
      AdminRoleArn                  => 'My__string',
      DisplayName                   => 'MyStudioDisplayName',
      StudioName                    => 'MyStudioName',
      UserRoleArn                   => 'My__string',
      ClientToken                   => 'MyClientToken',         # OPTIONAL
      StudioEncryptionConfiguration => {
        KeyType =>
          'AWS_OWNED_KEY',    # values: AWS_OWNED_KEY, CUSTOMER_MANAGED_KEY
        KeyArn => 'MyStudioEncryptionConfigurationKeyArn',    # min: 4; OPTIONAL
      },    # OPTIONAL
      Tags => { 'My__string' => 'My__string', },    # OPTIONAL
    );

    # Results:
    my $Studio = $CreateStudioResponse->Studio;

    # Returns a L<Paws::NimbleStudio::CreateStudioResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/nimble/CreateStudio>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AdminRoleArn => Str

The IAM role that Studio Admins will assume when logging in to the
Nimble Studio portal.



=head2 ClientToken => Str

To make an idempotent API request using one of these actions, specify a
client token in the request. You should not reuse the same client token
for other API requests. If you retry a request that completed
successfully using the same client token and the same parameters, the
retry succeeds without performing any further actions. If you retry a
successful request using the same client token, but one or more of the
parameters are different, the retry fails with a ValidationException
error.



=head2 B<REQUIRED> DisplayName => Str

A friendly name for the studio.



=head2 StudioEncryptionConfiguration => L<Paws::NimbleStudio::StudioEncryptionConfiguration>

The studio encryption configuration.



=head2 B<REQUIRED> StudioName => Str

The studio name that is used in the URL of the Nimble Studio portal
when accessed by Nimble Studio users.



=head2 Tags => L<Paws::NimbleStudio::Tags>

A collection of labels, in the form of key:value pairs, that apply to
this resource.



=head2 B<REQUIRED> UserRoleArn => Str

The IAM role that Studio Users will assume when logging in to the
Nimble Studio portal.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateStudio in L<Paws::NimbleStudio>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

