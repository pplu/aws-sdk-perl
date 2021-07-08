
package Paws::Proton::CreateService;
  use Moose;
  has BranchName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'branchName' );
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description' );
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' , required => 1);
  has RepositoryConnectionArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'repositoryConnectionArn' );
  has RepositoryId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'repositoryId' );
  has Spec => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'spec' , required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Proton::Tag]', traits => ['NameInRequest'], request_name => 'tags' );
  has TemplateMajorVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'templateMajorVersion' , required => 1);
  has TemplateMinorVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'templateMinorVersion' );
  has TemplateName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'templateName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateService');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Proton::CreateServiceOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Proton::CreateService - Arguments for method CreateService on L<Paws::Proton>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateService on the
L<AWS Proton|Paws::Proton> service. Use the attributes of this class
as arguments to method CreateService.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateService.

=head1 SYNOPSIS

    my $proton = Paws->service('Proton');
    my $CreateServiceOutput = $proton->CreateService(
      Name                    => 'MyResourceName',
      Spec                    => 'MySpecContents',
      TemplateMajorVersion    => 'MyTemplateVersionPart',
      TemplateName            => 'MyResourceName',
      BranchName              => 'MyGitBranchName',         # OPTIONAL
      Description             => 'MyDescription',           # OPTIONAL
      RepositoryConnectionArn => 'MyArn',                   # OPTIONAL
      RepositoryId            => 'MyRepositoryId',          # OPTIONAL
      Tags                    => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
      TemplateMinorVersion => 'MyTemplateVersionPart',    # OPTIONAL
    );

    # Results:
    my $Service = $CreateServiceOutput->Service;

    # Returns a L<Paws::Proton::CreateServiceOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/proton/CreateService>

=head1 ATTRIBUTES


=head2 BranchName => Str

The name of the code repository branch that holds the code that's
deployed in AWS Proton. I<Don't> include this parameter if your service
template I<doesn't> include a service pipeline.



=head2 Description => Str

A description of the AWS Proton service.



=head2 B<REQUIRED> Name => Str

The service name.



=head2 RepositoryConnectionArn => Str

The ARN of the repository connection. For more information, see Set up
repository connection
(https://docs.aws.amazon.com/proton/latest/adminguide/setting-up-for-service.html#settingSS-up-vcontrol)
in the I<AWS Proton Administration Guide> and Getting started
(https://docs.aws.amazon.com/proton/latest/userguide/ug-getting-started.html#getting-started-step1)
in the I<AWS Proton User Guide>. I<Don't> include this parameter if
your service template I<doesn't> include a service pipeline.



=head2 RepositoryId => Str

The ID of the code repository. I<Don't> include this parameter if your
service template I<doesn't> include a service pipeline.



=head2 B<REQUIRED> Spec => Str

A link to a spec file that provides inputs as defined in the service
template bundle schema file. The spec file is in YAML format.
DonE<rsquo>t include pipeline inputs in the spec if your service
template doesnE<rsquo>t include a service pipeline. For more
information, see Create a service
(https://docs.aws.amazon.com/proton/latest/adminguide/ag-create-svc.html.html)
in the I<AWS Proton Administration Guide> and Create a service
(https://docs.aws.amazon.com/proton/latest/userguide/ug-svc-create.html)
in the I<AWS Proton User Guide>.



=head2 Tags => ArrayRef[L<Paws::Proton::Tag>]

Create tags for your service. For more information, see I<AWS Proton
resources and tagging> in the AWS Proton Administration Guide
(https://docs.aws.amazon.com/proton/latest/adminguide/resources.html)
or AWS Proton User Guide
(https://docs.aws.amazon.com/proton/latest/userguide/resources.html).



=head2 B<REQUIRED> TemplateMajorVersion => Str

The ID of the major version of the service template that was used to
create the service.



=head2 TemplateMinorVersion => Str

The ID of the minor version of the service template that was used to
create the service.



=head2 B<REQUIRED> TemplateName => Str

The name of the service template that's used to create the service.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateService in L<Paws::Proton>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

