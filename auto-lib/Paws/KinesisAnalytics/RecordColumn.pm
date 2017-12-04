package Paws::KinesisAnalytics::RecordColumn;
  use Moose;
  has Mapping => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has SqlType => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalytics::RecordColumn

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::KinesisAnalytics::RecordColumn object:

  $service_obj->Method(Att1 => { Mapping => $value, ..., SqlType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::KinesisAnalytics::RecordColumn object:

  $result = $service_obj->Method(...);
  $result->Att1->Mapping

=head1 DESCRIPTION

Describes the mapping of each data element in the streaming source to
the corresponding column in the in-application stream.

Also used to describe the format of the reference data source.

=head1 ATTRIBUTES


=head2 Mapping => Str

  Reference to the data element in the streaming input of the reference
data source.


=head2 B<REQUIRED> Name => Str

  Name of the column created in the in-application input stream or
reference table.


=head2 B<REQUIRED> SqlType => Str

  Type of column created in the in-application input stream or reference
table.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KinesisAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

