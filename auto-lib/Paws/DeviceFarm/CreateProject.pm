
package Paws::DeviceFarm::CreateProject;
  use Moose;
  has DefaultJobTimeoutMinutes => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'defaultJobTimeoutMinutes' );
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateProject');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DeviceFarm::CreateProjectResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::CreateProject - Arguments for method CreateProject on L<Paws::DeviceFarm>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateProject on the
L<AWS Device Farm|Paws::DeviceFarm> service. Use the attributes of this class
as arguments to method CreateProject.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateProject.

=head1 SYNOPSIS

    my $devicefarm = Paws->service('DeviceFarm');
    # To create a new project
    # The following example creates a new project named MyProject.
    my $CreateProjectResult = $devicefarm->CreateProject(
      {
        'Name' => 'MyProject'
      }
    );

    # Results:
    my $project = $CreateProjectResult->project;

    # Returns a L<Paws::DeviceFarm::CreateProjectResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/devicefarm/CreateProject>

=head1 ATTRIBUTES


=head2 DefaultJobTimeoutMinutes => Int

Sets the execution timeout value (in minutes) for a project. All test
runs in this project will use the specified execution timeout value
unless overridden when scheduling a run.



=head2 B<REQUIRED> Name => Str

The project's name.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateProject in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

