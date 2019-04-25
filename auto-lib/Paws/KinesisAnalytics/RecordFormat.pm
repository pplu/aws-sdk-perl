package Paws::KinesisAnalytics::RecordFormat;
  use Moose;
  has MappingParameters => (is => 'ro', isa => 'Paws::KinesisAnalytics::MappingParameters');
  has RecordFormatType => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalytics::RecordFormat

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::KinesisAnalytics::RecordFormat object:

  $service_obj->Method(Att1 => { MappingParameters => $value, ..., RecordFormatType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::KinesisAnalytics::RecordFormat object:

  $result = $service_obj->Method(...);
  $result->Att1->MappingParameters

=head1 DESCRIPTION

Describes the record format and relevant mapping information that
should be applied to schematize the records on the stream.

=head1 ATTRIBUTES


=head2 MappingParameters => L<Paws::KinesisAnalytics::MappingParameters>

  When configuring application input at the time of creating or updating
an application, provides additional mapping information specific to the
record format (such as JSON, CSV, or record fields delimited by some
delimiter) on the streaming source.


=head2 B<REQUIRED> RecordFormatType => Str

  The type of record format.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KinesisAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

