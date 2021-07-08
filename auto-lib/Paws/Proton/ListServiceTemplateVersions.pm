
package Paws::Proton::ListServiceTemplateVersions;
  use Moose;
  has MajorVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'majorVersion' );
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has TemplateName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'templateName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListServiceTemplateVersions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Proton::ListServiceTemplateVersionsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Proton::ListServiceTemplateVersions - Arguments for method ListServiceTemplateVersions on L<Paws::Proton>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListServiceTemplateVersions on the
L<AWS Proton|Paws::Proton> service. Use the attributes of this class
as arguments to method ListServiceTemplateVersions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListServiceTemplateVersions.

=head1 SYNOPSIS

    my $proton = Paws->service('Proton');
    my $ListServiceTemplateVersionsOutput =
      $proton->ListServiceTemplateVersions(
      TemplateName => 'MyResourceName',
      MajorVersion => 'MyTemplateVersionPart',    # OPTIONAL
      MaxResults   => 1,                          # OPTIONAL
      NextToken    => 'MyNextToken',              # OPTIONAL
      );

    # Results:
    my $NextToken        = $ListServiceTemplateVersionsOutput->NextToken;
    my $TemplateVersions = $ListServiceTemplateVersionsOutput->TemplateVersions;

    # Returns a L<Paws::Proton::ListServiceTemplateVersionsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/proton/ListServiceTemplateVersions>

=head1 ATTRIBUTES


=head2 MajorVersion => Str

To view a list of minor of versions under a major version of a service
template, include C<majorVersion>.

To view a list of major versions of a service template, I<exclude>
C<majorVersion>.



=head2 MaxResults => Int

The maximum number of major or minor versions of a service template to
list.



=head2 NextToken => Str

A token to indicate the location of the next major or minor version in
the array of major or minor versions of a service template, after the
list of major or minor versions that was previously requested.



=head2 B<REQUIRED> TemplateName => Str

The name of the service template.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListServiceTemplateVersions in L<Paws::Proton>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

