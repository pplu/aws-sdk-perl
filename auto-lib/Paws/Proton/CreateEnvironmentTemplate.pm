
package Paws::Proton::CreateEnvironmentTemplate;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description' );
  has DisplayName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'displayName' );
  has EncryptionKey => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'encryptionKey' );
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' , required => 1);
  has Provisioning => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'provisioning' );
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Proton::Tag]', traits => ['NameInRequest'], request_name => 'tags' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateEnvironmentTemplate');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Proton::CreateEnvironmentTemplateOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Proton::CreateEnvironmentTemplate - Arguments for method CreateEnvironmentTemplate on L<Paws::Proton>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateEnvironmentTemplate on the
L<AWS Proton|Paws::Proton> service. Use the attributes of this class
as arguments to method CreateEnvironmentTemplate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateEnvironmentTemplate.

=head1 SYNOPSIS

    my $proton = Paws->service('Proton');
    my $CreateEnvironmentTemplateOutput = $proton->CreateEnvironmentTemplate(
      Name          => 'MyResourceName',
      Description   => 'MyDescription',       # OPTIONAL
      DisplayName   => 'MyDisplayName',       # OPTIONAL
      EncryptionKey => 'MyArn',               # OPTIONAL
      Provisioning  => 'CUSTOMER_MANAGED',    # OPTIONAL
      Tags          => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $EnvironmentTemplate =
      $CreateEnvironmentTemplateOutput->EnvironmentTemplate;

    # Returns a L<Paws::Proton::CreateEnvironmentTemplateOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/proton/CreateEnvironmentTemplate>

=head1 ATTRIBUTES


=head2 Description => Str

A description of the environment template.



=head2 DisplayName => Str

The environment template name as displayed in the developer interface.



=head2 EncryptionKey => Str

A customer provided encryption key that AWS Proton uses to encrypt
data.



=head2 B<REQUIRED> Name => Str

The name of the environment template.



=head2 Provisioning => Str

When included, indicates that the environment template is for customer
provisioned and managed infrastructure.

Valid values are: C<"CUSTOMER_MANAGED">

=head2 Tags => ArrayRef[L<Paws::Proton::Tag>]

Create tags for your environment template. For more information, see
I<AWS Proton resources and tagging> in the AWS Proton Administration
Guide
(https://docs.aws.amazon.com/proton/latest/adminguide/resources.html)
or AWS Proton User Guide
(https://docs.aws.amazon.com/proton/latest/userguide/resources.html).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateEnvironmentTemplate in L<Paws::Proton>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

