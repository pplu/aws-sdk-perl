# Generated from default/object.tt
package Paws::IoTAnalytics::Dataset;
  use Moo;
  use Types::Standard qw/ArrayRef Str/;
  use Paws::IoTAnalytics::Types qw/IoTAnalytics_DatasetTrigger IoTAnalytics_VersioningConfiguration IoTAnalytics_DatasetContentDeliveryRule IoTAnalytics_RetentionPeriod IoTAnalytics_DatasetAction/;
  has Actions => (is => 'ro', isa => ArrayRef[IoTAnalytics_DatasetAction]);
  has Arn => (is => 'ro', isa => Str);
  has ContentDeliveryRules => (is => 'ro', isa => ArrayRef[IoTAnalytics_DatasetContentDeliveryRule]);
  has CreationTime => (is => 'ro', isa => Str);
  has LastUpdateTime => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str);
  has RetentionPeriod => (is => 'ro', isa => IoTAnalytics_RetentionPeriod);
  has Status => (is => 'ro', isa => Str);
  has Triggers => (is => 'ro', isa => ArrayRef[IoTAnalytics_DatasetTrigger]);
  has VersioningConfiguration => (is => 'ro', isa => IoTAnalytics_VersioningConfiguration);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'CreationTime' => {
                                   'type' => 'Str'
                                 },
               'Triggers' => {
                               'class' => 'Paws::IoTAnalytics::DatasetTrigger',
                               'type' => 'ArrayRef[IoTAnalytics_DatasetTrigger]'
                             },
               'Status' => {
                             'type' => 'Str'
                           },
               'RetentionPeriod' => {
                                      'class' => 'Paws::IoTAnalytics::RetentionPeriod',
                                      'type' => 'IoTAnalytics_RetentionPeriod'
                                    },
               'LastUpdateTime' => {
                                     'type' => 'Str'
                                   },
               'Actions' => {
                              'class' => 'Paws::IoTAnalytics::DatasetAction',
                              'type' => 'ArrayRef[IoTAnalytics_DatasetAction]'
                            },
               'Arn' => {
                          'type' => 'Str'
                        },
               'VersioningConfiguration' => {
                                              'class' => 'Paws::IoTAnalytics::VersioningConfiguration',
                                              'type' => 'IoTAnalytics_VersioningConfiguration'
                                            },
               'ContentDeliveryRules' => {
                                           'class' => 'Paws::IoTAnalytics::DatasetContentDeliveryRule',
                                           'type' => 'ArrayRef[IoTAnalytics_DatasetContentDeliveryRule]'
                                         },
               'Name' => {
                           'type' => 'Str'
                         }
             },
  'NameInRequest' => {
                       'CreationTime' => 'creationTime',
                       'Triggers' => 'triggers',
                       'Status' => 'status',
                       'RetentionPeriod' => 'retentionPeriod',
                       'LastUpdateTime' => 'lastUpdateTime',
                       'Actions' => 'actions',
                       'Arn' => 'arn',
                       'VersioningConfiguration' => 'versioningConfiguration',
                       'ContentDeliveryRules' => 'contentDeliveryRules',
                       'Name' => 'name'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTAnalytics::Dataset

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTAnalytics::Dataset object:

  $service_obj->Method(Att1 => { Actions => $value, ..., VersioningConfiguration => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTAnalytics::Dataset object:

  $result = $service_obj->Method(...);
  $result->Att1->Actions

=head1 DESCRIPTION

Information about a data set.

=head1 ATTRIBUTES


=head2 Actions => ArrayRef[IoTAnalytics_DatasetAction]

  The "DatasetAction" objects that automatically create the data set
contents.


=head2 Arn => Str

  The ARN of the data set.


=head2 ContentDeliveryRules => ArrayRef[IoTAnalytics_DatasetContentDeliveryRule]

  When data set contents are created they are delivered to destinations
specified here.


=head2 CreationTime => Str

  When the data set was created.


=head2 LastUpdateTime => Str

  The last time the data set was updated.


=head2 Name => Str

  The name of the data set.


=head2 RetentionPeriod => IoTAnalytics_RetentionPeriod

  [Optional] How long, in days, message data is kept for the data set.


=head2 Status => Str

  The status of the data set.


=head2 Triggers => ArrayRef[IoTAnalytics_DatasetTrigger]

  The "DatasetTrigger" objects that specify when the data set is
automatically updated.


=head2 VersioningConfiguration => IoTAnalytics_VersioningConfiguration

  [Optional] How many versions of data set contents are kept. If not
specified or set to null, only the latest version plus the latest
succeeded version (if they are different) are kept for the time period
specified by the "retentionPeriod" parameter. (For more information,
see
https://docs.aws.amazon.com/iotanalytics/latest/userguide/getting-started.html#aws-iot-analytics-dataset-versions)



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

