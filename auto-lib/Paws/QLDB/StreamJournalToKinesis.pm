
package Paws::QLDB::StreamJournalToKinesis;
  use Moose;
  has ExclusiveEndTime => (is => 'ro', isa => 'Str');
  has InclusiveStartTime => (is => 'ro', isa => 'Str', required => 1);
  has KinesisConfiguration => (is => 'ro', isa => 'Paws::QLDB::KinesisConfiguration', required => 1);
  has LedgerName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', required => 1);
  has StreamName => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::QLDB::Tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StreamJournalToKinesis');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/ledgers/{name}/journal-kinesis-streams');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::QLDB::StreamJournalToKinesisResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QLDB::StreamJournalToKinesis - Arguments for method StreamJournalToKinesis on L<Paws::QLDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StreamJournalToKinesis on the
L<Amazon QLDB|Paws::QLDB> service. Use the attributes of this class
as arguments to method StreamJournalToKinesis.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StreamJournalToKinesis.

=head1 SYNOPSIS

    my $qldb = Paws->service('QLDB');
    my $StreamJournalToKinesisResponse = $qldb->StreamJournalToKinesis(
      InclusiveStartTime   => '1970-01-01T01:00:00',
      KinesisConfiguration => {
        StreamArn          => 'MyArn',    # min: 20, max: 1600
        AggregationEnabled => 1,          # OPTIONAL
      },
      LedgerName       => 'MyLedgerName',
      RoleArn          => 'MyArn',
      StreamName       => 'MyStreamName',
      ExclusiveEndTime => '1970-01-01T01:00:00',    # OPTIONAL
      Tags             => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $StreamId = $StreamJournalToKinesisResponse->StreamId;

    # Returns a L<Paws::QLDB::StreamJournalToKinesisResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/qldb/StreamJournalToKinesis>

=head1 ATTRIBUTES


=head2 ExclusiveEndTime => Str

The exclusive date and time that specifies when the stream ends. If you
don't define this parameter, the stream runs indefinitely until you
cancel it.

The C<ExclusiveEndTime> must be in C<ISO 8601> date and time format and
in Universal Coordinated Time (UTC). For example:
C<2019-06-13T21:36:34Z>.



=head2 B<REQUIRED> InclusiveStartTime => Str

The inclusive start date and time from which to start streaming journal
data. This parameter must be in C<ISO 8601> date and time format and in
Universal Coordinated Time (UTC). For example: C<2019-06-13T21:36:34Z>.

The C<InclusiveStartTime> cannot be in the future and must be before
C<ExclusiveEndTime>.

If you provide an C<InclusiveStartTime> that is before the ledger's
C<CreationDateTime>, QLDB effectively defaults it to the ledger's
C<CreationDateTime>.



=head2 B<REQUIRED> KinesisConfiguration => L<Paws::QLDB::KinesisConfiguration>

The configuration settings of the Kinesis Data Streams destination for
your stream request.



=head2 B<REQUIRED> LedgerName => Str

The name of the ledger.



=head2 B<REQUIRED> RoleArn => Str

The Amazon Resource Name (ARN) of the IAM role that grants QLDB
permissions for a journal stream to write data records to a Kinesis
Data Streams resource.



=head2 B<REQUIRED> StreamName => Str

The name that you want to assign to the QLDB journal stream.
User-defined names can help identify and indicate the purpose of a
stream.

Your stream name must be unique among other I<active> streams for a
given ledger. Stream names have the same naming constraints as ledger
names, as defined in Quotas in Amazon QLDB
(https://docs.aws.amazon.com/qldb/latest/developerguide/limits.html#limits.naming)
in the I<Amazon QLDB Developer Guide>.



=head2 Tags => L<Paws::QLDB::Tags>

The key-value pairs to add as tags to the stream that you want to
create. Tag keys are case sensitive. Tag values are case sensitive and
can be null.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StreamJournalToKinesis in L<Paws::QLDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

