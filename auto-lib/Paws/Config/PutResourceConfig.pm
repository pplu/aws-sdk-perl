
package Paws::Config::PutResourceConfig;
  use Moose;
  has Configuration => (is => 'ro', isa => 'Str', required => 1);
  has ResourceId => (is => 'ro', isa => 'Str', required => 1);
  has ResourceName => (is => 'ro', isa => 'Str');
  has ResourceType => (is => 'ro', isa => 'Str', required => 1);
  has SchemaVersionId => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::Config::Tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutResourceConfig');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::PutResourceConfig - Arguments for method PutResourceConfig on L<Paws::Config>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutResourceConfig on the
L<AWS Config|Paws::Config> service. Use the attributes of this class
as arguments to method PutResourceConfig.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutResourceConfig.

=head1 SYNOPSIS

    my $config = Paws->service('Config');
    $config->PutResourceConfig(
      Configuration   => 'MyConfiguration',
      ResourceId      => 'MyResourceId',
      ResourceType    => 'MyResourceTypeString',
      SchemaVersionId => 'MySchemaVersionId',
      ResourceName    => 'MyResourceName',              # OPTIONAL
      Tags            => { 'MyName' => 'MyValue', },    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/config/PutResourceConfig>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Configuration => Str

The configuration object of the resource in valid JSON format. It must
match the schema registered with AWS CloudFormation.

The configuration JSON must not exceed 64 KB.



=head2 B<REQUIRED> ResourceId => Str

Unique identifier of the resource.



=head2 ResourceName => Str

Name of the resource.



=head2 B<REQUIRED> ResourceType => Str

The type of the resource. The custom resource type must be registered
with AWS CloudFormation.

You cannot use the organization names E<ldquo>awsE<rdquo>,
E<ldquo>amznE<rdquo>, E<ldquo>amazonE<rdquo>, E<ldquo>alexaE<rdquo>,
E<ldquo>customE<rdquo> with custom resource types. It is the first part
of the ResourceType up to the first ::.



=head2 B<REQUIRED> SchemaVersionId => Str

Version of the schema registered for the ResourceType in AWS
CloudFormation.



=head2 Tags => L<Paws::Config::Tags>

Tags associated with the resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutResourceConfig in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

