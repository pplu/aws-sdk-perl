# Generated from default/object.tt
package Paws::KinesisAnalytics::ApplicationUpdate;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::KinesisAnalytics::Types qw/KinesisAnalytics_CloudWatchLoggingOptionUpdate KinesisAnalytics_OutputUpdate KinesisAnalytics_ReferenceDataSourceUpdate KinesisAnalytics_InputUpdate/;
  has ApplicationCodeUpdate => (is => 'ro', isa => Str);
  has CloudWatchLoggingOptionUpdates => (is => 'ro', isa => ArrayRef[KinesisAnalytics_CloudWatchLoggingOptionUpdate]);
  has InputUpdates => (is => 'ro', isa => ArrayRef[KinesisAnalytics_InputUpdate]);
  has OutputUpdates => (is => 'ro', isa => ArrayRef[KinesisAnalytics_OutputUpdate]);
  has ReferenceDataSourceUpdates => (is => 'ro', isa => ArrayRef[KinesisAnalytics_ReferenceDataSourceUpdate]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'OutputUpdates' => {
                                    'class' => 'Paws::KinesisAnalytics::OutputUpdate',
                                    'type' => 'ArrayRef[KinesisAnalytics_OutputUpdate]'
                                  },
               'CloudWatchLoggingOptionUpdates' => {
                                                     'class' => 'Paws::KinesisAnalytics::CloudWatchLoggingOptionUpdate',
                                                     'type' => 'ArrayRef[KinesisAnalytics_CloudWatchLoggingOptionUpdate]'
                                                   },
               'ReferenceDataSourceUpdates' => {
                                                 'class' => 'Paws::KinesisAnalytics::ReferenceDataSourceUpdate',
                                                 'type' => 'ArrayRef[KinesisAnalytics_ReferenceDataSourceUpdate]'
                                               },
               'InputUpdates' => {
                                   'class' => 'Paws::KinesisAnalytics::InputUpdate',
                                   'type' => 'ArrayRef[KinesisAnalytics_InputUpdate]'
                                 },
               'ApplicationCodeUpdate' => {
                                            'type' => 'Str'
                                          }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalytics::ApplicationUpdate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::KinesisAnalytics::ApplicationUpdate object:

  $service_obj->Method(Att1 => { ApplicationCodeUpdate => $value, ..., ReferenceDataSourceUpdates => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::KinesisAnalytics::ApplicationUpdate object:

  $result = $service_obj->Method(...);
  $result->Att1->ApplicationCodeUpdate

=head1 DESCRIPTION

Describes updates to apply to an existing Amazon Kinesis Analytics
application.

=head1 ATTRIBUTES


=head2 ApplicationCodeUpdate => Str

  Describes application code updates.


=head2 CloudWatchLoggingOptionUpdates => ArrayRef[KinesisAnalytics_CloudWatchLoggingOptionUpdate]

  Describes application CloudWatch logging option updates.


=head2 InputUpdates => ArrayRef[KinesisAnalytics_InputUpdate]

  Describes application input configuration updates.


=head2 OutputUpdates => ArrayRef[KinesisAnalytics_OutputUpdate]

  Describes application output configuration updates.


=head2 ReferenceDataSourceUpdates => ArrayRef[KinesisAnalytics_ReferenceDataSourceUpdate]

  Describes application reference data source updates.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KinesisAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

