
package Paws::MobileHub::ExportProject;
  use Moose;
  has ProjectId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'projectId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ExportProject');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/exports/{projectId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MobileHub::ExportProjectResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MobileHub::ExportProject - Arguments for method ExportProject on Paws::MobileHub

=head1 DESCRIPTION

This class represents the parameters used for calling the method ExportProject on the 
AWS Mobile service. Use the attributes of this class
as arguments to method ExportProject.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ExportProject.

As an example:

  $service_obj->ExportProject(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ProjectId => Str

Unique project identifier.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ExportProject in L<Paws::MobileHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

