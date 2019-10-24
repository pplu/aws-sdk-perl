package Paws::EC2::SpotFleetRequestConfig;
  use Moo;  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw/EC2_SpotFleetRequestConfigData/;
  has ActivityStatus => (is => 'ro', isa => Str);
  has CreateTime => (is => 'ro', isa => Str);
  has SpotFleetRequestConfig => (is => 'ro', isa => EC2_SpotFleetRequestConfigData);
  has SpotFleetRequestId => (is => 'ro', isa => Str);
  has SpotFleetRequestState => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SpotFleetRequestState' => {
                                            'type' => 'Str'
                                          },
               'CreateTime' => {
                                 'type' => 'Str'
                               },
               'ActivityStatus' => {
                                     'type' => 'Str'
                                   },
               'SpotFleetRequestId' => {
                                         'type' => 'Str'
                                       },
               'SpotFleetRequestConfig' => {
                                             'class' => 'Paws::EC2::SpotFleetRequestConfigData',
                                             'type' => 'EC2_SpotFleetRequestConfigData'
                                           }
             },
  'NameInRequest' => {
                       'SpotFleetRequestState' => 'spotFleetRequestState',
                       'CreateTime' => 'createTime',
                       'ActivityStatus' => 'activityStatus',
                       'SpotFleetRequestId' => 'spotFleetRequestId',
                       'SpotFleetRequestConfig' => 'spotFleetRequestConfig'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::SpotFleetRequestConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::SpotFleetRequestConfig object:

  $service_obj->Method(Att1 => { ActivityStatus => $value, ..., SpotFleetRequestState => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::SpotFleetRequestConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->ActivityStatus

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 ActivityStatus => Str

  The progress of the Spot Fleet request. If there is an error, the
status is C<error>. After all requests are placed, the status is
C<pending_fulfillment>. If the size of the fleet is equal to or greater
than its target capacity, the status is C<fulfilled>. If the size of
the fleet is decreased, the status is C<pending_termination> while Spot
Instances are terminating.


=head2 CreateTime => Str

  The creation date and time of the request.


=head2 SpotFleetRequestConfig => EC2_SpotFleetRequestConfigData

  The configuration of the Spot Fleet request.


=head2 SpotFleetRequestId => Str

  The ID of the Spot Fleet request.


=head2 SpotFleetRequestState => Str

  The state of the Spot Fleet request.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
