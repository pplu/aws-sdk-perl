# Generated from default/object.tt
package Paws::IoTEvents::InputConfiguration;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoTEvents::Types qw//;
  has CreationTime => (is => 'ro', isa => Str, required => 1);
  has InputArn => (is => 'ro', isa => Str, required => 1);
  has InputDescription => (is => 'ro', isa => Str);
  has InputName => (is => 'ro', isa => Str, required => 1);
  has LastUpdateTime => (is => 'ro', isa => Str, required => 1);
  has Status => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'InputDescription' => 'inputDescription',
                       'Status' => 'status',
                       'InputArn' => 'inputArn',
                       'CreationTime' => 'creationTime',
                       'LastUpdateTime' => 'lastUpdateTime',
                       'InputName' => 'inputName'
                     },
  'IsRequired' => {
                    'InputName' => 1,
                    'CreationTime' => 1,
                    'LastUpdateTime' => 1,
                    'InputArn' => 1,
                    'Status' => 1
                  },
  'types' => {
               'InputDescription' => {
                                       'type' => 'Str'
                                     },
               'Status' => {
                             'type' => 'Str'
                           },
               'InputArn' => {
                               'type' => 'Str'
                             },
               'CreationTime' => {
                                   'type' => 'Str'
                                 },
               'LastUpdateTime' => {
                                     'type' => 'Str'
                                   },
               'InputName' => {
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

Paws::IoTEvents::InputConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTEvents::InputConfiguration object:

  $service_obj->Method(Att1 => { CreationTime => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTEvents::InputConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationTime

=head1 DESCRIPTION

Information about the configuration of an input.

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreationTime => Str

  The time the input was created.


=head2 B<REQUIRED> InputArn => Str

  The ARN of the input.


=head2 InputDescription => Str

  A brief description of the input.


=head2 B<REQUIRED> InputName => Str

  The name of the input.


=head2 B<REQUIRED> LastUpdateTime => Str

  The last time the input was updated.


=head2 B<REQUIRED> Status => Str

  The status of the input.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

