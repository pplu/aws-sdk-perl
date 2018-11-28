package Paws::KinesisAnalytics::DestinationSchema;
  use Moose;
  has RecordFormatType => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalytics::DestinationSchema

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::KinesisAnalytics::DestinationSchema object:

  $service_obj->Method(Att1 => { RecordFormatType => $value, ..., RecordFormatType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::KinesisAnalytics::DestinationSchema object:

  $result = $service_obj->Method(...);
  $result->Att1->RecordFormatType

=head1 DESCRIPTION

Describes the data format when records are written to the destination.
For more information, see Configuring Application Output
(http://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-output.html).

=head1 ATTRIBUTES


=head2 B<REQUIRED> RecordFormatType => Str

  Specifies the format of the records on the output stream.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KinesisAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

