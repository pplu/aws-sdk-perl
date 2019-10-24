# Generated from default/object.tt
package Paws::Config::ConfigExportDeliveryInfo;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Config::Types qw//;
  has LastAttemptTime => (is => 'ro', isa => Str);
  has LastErrorCode => (is => 'ro', isa => Str);
  has LastErrorMessage => (is => 'ro', isa => Str);
  has LastStatus => (is => 'ro', isa => Str);
  has LastSuccessfulTime => (is => 'ro', isa => Str);
  has NextDeliveryTime => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'LastErrorCode' => {
                                    'type' => 'Str'
                                  },
               'LastAttemptTime' => {
                                      'type' => 'Str'
                                    },
               'LastStatus' => {
                                 'type' => 'Str'
                               },
               'LastErrorMessage' => {
                                       'type' => 'Str'
                                     },
               'NextDeliveryTime' => {
                                       'type' => 'Str'
                                     },
               'LastSuccessfulTime' => {
                                         'type' => 'Str'
                                       }
             },
  'NameInRequest' => {
                       'LastErrorCode' => 'lastErrorCode',
                       'LastAttemptTime' => 'lastAttemptTime',
                       'LastStatus' => 'lastStatus',
                       'LastErrorMessage' => 'lastErrorMessage',
                       'NextDeliveryTime' => 'nextDeliveryTime',
                       'LastSuccessfulTime' => 'lastSuccessfulTime'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::ConfigExportDeliveryInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Config::ConfigExportDeliveryInfo object:

  $service_obj->Method(Att1 => { LastAttemptTime => $value, ..., NextDeliveryTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Config::ConfigExportDeliveryInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->LastAttemptTime

=head1 DESCRIPTION

Provides status of the delivery of the snapshot or the configuration
history to the specified Amazon S3 bucket. Also provides the status of
notifications about the Amazon S3 delivery to the specified Amazon SNS
topic.

=head1 ATTRIBUTES


=head2 LastAttemptTime => Str

  The time of the last attempted delivery.


=head2 LastErrorCode => Str

  The error code from the last attempted delivery.


=head2 LastErrorMessage => Str

  The error message from the last attempted delivery.


=head2 LastStatus => Str

  Status of the last attempted delivery.


=head2 LastSuccessfulTime => Str

  The time of the last successful delivery.


=head2 NextDeliveryTime => Str

  The time that the next delivery occurs.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

