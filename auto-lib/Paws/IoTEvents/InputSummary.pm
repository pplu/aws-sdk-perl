# Generated from default/object.tt
package Paws::IoTEvents::InputSummary;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoTEvents::Types qw//;
  has CreationTime => (is => 'ro', isa => Str);
  has InputArn => (is => 'ro', isa => Str);
  has InputDescription => (is => 'ro', isa => Str);
  has InputName => (is => 'ro', isa => Str);
  has LastUpdateTime => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Status' => {
                             'type' => 'Str'
                           },
               'InputDescription' => {
                                       'type' => 'Str'
                                     },
               'InputName' => {
                                'type' => 'Str'
                              },
               'LastUpdateTime' => {
                                     'type' => 'Str'
                                   },
               'CreationTime' => {
                                   'type' => 'Str'
                                 },
               'InputArn' => {
                               'type' => 'Str'
                             }
             },
  'NameInRequest' => {
                       'Status' => 'status',
                       'InputDescription' => 'inputDescription',
                       'InputName' => 'inputName',
                       'CreationTime' => 'creationTime',
                       'LastUpdateTime' => 'lastUpdateTime',
                       'InputArn' => 'inputArn'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTEvents::InputSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTEvents::InputSummary object:

  $service_obj->Method(Att1 => { CreationTime => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTEvents::InputSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationTime

=head1 DESCRIPTION

Information about the input.

=head1 ATTRIBUTES


=head2 CreationTime => Str

  The time the input was created.


=head2 InputArn => Str

  The ARN of the input.


=head2 InputDescription => Str

  A brief description of the input.


=head2 InputName => Str

  The name of the input.


=head2 LastUpdateTime => Str

  The last time the input was updated.


=head2 Status => Str

  The status of the input.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

