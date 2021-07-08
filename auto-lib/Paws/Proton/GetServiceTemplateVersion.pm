
package Paws::Proton::GetServiceTemplateVersion;
  use Moose;
  has MajorVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'majorVersion' , required => 1);
  has MinorVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'minorVersion' , required => 1);
  has TemplateName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'templateName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetServiceTemplateVersion');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Proton::GetServiceTemplateVersionOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Proton::GetServiceTemplateVersion - Arguments for method GetServiceTemplateVersion on L<Paws::Proton>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetServiceTemplateVersion on the
L<AWS Proton|Paws::Proton> service. Use the attributes of this class
as arguments to method GetServiceTemplateVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetServiceTemplateVersion.

=head1 SYNOPSIS

    my $proton = Paws->service('Proton');
    my $GetServiceTemplateVersionOutput = $proton->GetServiceTemplateVersion(
      MajorVersion => 'MyTemplateVersionPart',
      MinorVersion => 'MyTemplateVersionPart',
      TemplateName => 'MyResourceName',

    );

    # Results:
    my $ServiceTemplateVersion =
      $GetServiceTemplateVersionOutput->ServiceTemplateVersion;

    # Returns a L<Paws::Proton::GetServiceTemplateVersionOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/proton/GetServiceTemplateVersion>

=head1 ATTRIBUTES


=head2 B<REQUIRED> MajorVersion => Str

To view service template major version detail data, include
C<majorVersion>.



=head2 B<REQUIRED> MinorVersion => Str

To view service template minor version detail data, include
C<minorVersion>.



=head2 B<REQUIRED> TemplateName => Str

The name of the service template.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetServiceTemplateVersion in L<Paws::Proton>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

