
package Paws::DeviceFarm::DeleteTestGridProject;
  use Moose;
  has ProjectArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'projectArn' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteTestGridProject');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DeviceFarm::DeleteTestGridProjectResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::DeleteTestGridProject - Arguments for method DeleteTestGridProject on L<Paws::DeviceFarm>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteTestGridProject on the
L<AWS Device Farm|Paws::DeviceFarm> service. Use the attributes of this class
as arguments to method DeleteTestGridProject.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteTestGridProject.

=head1 SYNOPSIS

    my $devicefarm = Paws->service('DeviceFarm');
    my $DeleteTestGridProjectResult = $devicefarm->DeleteTestGridProject(
      ProjectArn => 'MyDeviceFarmArn',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/devicefarm/DeleteTestGridProject>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ProjectArn => Str

The ARN of the project to delete, from CreateTestGridProject or
ListTestGridProjects.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteTestGridProject in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

