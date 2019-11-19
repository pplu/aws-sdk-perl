# Generated from default/object.tt
package Paws::MediaLive::ChannelConfigurationValidationError;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::MediaLive::Types qw/MediaLive_ValidationError/;
  has Message => (is => 'ro', isa => Str);
  has ValidationErrors => (is => 'ro', isa => ArrayRef[MediaLive_ValidationError]);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Message' => 'message',
                       'ValidationErrors' => 'validationErrors'
                     },
  'types' => {
               'ValidationErrors' => {
                                       'type' => 'ArrayRef[MediaLive_ValidationError]',
                                       'class' => 'Paws::MediaLive::ValidationError'
                                     },
               'Message' => {
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

Paws::MediaLive::ChannelConfigurationValidationError

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::ChannelConfigurationValidationError object:

  $service_obj->Method(Att1 => { Message => $value, ..., ValidationErrors => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::ChannelConfigurationValidationError object:

  $result = $service_obj->Method(...);
  $result->Att1->Message

=head1 DESCRIPTION

Placeholder documentation for ChannelConfigurationValidationError

=head1 ATTRIBUTES


=head2 Message => Str

  


=head2 ValidationErrors => ArrayRef[MediaLive_ValidationError]

  A collection of validation error responses.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

