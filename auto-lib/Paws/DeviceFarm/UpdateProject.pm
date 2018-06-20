
package Paws::DeviceFarm::UpdateProject;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn' , required => 1);
  has DefaultJobTimeoutMinutes => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'defaultJobTimeoutMinutes' );
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateProject');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DeviceFarm::UpdateProjectResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::UpdateProject - Arguments for method UpdateProject on L<Paws::DeviceFarm>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateProject on the
L<AWS Device Farm|Paws::DeviceFarm> service. Use the attributes of this class
as arguments to method UpdateProject.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateProject.

=head1 SYNOPSIS

    my $devicefarm = Paws->service('DeviceFarm');
    # To update a device pool
    # The following example updates the specified project with a new name.
    my $UpdateProjectResult = $devicefarm->UpdateProject(
      {
        'Arn' =>
'arn:aws:devicefarm:us-west-2:183774035805:project:8f75187d-101e-4625-accc-12345EXAMPLE',
        'Name' => 'NewName'
      }
    );

    # Results:
    my $project = $UpdateProjectResult->project;

    # Returns a L<Paws::DeviceFarm::UpdateProjectResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/devicefarm/UpdateProject>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN) of the project whose name you wish to
update.



=head2 DefaultJobTimeoutMinutes => Int

The number of minutes a test run in the project will execute before it
times out.



=head2 Name => Str

A string representing the new name of the project that you are
updating.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateProject in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

