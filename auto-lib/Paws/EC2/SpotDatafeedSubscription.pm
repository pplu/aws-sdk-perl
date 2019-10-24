package Paws::EC2::SpotDatafeedSubscription;
  use Moo;  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw/EC2_SpotInstanceStateFault/;
  has Bucket => (is => 'ro', isa => Str);
  has Fault => (is => 'ro', isa => EC2_SpotInstanceStateFault);
  has OwnerId => (is => 'ro', isa => Str);
  has Prefix => (is => 'ro', isa => Str);
  has State => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Prefix' => {
                             'type' => 'Str'
                           },
               'Bucket' => {
                             'type' => 'Str'
                           },
               'State' => {
                            'type' => 'Str'
                          },
               'OwnerId' => {
                              'type' => 'Str'
                            },
               'Fault' => {
                            'class' => 'Paws::EC2::SpotInstanceStateFault',
                            'type' => 'EC2_SpotInstanceStateFault'
                          }
             },
  'NameInRequest' => {
                       'Prefix' => 'prefix',
                       'Bucket' => 'bucket',
                       'State' => 'state',
                       'OwnerId' => 'ownerId',
                       'Fault' => 'fault'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::SpotDatafeedSubscription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::SpotDatafeedSubscription object:

  $service_obj->Method(Att1 => { Bucket => $value, ..., State => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::SpotDatafeedSubscription object:

  $result = $service_obj->Method(...);
  $result->Att1->Bucket

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Bucket => Str

  The Amazon S3 bucket where the Spot Instance data feed is located.


=head2 Fault => EC2_SpotInstanceStateFault

  The fault codes for the Spot Instance request, if any.


=head2 OwnerId => Str

  The AWS account ID of the account.


=head2 Prefix => Str

  The prefix that is prepended to data feed files.


=head2 State => Str

  The state of the Spot Instance data feed subscription.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
