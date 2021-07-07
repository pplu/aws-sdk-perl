
package Paws::Proton::UpdateEnvironmentTemplateVersion;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description' );
  has MajorVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'majorVersion' , required => 1);
  has MinorVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'minorVersion' , required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status' );
  has TemplateName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'templateName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateEnvironmentTemplateVersion');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Proton::UpdateEnvironmentTemplateVersionOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Proton::UpdateEnvironmentTemplateVersion - Arguments for method UpdateEnvironmentTemplateVersion on L<Paws::Proton>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateEnvironmentTemplateVersion on the
L<AWS Proton|Paws::Proton> service. Use the attributes of this class
as arguments to method UpdateEnvironmentTemplateVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateEnvironmentTemplateVersion.

=head1 SYNOPSIS

    my $proton = Paws->service('Proton');
    my $UpdateEnvironmentTemplateVersionOutput =
      $proton->UpdateEnvironmentTemplateVersion(
      MajorVersion => 'MyTemplateVersionPart',
      MinorVersion => 'MyTemplateVersionPart',
      TemplateName => 'MyResourceName',
      Description  => 'MyDescription',               # OPTIONAL
      Status       => 'REGISTRATION_IN_PROGRESS',    # OPTIONAL
      );

    # Results:
    my $EnvironmentTemplateVersion =
      $UpdateEnvironmentTemplateVersionOutput->EnvironmentTemplateVersion;

    # Returns a L<Paws::Proton::UpdateEnvironmentTemplateVersionOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/proton/UpdateEnvironmentTemplateVersion>

=head1 ATTRIBUTES


=head2 Description => Str

A description of environment template version to update.



=head2 B<REQUIRED> MajorVersion => Str

To update a major version of an environment template, include
C<majorVersion>.



=head2 B<REQUIRED> MinorVersion => Str

To update a minor version of an environment template, include
C<minorVersion>.



=head2 Status => Str

The status of the environment template minor version to update.

Valid values are: C<"REGISTRATION_IN_PROGRESS">, C<"REGISTRATION_FAILED">, C<"DRAFT">, C<"PUBLISHED">

=head2 B<REQUIRED> TemplateName => Str

The name of the environment template.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateEnvironmentTemplateVersion in L<Paws::Proton>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

