# Generated from default/object.tt
package Paws::Kinesis::SubscribeToShardEvent;
  use Moo;
  use Types::Standard qw/Str Int ArrayRef/;
  use Paws::Kinesis::Types qw/Kinesis_Record/;
  has ContinuationSequenceNumber => (is => 'ro', isa => Str, required => 1);
  has MillisBehindLatest => (is => 'ro', isa => Int, required => 1);
  has Records => (is => 'ro', isa => ArrayRef[Kinesis_Record], required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'MillisBehindLatest' => {
                                         'type' => 'Int'
                                       },
               'Records' => {
                              'class' => 'Paws::Kinesis::Record',
                              'type' => 'ArrayRef[Kinesis_Record]'
                            },
               'ContinuationSequenceNumber' => {
                                                 'type' => 'Str'
                                               }
             },
  'IsRequired' => {
                    'MillisBehindLatest' => 1,
                    'Records' => 1,
                    'ContinuationSequenceNumber' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Kinesis::SubscribeToShardEvent

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Kinesis::SubscribeToShardEvent object:

  $service_obj->Method(Att1 => { ContinuationSequenceNumber => $value, ..., Records => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Kinesis::SubscribeToShardEvent object:

  $result = $service_obj->Method(...);
  $result->Att1->ContinuationSequenceNumber

=head1 DESCRIPTION

After you call SubscribeToShard, Kinesis Data Streams sends events of
this type to your consumer.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ContinuationSequenceNumber => Str

  Use this as C<StartingSequenceNumber> in the next call to
SubscribeToShard.


=head2 B<REQUIRED> MillisBehindLatest => Int

  The number of milliseconds the read records are from the tip of the
stream, indicating how far behind current time the consumer is. A value
of zero indicates that record processing is caught up, and there are no
new records to process at this moment.


=head2 B<REQUIRED> Records => ArrayRef[Kinesis_Record]

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Kinesis>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

