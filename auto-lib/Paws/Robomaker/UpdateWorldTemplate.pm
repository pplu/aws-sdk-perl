
package Paws::Robomaker::UpdateWorldTemplate;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has Template => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'template', required => 1);
  has TemplateBody => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'templateBody');
  has TemplateLocation => (is => 'ro', isa => 'Paws::Robomaker::TemplateLocation', traits => ['NameInRequest'], request_name => 'templateLocation');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateWorldTemplate');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/updateWorldTemplate');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Robomaker::UpdateWorldTemplateResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::UpdateWorldTemplate - Arguments for method UpdateWorldTemplate on L<Paws::Robomaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateWorldTemplate on the
L<AWS RoboMaker|Paws::Robomaker> service. Use the attributes of this class
as arguments to method UpdateWorldTemplate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateWorldTemplate.

=head1 SYNOPSIS

    my $robomaker = Paws->service('Robomaker');
    my $UpdateWorldTemplateResponse = $robomaker->UpdateWorldTemplate(
      Template         => 'MyArn',
      Name             => 'MyTemplateName',    # OPTIONAL
      TemplateBody     => 'MyJson',            # OPTIONAL
      TemplateLocation => {
        S3Bucket => 'MyS3Bucket',              # min: 3, max: 63
        S3Key    => 'MyS3Key',                 # min: 1, max: 1024

      },    # OPTIONAL
    );

    # Results:
    my $Arn           = $UpdateWorldTemplateResponse->Arn;
    my $CreatedAt     = $UpdateWorldTemplateResponse->CreatedAt;
    my $LastUpdatedAt = $UpdateWorldTemplateResponse->LastUpdatedAt;
    my $Name          = $UpdateWorldTemplateResponse->Name;

    # Returns a L<Paws::Robomaker::UpdateWorldTemplateResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/robomaker/UpdateWorldTemplate>

=head1 ATTRIBUTES


=head2 Name => Str

The name of the template.



=head2 B<REQUIRED> Template => Str

The Amazon Resource Name (arn) of the world template to update.



=head2 TemplateBody => Str

The world template body.



=head2 TemplateLocation => L<Paws::Robomaker::TemplateLocation>

The location of the world template.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateWorldTemplate in L<Paws::Robomaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

