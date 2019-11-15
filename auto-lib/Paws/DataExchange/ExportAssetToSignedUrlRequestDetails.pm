package Paws::DataExchange::ExportAssetToSignedUrlRequestDetails;
  use Moose;
  has AssetId => (is => 'ro', isa => 'Str', required => 1);
  has DataSetId => (is => 'ro', isa => 'Str', required => 1);
  has RevisionId => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataExchange::ExportAssetToSignedUrlRequestDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DataExchange::ExportAssetToSignedUrlRequestDetails object:

  $service_obj->Method(Att1 => { AssetId => $value, ..., RevisionId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DataExchange::ExportAssetToSignedUrlRequestDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->AssetId

=head1 DESCRIPTION

Details of the operation to be performed by the job.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssetId => Str

  The unique identifier for the asset that is exported to a signed URL.


=head2 B<REQUIRED> DataSetId => Str

  The unique identifier for the data set associated with this export job.


=head2 B<REQUIRED> RevisionId => Str

  The unique identifier for the revision associated with this export
request.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DataExchange>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

