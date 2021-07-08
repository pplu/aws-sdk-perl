
package Paws::Robomaker::GetWorldTemplateBody;
  use Moose;
  has GenerationJob => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'generationJob');
  has Template => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'template');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetWorldTemplateBody');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/getWorldTemplateBody');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Robomaker::GetWorldTemplateBodyResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::GetWorldTemplateBody - Arguments for method GetWorldTemplateBody on L<Paws::Robomaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetWorldTemplateBody on the
L<AWS RoboMaker|Paws::Robomaker> service. Use the attributes of this class
as arguments to method GetWorldTemplateBody.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetWorldTemplateBody.

=head1 SYNOPSIS

    my $robomaker = Paws->service('Robomaker');
    my $GetWorldTemplateBodyResponse = $robomaker->GetWorldTemplateBody(
      GenerationJob => 'MyArn',    # OPTIONAL
      Template      => 'MyArn',    # OPTIONAL
    );

    # Results:
    my $TemplateBody = $GetWorldTemplateBodyResponse->TemplateBody;

    # Returns a L<Paws::Robomaker::GetWorldTemplateBodyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/robomaker/GetWorldTemplateBody>

=head1 ATTRIBUTES


=head2 GenerationJob => Str

The Amazon Resource Name (arn) of the world generator job.



=head2 Template => Str

The Amazon Resource Name (arn) of the world template.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetWorldTemplateBody in L<Paws::Robomaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

