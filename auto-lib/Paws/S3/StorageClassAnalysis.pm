package Paws::S3::StorageClassAnalysis;
  use Moo;
  use Types::Standard qw//;
  use Paws::S3::Types qw/S3_StorageClassAnalysisDataExport/;
  has DataExport => (is => 'ro', isa => S3_StorageClassAnalysisDataExport);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DataExport' => {
                                 'class' => 'Paws::S3::StorageClassAnalysisDataExport',
                                 'type' => 'S3_StorageClassAnalysisDataExport'
                               }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::StorageClassAnalysis

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3::StorageClassAnalysis object:

  $service_obj->Method(Att1 => { DataExport => $value, ..., DataExport => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3::StorageClassAnalysis object:

  $result = $service_obj->Method(...);
  $result->Att1->DataExport

=head1 DESCRIPTION

Specifies data related to access patterns to be collected and made
available to analyze the tradeoffs between different storage classes
for an Amazon S3 bucket.

=head1 ATTRIBUTES


=head2 DataExport => S3_StorageClassAnalysisDataExport

  Specifies how data related to the storage class analysis for an Amazon
S3 bucket should be exported.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

