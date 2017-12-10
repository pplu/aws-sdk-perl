package Paws::KinesisAnalytics::SourceSchema;
  use Moose;
  has RecordColumns => (is => 'ro', isa => 'ArrayRef[Paws::KinesisAnalytics::RecordColumn]', required => 1);
  has RecordEncoding => (is => 'ro', isa => 'Str');
  has RecordFormat => (is => 'ro', isa => 'Paws::KinesisAnalytics::RecordFormat', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalytics::SourceSchema

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::KinesisAnalytics::SourceSchema object:

  $service_obj->Method(Att1 => { RecordColumns => $value, ..., RecordFormat => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::KinesisAnalytics::SourceSchema object:

  $result = $service_obj->Method(...);
  $result->Att1->RecordColumns

=head1 DESCRIPTION

Describes the format of the data in the streaming source, and how each
data element maps to corresponding columns created in the
in-application stream.

=head1 ATTRIBUTES


=head2 B<REQUIRED> RecordColumns => ArrayRef[L<Paws::KinesisAnalytics::RecordColumn>]

  A list of C<RecordColumn> objects.


=head2 RecordEncoding => Str

  Specifies the encoding of the records in the streaming source. For
example, UTF-8.


=head2 B<REQUIRED> RecordFormat => L<Paws::KinesisAnalytics::RecordFormat>

  Specifies the format of the records on the streaming source.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KinesisAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

