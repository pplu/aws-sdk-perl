
package Paws::Proton::CreateServiceTemplateVersion;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken' );
  has CompatibleEnvironmentTemplates => (is => 'ro', isa => 'ArrayRef[Paws::Proton::CompatibleEnvironmentTemplateInput]', traits => ['NameInRequest'], request_name => 'compatibleEnvironmentTemplates' , required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description' );
  has MajorVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'majorVersion' );
  has Source => (is => 'ro', isa => 'Paws::Proton::TemplateVersionSourceInput', traits => ['NameInRequest'], request_name => 'source' , required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Proton::Tag]', traits => ['NameInRequest'], request_name => 'tags' );
  has TemplateName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'templateName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateServiceTemplateVersion');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Proton::CreateServiceTemplateVersionOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Proton::CreateServiceTemplateVersion - Arguments for method CreateServiceTemplateVersion on L<Paws::Proton>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateServiceTemplateVersion on the
L<AWS Proton|Paws::Proton> service. Use the attributes of this class
as arguments to method CreateServiceTemplateVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateServiceTemplateVersion.

=head1 SYNOPSIS

    my $proton = Paws->service('Proton');
    my $CreateServiceTemplateVersionOutput =
      $proton->CreateServiceTemplateVersion(
      CompatibleEnvironmentTemplates => [
        {
          MajorVersion => 'MyTemplateVersionPart',    # min: 1, max: 20
          TemplateName => 'MyResourceName',           # min: 1, max: 100

        },
        ...
      ],
      Source => {
        S3 => {
          Bucket => 'MyS3Bucket',                     # min: 3, max: 63
          Key    => 'MyS3Key',                        # min: 1, max: 1024

        },    # OPTIONAL
      },
      TemplateName => 'MyResourceName',
      ClientToken  => 'MyClientToken',            # OPTIONAL
      Description  => 'MyDescription',            # OPTIONAL
      MajorVersion => 'MyTemplateVersionPart',    # OPTIONAL
      Tags         => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
      );

    # Results:
    my $ServiceTemplateVersion =
      $CreateServiceTemplateVersionOutput->ServiceTemplateVersion;

    # Returns a L<Paws::Proton::CreateServiceTemplateVersionOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/proton/CreateServiceTemplateVersion>

=head1 ATTRIBUTES


=head2 ClientToken => Str

When included, if two identicial requests are made with the same client
token, AWS Proton returns the service template version that the first
request created.



=head2 B<REQUIRED> CompatibleEnvironmentTemplates => ArrayRef[L<Paws::Proton::CompatibleEnvironmentTemplateInput>]

An array of compatible environment template objects for the new version
of a service template.



=head2 Description => Str

A description of the new version of a service template.



=head2 MajorVersion => Str

To create a new minor version of the service template, include a
C<majorVersion>.

To create a new major and minor version of the service template,
I<exclude> C<majorVersion>.



=head2 B<REQUIRED> Source => L<Paws::Proton::TemplateVersionSourceInput>

An object that includes the template bundle S3 bucket path and name for
the new version of a service template.



=head2 Tags => ArrayRef[L<Paws::Proton::Tag>]

Create tags for a new version of a service template.



=head2 B<REQUIRED> TemplateName => Str

The name of the service template.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateServiceTemplateVersion in L<Paws::Proton>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

