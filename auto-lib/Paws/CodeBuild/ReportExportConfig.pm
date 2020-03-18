package Paws::CodeBuild::ReportExportConfig;
  use Moose;
  has ExportConfigType => (is => 'ro', isa => 'Str', request_name => 'exportConfigType', traits => ['NameInRequest']);
  has S3Destination => (is => 'ro', isa => 'Paws::CodeBuild::S3ReportExportConfig', request_name => 's3Destination', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::ReportExportConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeBuild::ReportExportConfig object:

  $service_obj->Method(Att1 => { ExportConfigType => $value, ..., S3Destination => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeBuild::ReportExportConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->ExportConfigType

=head1 DESCRIPTION

Information about the location where the run of a report is exported.

=head1 ATTRIBUTES


=head2 ExportConfigType => Str

  The export configuration type. Valid values are:

=over

=item *

C<S3>: The report results are exported to an S3 bucket.

=item *

C<NO_EXPORT>: The report results are not exported.

=back



=head2 S3Destination => L<Paws::CodeBuild::S3ReportExportConfig>

  A C<S3ReportExportConfig> object that contains information about the S3
bucket where the run of a report is exported.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeBuild>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

