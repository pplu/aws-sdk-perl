
package Paws::Proton::UpdateServicePipeline;
  use Moose;
  has DeploymentType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'deploymentType' , required => 1);
  has ServiceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'serviceName' , required => 1);
  has Spec => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'spec' , required => 1);
  has TemplateMajorVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'templateMajorVersion' );
  has TemplateMinorVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'templateMinorVersion' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateServicePipeline');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Proton::UpdateServicePipelineOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Proton::UpdateServicePipeline - Arguments for method UpdateServicePipeline on L<Paws::Proton>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateServicePipeline on the
L<AWS Proton|Paws::Proton> service. Use the attributes of this class
as arguments to method UpdateServicePipeline.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateServicePipeline.

=head1 SYNOPSIS

    my $proton = Paws->service('Proton');
    my $UpdateServicePipelineOutput = $proton->UpdateServicePipeline(
      DeploymentType       => 'NONE',
      ServiceName          => 'MyResourceName',
      Spec                 => 'MySpecContents',
      TemplateMajorVersion => 'MyTemplateVersionPart',    # OPTIONAL
      TemplateMinorVersion => 'MyTemplateVersionPart',    # OPTIONAL
    );

    # Results:
    my $Pipeline = $UpdateServicePipelineOutput->Pipeline;

    # Returns a L<Paws::Proton::UpdateServicePipelineOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/proton/UpdateServicePipeline>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DeploymentType => Str

The deployment type.

There are four modes for updating a service pipeline as described in
the following. The C<deploymentType> field defines the mode.

=over

=item C<NONE>

In this mode, a deployment I<doesn't> occur. Only the requested
metadata parameters are updated.

=item C<CURRENT_VERSION>

In this mode, the service pipeline is deployed and updated with the new
spec that you provide. Only requested parameters are updated.
I<DonE<rsquo>t> include minor or major version parameters when you use
this C<deployment-type>.

=item C<MINOR_VERSION>

In this mode, the service pipeline is deployed and updated with the
published, recommended (latest) minor version of the current major
version in use, by default. You can also specify a different minor
version of the current major version in use.

=item C<MAJOR_VERSION>

In this mode, the service pipeline is deployed and updated with the
published, recommended (latest) major and minor version of the current
template, by default. You can also specify a different major version
that is higher than the major version in use and a minor version
(optional).

=back


Valid values are: C<"NONE">, C<"CURRENT_VERSION">, C<"MINOR_VERSION">, C<"MAJOR_VERSION">

=head2 B<REQUIRED> ServiceName => Str

The name of the service to that the pipeline is associated with.



=head2 B<REQUIRED> Spec => Str

The spec for the service pipeline to update.



=head2 TemplateMajorVersion => Str

The major version of the service template that was used to create the
service that the pipeline is associated with.



=head2 TemplateMinorVersion => Str

The minor version of the service template that was used to create the
service that the pipeline is associated with.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateServicePipeline in L<Paws::Proton>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

