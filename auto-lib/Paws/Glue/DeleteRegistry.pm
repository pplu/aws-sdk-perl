
package Paws::Glue::DeleteRegistry;
  use Moose;
  has RegistryId => (is => 'ro', isa => 'Paws::Glue::RegistryId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteRegistry');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::DeleteRegistryResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::DeleteRegistry - Arguments for method DeleteRegistry on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteRegistry on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method DeleteRegistry.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteRegistry.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $DeleteRegistryResponse = $glue->DeleteRegistry(
      RegistryId => {
        RegistryArn => 'MyGlueResourceArn',    # min: 1, max: 10240; OPTIONAL
        RegistryName =>
          'MySchemaRegistryNameString',        # min: 1, max: 255; OPTIONAL
      },

    );

    # Results:
    my $RegistryArn  = $DeleteRegistryResponse->RegistryArn;
    my $RegistryName = $DeleteRegistryResponse->RegistryName;
    my $Status       = $DeleteRegistryResponse->Status;

    # Returns a L<Paws::Glue::DeleteRegistryResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/DeleteRegistry>

=head1 ATTRIBUTES


=head2 B<REQUIRED> RegistryId => L<Paws::Glue::RegistryId>

This is a wrapper structure that may contain the registry name and
Amazon Resource Name (ARN).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteRegistry in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

