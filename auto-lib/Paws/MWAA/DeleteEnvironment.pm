
package Paws::MWAA::DeleteEnvironment;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Name', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteEnvironment');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/environments/{Name}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MWAA::DeleteEnvironmentOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MWAA::DeleteEnvironment - Arguments for method DeleteEnvironment on L<Paws::MWAA>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteEnvironment on the
L<AmazonMWAA|Paws::MWAA> service. Use the attributes of this class
as arguments to method DeleteEnvironment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteEnvironment.

=head1 SYNOPSIS

    my $airflow = Paws->service('MWAA');
    my $DeleteEnvironmentOutput = $airflow->DeleteEnvironment(
      Name => 'MyEnvironmentName',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/airflow/DeleteEnvironment>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name of the environment to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteEnvironment in L<Paws::MWAA>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

