# Generated from default/object.tt
package Paws::Config::ConfigStreamDeliveryInfo;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Config::Types qw//;
  has LastErrorCode => (is => 'ro', isa => Str);
  has LastErrorMessage => (is => 'ro', isa => Str);
  has LastStatus => (is => 'ro', isa => Str);
  has LastStatusChangeTime => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'LastStatusChangeTime' => {
                                           'type' => 'Str'
                                         },
               'LastErrorMessage' => {
                                       'type' => 'Str'
                                     },
               'LastStatus' => {
                                 'type' => 'Str'
                               },
               'LastErrorCode' => {
                                    'type' => 'Str'
                                  }
             },
  'NameInRequest' => {
                       'LastStatusChangeTime' => 'lastStatusChangeTime',
                       'LastErrorMessage' => 'lastErrorMessage',
                       'LastStatus' => 'lastStatus',
                       'LastErrorCode' => 'lastErrorCode'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::ConfigStreamDeliveryInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Config::ConfigStreamDeliveryInfo object:

  $service_obj->Method(Att1 => { LastErrorCode => $value, ..., LastStatusChangeTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Config::ConfigStreamDeliveryInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->LastErrorCode

=head1 DESCRIPTION

A list that contains the status of the delivery of the configuration
stream notification to the Amazon SNS topic.

=head1 ATTRIBUTES


=head2 LastErrorCode => Str

  The error code from the last attempted delivery.


=head2 LastErrorMessage => Str

  The error message from the last attempted delivery.


=head2 LastStatus => Str

  Status of the last attempted delivery.

B<Note> Providing an SNS topic on a DeliveryChannel
(https://docs.aws.amazon.com/config/latest/APIReference/API_DeliveryChannel.html)
for AWS Config is optional. If the SNS delivery is turned off, the last
status will be B<Not_Applicable>.


=head2 LastStatusChangeTime => Str

  The time from the last status change.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

