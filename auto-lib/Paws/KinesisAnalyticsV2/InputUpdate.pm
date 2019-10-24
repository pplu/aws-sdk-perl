# Generated from default/object.tt
package Paws::KinesisAnalyticsV2::InputUpdate;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::KinesisAnalyticsV2::Types qw/KinesisAnalyticsV2_InputSchemaUpdate KinesisAnalyticsV2_KinesisStreamsInputUpdate KinesisAnalyticsV2_InputParallelismUpdate KinesisAnalyticsV2_InputProcessingConfigurationUpdate KinesisAnalyticsV2_KinesisFirehoseInputUpdate/;
  has InputId => (is => 'ro', isa => Str, required => 1);
  has InputParallelismUpdate => (is => 'ro', isa => KinesisAnalyticsV2_InputParallelismUpdate);
  has InputProcessingConfigurationUpdate => (is => 'ro', isa => KinesisAnalyticsV2_InputProcessingConfigurationUpdate);
  has InputSchemaUpdate => (is => 'ro', isa => KinesisAnalyticsV2_InputSchemaUpdate);
  has KinesisFirehoseInputUpdate => (is => 'ro', isa => KinesisAnalyticsV2_KinesisFirehoseInputUpdate);
  has KinesisStreamsInputUpdate => (is => 'ro', isa => KinesisAnalyticsV2_KinesisStreamsInputUpdate);
  has NamePrefixUpdate => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NamePrefixUpdate' => {
                                       'type' => 'Str'
                                     },
               'KinesisFirehoseInputUpdate' => {
                                                 'class' => 'Paws::KinesisAnalyticsV2::KinesisFirehoseInputUpdate',
                                                 'type' => 'KinesisAnalyticsV2_KinesisFirehoseInputUpdate'
                                               },
               'KinesisStreamsInputUpdate' => {
                                                'class' => 'Paws::KinesisAnalyticsV2::KinesisStreamsInputUpdate',
                                                'type' => 'KinesisAnalyticsV2_KinesisStreamsInputUpdate'
                                              },
               'InputSchemaUpdate' => {
                                        'class' => 'Paws::KinesisAnalyticsV2::InputSchemaUpdate',
                                        'type' => 'KinesisAnalyticsV2_InputSchemaUpdate'
                                      },
               'InputProcessingConfigurationUpdate' => {
                                                         'class' => 'Paws::KinesisAnalyticsV2::InputProcessingConfigurationUpdate',
                                                         'type' => 'KinesisAnalyticsV2_InputProcessingConfigurationUpdate'
                                                       },
               'InputParallelismUpdate' => {
                                             'class' => 'Paws::KinesisAnalyticsV2::InputParallelismUpdate',
                                             'type' => 'KinesisAnalyticsV2_InputParallelismUpdate'
                                           },
               'InputId' => {
                              'type' => 'Str'
                            }
             },
  'IsRequired' => {
                    'InputId' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalyticsV2::InputUpdate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::KinesisAnalyticsV2::InputUpdate object:

  $service_obj->Method(Att1 => { InputId => $value, ..., NamePrefixUpdate => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::KinesisAnalyticsV2::InputUpdate object:

  $result = $service_obj->Method(...);
  $result->Att1->InputId

=head1 DESCRIPTION

For an SQL-based Amazon Kinesis Data Analytics application, describes
updates to a specific input configuration (identified by the C<InputId>
of an application).

=head1 ATTRIBUTES


=head2 B<REQUIRED> InputId => Str

  The input ID of the application input to be updated.


=head2 InputParallelismUpdate => KinesisAnalyticsV2_InputParallelismUpdate

  Describes the parallelism updates (the number of in-application streams
Kinesis Data Analytics creates for the specific streaming source).


=head2 InputProcessingConfigurationUpdate => KinesisAnalyticsV2_InputProcessingConfigurationUpdate

  Describes updates to an InputProcessingConfiguration.


=head2 InputSchemaUpdate => KinesisAnalyticsV2_InputSchemaUpdate

  Describes the data format on the streaming source, and how record
elements on the streaming source map to columns of the in-application
stream that is created.


=head2 KinesisFirehoseInputUpdate => KinesisAnalyticsV2_KinesisFirehoseInputUpdate

  If a Kinesis Data Firehose delivery stream is the streaming source to
be updated, provides an updated stream ARN.


=head2 KinesisStreamsInputUpdate => KinesisAnalyticsV2_KinesisStreamsInputUpdate

  If a Kinesis data stream is the streaming source to be updated,
provides an updated stream Amazon Resource Name (ARN).


=head2 NamePrefixUpdate => Str

  The name prefix for in-application streams that Kinesis Data Analytics
creates for the specific streaming source.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KinesisAnalyticsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

