package Paws::Quicksight::Ingestion;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', required => 1);
  has CreatedTime => (is => 'ro', isa => 'Str', required => 1);
  has ErrorInfo => (is => 'ro', isa => 'Paws::Quicksight::ErrorInfo');
  has IngestionId => (is => 'ro', isa => 'Str');
  has IngestionSizeInBytes => (is => 'ro', isa => 'Int');
  has IngestionStatus => (is => 'ro', isa => 'Str', required => 1);
  has IngestionTimeInSeconds => (is => 'ro', isa => 'Int');
  has QueueInfo => (is => 'ro', isa => 'Paws::Quicksight::QueueInfo');
  has RequestSource => (is => 'ro', isa => 'Str');
  has RequestType => (is => 'ro', isa => 'Str');
  has RowInfo => (is => 'ro', isa => 'Paws::Quicksight::RowInfo');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::Ingestion

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Quicksight::Ingestion object:

  $service_obj->Method(Att1 => { Arn => $value, ..., RowInfo => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Quicksight::Ingestion object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Information about the SPICE ingestion for a dataset.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

  The Amazon Resource Name (ARN) of the resource.


=head2 B<REQUIRED> CreatedTime => Str

  The time that this ingestion started.


=head2 ErrorInfo => L<Paws::Quicksight::ErrorInfo>

  Error information for this ingestion.


=head2 IngestionId => Str

  Ingestion ID.


=head2 IngestionSizeInBytes => Int

  The size of the data ingested, in bytes.


=head2 B<REQUIRED> IngestionStatus => Str

  Ingestion status.


=head2 IngestionTimeInSeconds => Int

  The time that this ingestion took, measured in seconds.


=head2 QueueInfo => L<Paws::Quicksight::QueueInfo>

  


=head2 RequestSource => Str

  Event source for this ingestion.


=head2 RequestType => Str

  Type of this ingestion.


=head2 RowInfo => L<Paws::Quicksight::RowInfo>

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Quicksight>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

