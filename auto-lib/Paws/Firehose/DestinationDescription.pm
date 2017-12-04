package Paws::Firehose::DestinationDescription;
  use Moose;
  has DestinationId => (is => 'ro', isa => 'Str', required => 1);
  has ElasticsearchDestinationDescription => (is => 'ro', isa => 'Paws::Firehose::ElasticsearchDestinationDescription');
  has ExtendedS3DestinationDescription => (is => 'ro', isa => 'Paws::Firehose::ExtendedS3DestinationDescription');
  has RedshiftDestinationDescription => (is => 'ro', isa => 'Paws::Firehose::RedshiftDestinationDescription');
  has S3DestinationDescription => (is => 'ro', isa => 'Paws::Firehose::S3DestinationDescription');
  has SplunkDestinationDescription => (is => 'ro', isa => 'Paws::Firehose::SplunkDestinationDescription');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Firehose::DestinationDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Firehose::DestinationDescription object:

  $service_obj->Method(Att1 => { DestinationId => $value, ..., SplunkDestinationDescription => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Firehose::DestinationDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->DestinationId

=head1 DESCRIPTION

Describes the destination for a delivery stream.

=head1 ATTRIBUTES


=head2 B<REQUIRED> DestinationId => Str

  The ID of the destination.


=head2 ElasticsearchDestinationDescription => L<Paws::Firehose::ElasticsearchDestinationDescription>

  The destination in Amazon ES.


=head2 ExtendedS3DestinationDescription => L<Paws::Firehose::ExtendedS3DestinationDescription>

  The destination in Amazon S3.


=head2 RedshiftDestinationDescription => L<Paws::Firehose::RedshiftDestinationDescription>

  The destination in Amazon Redshift.


=head2 S3DestinationDescription => L<Paws::Firehose::S3DestinationDescription>

  [Deprecated] The destination in Amazon S3.


=head2 SplunkDestinationDescription => L<Paws::Firehose::SplunkDestinationDescription>

  The destination in Splunk.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Firehose>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

