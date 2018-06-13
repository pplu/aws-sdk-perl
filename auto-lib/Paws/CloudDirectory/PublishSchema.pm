
package Paws::CloudDirectory::PublishSchema;
  use Moose;
  has DevelopmentSchemaArn => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-data-partition', required => 1);
  has MinorVersion => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Version => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PublishSchema');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/amazonclouddirectory/2017-01-11/schema/publish');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudDirectory::PublishSchemaResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::PublishSchema - Arguments for method PublishSchema on L<Paws::CloudDirectory>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PublishSchema on the
L<Amazon CloudDirectory|Paws::CloudDirectory> service. Use the attributes of this class
as arguments to method PublishSchema.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PublishSchema.

=head1 SYNOPSIS

    my $clouddirectory = Paws->service('CloudDirectory');
    my $PublishSchemaResponse = $clouddirectory->PublishSchema(
      DevelopmentSchemaArn => 'MyArn',
      Version              => 'MyVersion',
      MinorVersion         => 'MyVersion',       # OPTIONAL
      Name                 => 'MySchemaName',    # OPTIONAL
    );

    # Results:
    my $PublishedSchemaArn = $PublishSchemaResponse->PublishedSchemaArn;

    # Returns a L<Paws::CloudDirectory::PublishSchemaResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/clouddirectory/PublishSchema>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DevelopmentSchemaArn => Str

The Amazon Resource Name (ARN) that is associated with the development
schema. For more information, see arns.



=head2 MinorVersion => Str

The minor version under which the schema will be published. This
parameter is recommended. Schemas have both a major and minor version
associated with them.



=head2 Name => Str

The new name under which the schema will be published. If this is not
provided, the development schema is considered.



=head2 B<REQUIRED> Version => Str

The major version under which the schema will be published. Schemas
have both a major and minor version associated with them.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PublishSchema in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

