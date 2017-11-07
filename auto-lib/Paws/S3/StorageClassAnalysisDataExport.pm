package Paws::S3::StorageClassAnalysisDataExport;
  use Moose;
  has Destination => (is => 'ro', isa => 'Paws::S3::AnalyticsExportDestination', required => 1);
  has OutputSchemaVersion => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::StorageClassAnalysisDataExport

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3::StorageClassAnalysisDataExport object:

  $service_obj->Method(Att1 => { Destination => $value, ..., OutputSchemaVersion => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3::StorageClassAnalysisDataExport object:

  $result = $service_obj->Method(...);
  $result->Att1->Destination

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 B<REQUIRED> Destination => L<Paws::S3::AnalyticsExportDestination>

  The place to store the data for an analysis.


=head2 B<REQUIRED> OutputSchemaVersion => Str

  The version of the output schema to use when exporting data. Must be
V_1.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

