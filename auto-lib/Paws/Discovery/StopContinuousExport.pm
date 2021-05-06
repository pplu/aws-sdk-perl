
package Paws::Discovery::StopContinuousExport;
  use Moose;
  has ExportId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'exportId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StopContinuousExport');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Discovery::StopContinuousExportResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Discovery::StopContinuousExport - Arguments for method StopContinuousExport on L<Paws::Discovery>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StopContinuousExport on the
L<AWS Application Discovery Service|Paws::Discovery> service. Use the attributes of this class
as arguments to method StopContinuousExport.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StopContinuousExport.

=head1 SYNOPSIS

    my $discovery = Paws->service('Discovery');
    my $StopContinuousExportResponse = $discovery->StopContinuousExport(
      ExportId => 'MyConfigurationsExportId',

    );

    # Results:
    my $StartTime = $StopContinuousExportResponse->StartTime;
    my $StopTime  = $StopContinuousExportResponse->StopTime;

    # Returns a L<Paws::Discovery::StopContinuousExportResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/discovery/StopContinuousExport>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ExportId => Str

The unique ID assigned to this export.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StopContinuousExport in L<Paws::Discovery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

