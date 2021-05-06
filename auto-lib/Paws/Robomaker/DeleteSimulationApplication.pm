
package Paws::Robomaker::DeleteSimulationApplication;
  use Moose;
  has Application => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'application', required => 1);
  has ApplicationVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'applicationVersion');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteSimulationApplication');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/deleteSimulationApplication');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Robomaker::DeleteSimulationApplicationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::DeleteSimulationApplication - Arguments for method DeleteSimulationApplication on L<Paws::Robomaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteSimulationApplication on the
L<AWS RoboMaker|Paws::Robomaker> service. Use the attributes of this class
as arguments to method DeleteSimulationApplication.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteSimulationApplication.

=head1 SYNOPSIS

    my $robomaker = Paws->service('Robomaker');
    my $DeleteSimulationApplicationResponse =
      $robomaker->DeleteSimulationApplication(
      Application        => 'MyArn',
      ApplicationVersion => 'MyVersion',    # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/robomaker/DeleteSimulationApplication>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Application => Str

The application information for the simulation application to delete.



=head2 ApplicationVersion => Str

The version of the simulation application to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteSimulationApplication in L<Paws::Robomaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

