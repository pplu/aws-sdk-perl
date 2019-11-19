# Generated from default/object.tt
package Paws::Pinpoint::SMSChannelRequest;
  use Moo;
  use Types::Standard qw/Bool Str/;
  use Paws::Pinpoint::Types qw//;
  has Enabled => (is => 'ro', isa => Bool);
  has SenderId => (is => 'ro', isa => Str);
  has ShortCode => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Enabled' => {
                              'type' => 'Bool'
                            },
               'ShortCode' => {
                                'type' => 'Str'
                              },
               'SenderId' => {
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

Paws::Pinpoint::SMSChannelRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::SMSChannelRequest object:

  $service_obj->Method(Att1 => { Enabled => $value, ..., ShortCode => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::SMSChannelRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->Enabled

=head1 DESCRIPTION

Specifies the status and settings of the SMS channel for an
application.

=head1 ATTRIBUTES


=head2 Enabled => Bool

  Specifies whether to enable the SMS channel for the application.


=head2 SenderId => Str

  The identity that you want to display on recipients' devices when they
receive messages from the SMS channel.


=head2 ShortCode => Str

  The registered short code that you want to use when you send messages
through the SMS channel.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

