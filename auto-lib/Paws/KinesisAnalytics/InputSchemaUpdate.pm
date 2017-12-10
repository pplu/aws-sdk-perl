package Paws::KinesisAnalytics::InputSchemaUpdate;
  use Moose;
  has RecordColumnUpdates => (is => 'ro', isa => 'ArrayRef[Paws::KinesisAnalytics::RecordColumn]');
  has RecordEncodingUpdate => (is => 'ro', isa => 'Str');
  has RecordFormatUpdate => (is => 'ro', isa => 'Paws::KinesisAnalytics::RecordFormat');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalytics::InputSchemaUpdate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::KinesisAnalytics::InputSchemaUpdate object:

  $service_obj->Method(Att1 => { RecordColumnUpdates => $value, ..., RecordFormatUpdate => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::KinesisAnalytics::InputSchemaUpdate object:

  $result = $service_obj->Method(...);
  $result->Att1->RecordColumnUpdates

=head1 DESCRIPTION

Describes updates for the application's input schema.

=head1 ATTRIBUTES


=head2 RecordColumnUpdates => ArrayRef[L<Paws::KinesisAnalytics::RecordColumn>]

  A list of C<RecordColumn> objects. Each object describes the mapping of
the streaming source element to the corresponding column in the
in-application stream.


=head2 RecordEncodingUpdate => Str

  Specifies the encoding of the records in the streaming source. For
example, UTF-8.


=head2 RecordFormatUpdate => L<Paws::KinesisAnalytics::RecordFormat>

  Specifies the format of the records on the streaming source.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KinesisAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

