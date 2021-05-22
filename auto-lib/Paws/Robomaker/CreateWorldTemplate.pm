
package Paws::Robomaker::CreateWorldTemplate;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientRequestToken');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has Tags => (is => 'ro', isa => 'Paws::Robomaker::TagMap', traits => ['NameInRequest'], request_name => 'tags');
  has TemplateBody => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'templateBody');
  has TemplateLocation => (is => 'ro', isa => 'Paws::Robomaker::TemplateLocation', traits => ['NameInRequest'], request_name => 'templateLocation');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateWorldTemplate');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/createWorldTemplate');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Robomaker::CreateWorldTemplateResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::CreateWorldTemplate - Arguments for method CreateWorldTemplate on L<Paws::Robomaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateWorldTemplate on the
L<AWS RoboMaker|Paws::Robomaker> service. Use the attributes of this class
as arguments to method CreateWorldTemplate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateWorldTemplate.

=head1 SYNOPSIS

    my $robomaker = Paws->service('Robomaker');
    my $CreateWorldTemplateResponse = $robomaker->CreateWorldTemplate(
      ClientRequestToken => 'MyClientRequestToken',    # OPTIONAL
      Name               => 'MyTemplateName',          # OPTIONAL
      Tags               => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      TemplateBody     => 'MyJson',    # OPTIONAL
      TemplateLocation => {
        S3Bucket => 'MyS3Bucket',      # min: 3, max: 63
        S3Key    => 'MyS3Key',         # min: 1, max: 1024

      },    # OPTIONAL
    );

    # Results:
    my $Arn                = $CreateWorldTemplateResponse->Arn;
    my $ClientRequestToken = $CreateWorldTemplateResponse->ClientRequestToken;
    my $CreatedAt          = $CreateWorldTemplateResponse->CreatedAt;
    my $Name               = $CreateWorldTemplateResponse->Name;
    my $Tags               = $CreateWorldTemplateResponse->Tags;

    # Returns a L<Paws::Robomaker::CreateWorldTemplateResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/robomaker/CreateWorldTemplate>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request.



=head2 Name => Str

The name of the world template.



=head2 Tags => L<Paws::Robomaker::TagMap>

A map that contains tag keys and tag values that are attached to the
world template.



=head2 TemplateBody => Str

The world template body.



=head2 TemplateLocation => L<Paws::Robomaker::TemplateLocation>

The location of the world template.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateWorldTemplate in L<Paws::Robomaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

