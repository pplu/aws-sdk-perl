
package Paws::DeviceFarm::GetTestGridProject;
  use Moose;
  has ProjectArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'projectArn' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetTestGridProject');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DeviceFarm::GetTestGridProjectResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::GetTestGridProject - Arguments for method GetTestGridProject on L<Paws::DeviceFarm>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetTestGridProject on the
L<AWS Device Farm|Paws::DeviceFarm> service. Use the attributes of this class
as arguments to method GetTestGridProject.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetTestGridProject.

=head1 SYNOPSIS

    my $devicefarm = Paws->service('DeviceFarm');
    my $GetTestGridProjectResult = $devicefarm->GetTestGridProject(
      ProjectArn => 'MyDeviceFarmArn',

    );

    # Results:
    my $TestGridProject = $GetTestGridProjectResult->TestGridProject;

    # Returns a L<Paws::DeviceFarm::GetTestGridProjectResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/devicefarm/GetTestGridProject>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ProjectArn => Str

The ARN of the Selenium testing project, from either
CreateTestGridProject or ListTestGridProjects.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetTestGridProject in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

