
package Paws::Proton::CreateEnvironment;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description' );
  has EnvironmentAccountConnectionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'environmentAccountConnectionId' );
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' , required => 1);
  has ProtonServiceRoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'protonServiceRoleArn' );
  has Spec => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'spec' , required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Proton::Tag]', traits => ['NameInRequest'], request_name => 'tags' );
  has TemplateMajorVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'templateMajorVersion' , required => 1);
  has TemplateMinorVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'templateMinorVersion' );
  has TemplateName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'templateName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateEnvironment');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Proton::CreateEnvironmentOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Proton::CreateEnvironment - Arguments for method CreateEnvironment on L<Paws::Proton>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateEnvironment on the
L<AWS Proton|Paws::Proton> service. Use the attributes of this class
as arguments to method CreateEnvironment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateEnvironment.

=head1 SYNOPSIS

    my $proton = Paws->service('Proton');
    my $CreateEnvironmentOutput = $proton->CreateEnvironment(
      Name                           => 'MyResourceName',
      Spec                           => 'MySpecContents',
      TemplateMajorVersion           => 'MyTemplateVersionPart',
      TemplateName                   => 'MyResourceName',
      Description                    => 'MyDescription',           # OPTIONAL
      EnvironmentAccountConnectionId =>
        'MyEnvironmentAccountConnectionId',                        # OPTIONAL
      ProtonServiceRoleArn => 'MyArn',                             # OPTIONAL
      Tags                 => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
      TemplateMinorVersion => 'MyTemplateVersionPart',    # OPTIONAL
    );

    # Results:
    my $Environment = $CreateEnvironmentOutput->Environment;

    # Returns a L<Paws::Proton::CreateEnvironmentOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/proton/CreateEnvironment>

=head1 ATTRIBUTES


=head2 Description => Str

A description of the environment that's being created and deployed.



=head2 EnvironmentAccountConnectionId => Str

The ID of the environment account connection that you provide if you're
provisioning your environment infrastructure resources to an
environment account. You must include either the
C<environmentAccountConnectionId> or C<protonServiceRoleArn> parameter
and value. For more information, see Environment account connections in
the I<AWS Proton Administration guide>.



=head2 B<REQUIRED> Name => Str

The name of the environment.



=head2 ProtonServiceRoleArn => Str

The Amazon Resource Name (ARN) of the AWS Proton service role that
allows AWS Proton to make calls to other services on your behalf. You
must include either the C<environmentAccountConnectionId> or
C<protonServiceRoleArn> parameter and value.



=head2 B<REQUIRED> Spec => Str

A link to a YAML formatted spec file that provides inputs as defined in
the environment template bundle schema file. For more information, see
Environments
(https://docs.aws.amazon.com/proton/latest/adminguide/ag-managing-environments.html)
in the I<AWS Proton Administration Guide>.



=head2 Tags => ArrayRef[L<Paws::Proton::Tag>]

Create tags for your environment. For more information, see I<AWS
Proton resources and tagging> in the AWS Proton Administration Guide
(https://docs.aws.amazon.com/proton/latest/adminguide/resources.html)
or AWS Proton User Guide
(https://docs.aws.amazon.com/proton/latest/userguide/resources.html).



=head2 B<REQUIRED> TemplateMajorVersion => Str

The ID of the major version of the environment template.



=head2 TemplateMinorVersion => Str

The ID of the minor version of the environment template.



=head2 B<REQUIRED> TemplateName => Str

The name of the environment template. For more information, see
Environment Templates
(https://docs.aws.amazon.com/proton/latest/adminguide/ag-env-templates.html)
in the I<AWS Proton Administration Guide>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateEnvironment in L<Paws::Proton>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

