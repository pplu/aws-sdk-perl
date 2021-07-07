
package Paws::ImageBuilder::CreateComponent;
  use Moose;
  has ChangeDescription => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'changeDescription');
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken', required => 1);
  has Data => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'data');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has KmsKeyId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'kmsKeyId');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has Platform => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'platform', required => 1);
  has SemanticVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'semanticVersion', required => 1);
  has SupportedOsVersions => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'supportedOsVersions');
  has Tags => (is => 'ro', isa => 'Paws::ImageBuilder::TagMap', traits => ['NameInRequest'], request_name => 'tags');
  has Uri => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'uri');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateComponent');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/CreateComponent');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ImageBuilder::CreateComponentResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::CreateComponent - Arguments for method CreateComponent on L<Paws::ImageBuilder>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateComponent on the
L<EC2 Image Builder|Paws::ImageBuilder> service. Use the attributes of this class
as arguments to method CreateComponent.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateComponent.

=head1 SYNOPSIS

    my $imagebuilder = Paws->service('ImageBuilder');
    my $CreateComponentResponse = $imagebuilder->CreateComponent(
      ClientToken         => 'MyClientToken',
      Name                => 'MyResourceName',
      Platform            => 'Windows',
      SemanticVersion     => 'MyVersionNumber',
      ChangeDescription   => 'MyNonEmptyString',         # OPTIONAL
      Data                => 'MyInlineComponentData',    # OPTIONAL
      Description         => 'MyNonEmptyString',         # OPTIONAL
      KmsKeyId            => 'MyNonEmptyString',         # OPTIONAL
      SupportedOsVersions => [
        'MyOsVersion', ...                               # min: 1
      ],    # OPTIONAL
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      Uri => 'MyUri',    # OPTIONAL
    );

    # Results:
    my $ClientToken = $CreateComponentResponse->ClientToken;
    my $ComponentBuildVersionArn =
      $CreateComponentResponse->ComponentBuildVersionArn;
    my $RequestId = $CreateComponentResponse->RequestId;

    # Returns a L<Paws::ImageBuilder::CreateComponentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/imagebuilder/CreateComponent>

=head1 ATTRIBUTES


=head2 ChangeDescription => Str

The change description of the component. Describes what change has been
made in this version, or what makes this version different from other
versions of this component.



=head2 B<REQUIRED> ClientToken => Str

The idempotency token of the component.



=head2 Data => Str

The data of the component. Used to specify the data inline. Either
C<data> or C<uri> can be used to specify the data within the component.



=head2 Description => Str

The description of the component. Describes the contents of the
component.



=head2 KmsKeyId => Str

The ID of the KMS key that should be used to encrypt this component.



=head2 B<REQUIRED> Name => Str

The name of the component.



=head2 B<REQUIRED> Platform => Str

The platform of the component.

Valid values are: C<"Windows">, C<"Linux">

=head2 B<REQUIRED> SemanticVersion => Str

The semantic version of the component. This version follows the
semantic version syntax. For example, major.minor.patch. This could be
versioned like software (2.0.1) or like a date (2019.12.01).



=head2 SupportedOsVersions => ArrayRef[Str|Undef]

The operating system (OS) version supported by the component. If the OS
information is available, a prefix match is performed against the
parent image OS version during image recipe creation.



=head2 Tags => L<Paws::ImageBuilder::TagMap>

The tags of the component.



=head2 Uri => Str

The uri of the component. Must be an S3 URL and the requester must have
permission to access the S3 bucket. If you use S3, you can specify
component content up to your service quota. Either C<data> or C<uri>
can be used to specify the data within the component.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateComponent in L<Paws::ImageBuilder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

