package Paws::MediaLive::ChannelConfigurationValidationError;
  use Moose;
  has Message => (is => 'ro', isa => 'Str', request_name => 'message', traits => ['NameInRequest']);
  has ValidationErrors => (is => 'ro', isa => 'ArrayRef[Paws::MediaLive::ValidationError]', request_name => 'validationErrors', traits => ['NameInRequest']);
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

  


=head2 ValidationErrors => ArrayRef[L<Paws::MediaLive::ValidationError>]

  A collection of validation error responses.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

