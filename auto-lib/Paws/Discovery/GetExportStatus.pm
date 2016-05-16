
package Paws::Discovery::GetExportStatus;
  use Moose;
  has ExportId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'exportId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetExportStatus');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Discovery::GetExportStatusResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Discovery::GetExportStatus - Arguments for method GetExportStatus on Paws::Discovery

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetExportStatus on the 
AWS Application Discovery Service service. Use the attributes of this class
as arguments to method GetExportStatus.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetExportStatus.

As an example:

  $service_obj->GetExportStatus(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ExportId => Str

A unique identifier which you can use to query the export status.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetExportStatus in L<Paws::Discovery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

