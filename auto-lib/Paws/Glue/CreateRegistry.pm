
package Paws::Glue::CreateRegistry;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has RegistryName => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::Glue::TagsMap');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateRegistry');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::CreateRegistryResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::CreateRegistry - Arguments for method CreateRegistry on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateRegistry on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method CreateRegistry.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateRegistry.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $CreateRegistryResponse = $glue->CreateRegistry(
      RegistryName => 'MySchemaRegistryNameString',
      Description  => 'MyDescriptionString',          # OPTIONAL
      Tags         => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $Description  = $CreateRegistryResponse->Description;
    my $RegistryArn  = $CreateRegistryResponse->RegistryArn;
    my $RegistryName = $CreateRegistryResponse->RegistryName;
    my $Tags         = $CreateRegistryResponse->Tags;

    # Returns a L<Paws::Glue::CreateRegistryResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/CreateRegistry>

=head1 ATTRIBUTES


=head2 Description => Str

A description of the registry. If description is not provided, there
will not be any default value for this.



=head2 B<REQUIRED> RegistryName => Str

Name of the registry to be created of max length of 255, and may only
contain letters, numbers, hyphen, underscore, dollar sign, or hash
mark. No whitespace.



=head2 Tags => L<Paws::Glue::TagsMap>

AWS tags that contain a key value pair and may be searched by console,
command line, or API.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateRegistry in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

