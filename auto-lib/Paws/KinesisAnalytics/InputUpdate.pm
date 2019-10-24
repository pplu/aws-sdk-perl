# Generated from default/object.tt
package Paws::KinesisAnalytics::InputUpdate;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::KinesisAnalytics::Types qw/KinesisAnalytics_KinesisFirehoseInputUpdate KinesisAnalytics_InputSchemaUpdate KinesisAnalytics_KinesisStreamsInputUpdate KinesisAnalytics_InputParallelismUpdate KinesisAnalytics_InputProcessingConfigurationUpdate/;
  has InputId => (is => 'ro', isa => Str, required => 1);
  has InputParallelismUpdate => (is => 'ro', isa => KinesisAnalytics_InputParallelismUpdate);
  has InputProcessingConfigurationUpdate => (is => 'ro', isa => KinesisAnalytics_InputProcessingConfigurationUpdate);
  has InputSchemaUpdate => (is => 'ro', isa => KinesisAnalytics_InputSchemaUpdate);
  has KinesisFirehoseInputUpdate => (is => 'ro', isa => KinesisAnalytics_KinesisFirehoseInputUpdate);
  has KinesisStreamsInputUpdate => (is => 'ro', isa => KinesisAnalytics_KinesisStreamsInputUpdate);
  has NamePrefixUpdate => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NamePrefixUpdate' => {
                                       'type' => 'Str'
                                     },
               'KinesisFirehoseInputUpdate' => {
                                                 'class' => 'Paws::KinesisAnalytics::KinesisFirehoseInputUpdate',
                                                 'type' => 'KinesisAnalytics_KinesisFirehoseInputUpdate'
                                               },
               'KinesisStreamsInputUpdate' => {
                                                'class' => 'Paws::KinesisAnalytics::KinesisStreamsInputUpdate',
                                                'type' => 'KinesisAnalytics_KinesisStreamsInputUpdate'
                                              },
               'InputSchemaUpdate' => {
                                        'class' => 'Paws::KinesisAnalytics::InputSchemaUpdate',
                                        'type' => 'KinesisAnalytics_InputSchemaUpdate'
                                      },
               'InputProcessingConfigurationUpdate' => {
                                                         'class' => 'Paws::KinesisAnalytics::InputProcessingConfigurationUpdate',
                                                         'type' => 'KinesisAnalytics_InputProcessingConfigurationUpdate'
                                                       },
               'InputParallelismUpdate' => {
                                             'class' => 'Paws::KinesisAnalytics::InputParallelismUpdate',
                                             'type' => 'KinesisAnalytics_InputParallelismUpdate'
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

Paws::KinesisAnalytics::InputUpdate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::KinesisAnalytics::InputUpdate object:

  $service_obj->Method(Att1 => { InputId => $value, ..., NamePrefixUpdate => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::KinesisAnalytics::InputUpdate object:

  $result = $service_obj->Method(...);
  $result->Att1->InputId

=head1 DESCRIPTION

Describes updates to a specific input configuration (identified by the
C<InputId> of an application).

=head1 ATTRIBUTES


=head2 B<REQUIRED> InputId => Str

  Input ID of the application input to be updated.


=head2 InputParallelismUpdate => KinesisAnalytics_InputParallelismUpdate

  Describes the parallelism updates (the number in-application streams
Amazon Kinesis Analytics creates for the specific streaming source).


=head2 InputProcessingConfigurationUpdate => KinesisAnalytics_InputProcessingConfigurationUpdate

  Describes updates for an input processing configuration.


=head2 InputSchemaUpdate => KinesisAnalytics_InputSchemaUpdate

  Describes the data format on the streaming source, and how record
elements on the streaming source map to columns of the in-application
stream that is created.


=head2 KinesisFirehoseInputUpdate => KinesisAnalytics_KinesisFirehoseInputUpdate

  If an Amazon Kinesis Firehose delivery stream is the streaming source
to be updated, provides an updated stream ARN and IAM role ARN.


=head2 KinesisStreamsInputUpdate => KinesisAnalytics_KinesisStreamsInputUpdate

  If an Amazon Kinesis stream is the streaming source to be updated,
provides an updated stream Amazon Resource Name (ARN) and IAM role ARN.


=head2 NamePrefixUpdate => Str

  Name prefix for in-application streams that Amazon Kinesis Analytics
creates for the specific streaming source.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KinesisAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

