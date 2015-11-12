package Paws::Glacier::InventoryRetrievalJobDescription;
  use Moose;
  has EndDate => (is => 'ro', isa => 'Str');
  has Format => (is => 'ro', isa => 'Str');
  has Limit => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has StartDate => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glacier::InventoryRetrievalJobDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glacier::InventoryRetrievalJobDescription object:

  $service_obj->Method(Att1 => { EndDate => $value, ..., StartDate => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glacier::InventoryRetrievalJobDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->EndDate

=head1 DESCRIPTION

Describes the options for a range inventory retrieval job.

=head1 ATTRIBUTES


=head2 EndDate => Str

  The end of the date range in UTC for vault inventory retrieval that
includes archives created before this date. A string representation of
ISO 8601 date format, for example, 2013-03-20T17:03:43Z.


=head2 Format => Str

  The output format for the vault inventory list, which is set by the
B<InitiateJob> request when initiating a job to retrieve a vault
inventory. Valid values are "CSV" and "JSON".


=head2 Limit => Str

  Specifies the maximum number of inventory items returned per vault
inventory retrieval request. This limit is set when initiating the job
with the a B<InitiateJob> request.


=head2 Marker => Str

  An opaque string that represents where to continue pagination of the
vault inventory retrieval results. You use the marker in a new
B<InitiateJob> request to obtain additional inventory items. If there
are no more inventory items, this value is C<null>. For more
information, see Range Inventory Retrieval.


=head2 StartDate => Str

  The start of the date range in UTC for vault inventory retrieval that
includes archives created on or after this date. A string
representation of ISO 8601 date format, for example,
2013-03-20T17:03:43Z.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glacier>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

