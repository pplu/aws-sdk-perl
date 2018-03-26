package Paws::MediaLive::UpdateInput;
  use Moose;
  has Destinations => (is => 'ro', isa => 'ArrayRef[Paws::MediaLive::InputDestinationRequest]', request_name => 'destinations', traits => ['NameInRequest']);
  has InputSecurityGroups => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'inputSecurityGroups', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has Sources => (is => 'ro', isa => 'ArrayRef[Paws::MediaLive::InputSourceRequest]', request_name => 'sources', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::UpdateInput

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::UpdateInput object:

  $service_obj->Method(Att1 => { Destinations => $value, ..., Sources => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::UpdateInput object:

  $result = $service_obj->Method(...);
  $result->Att1->Destinations

=head1 DESCRIPTION

Placeholder documentation for UpdateInput

=head1 ATTRIBUTES


=head2 Destinations => ArrayRef[L<Paws::MediaLive::InputDestinationRequest>]

  Destination settings for PUSH type inputs.


=head2 InputSecurityGroups => ArrayRef[Str|Undef]

  A list of security groups referenced by IDs to attach to the input.


=head2 Name => Str

  Name of the input.


=head2 Sources => ArrayRef[L<Paws::MediaLive::InputSourceRequest>]

  The source URLs for a PULL-type input. Every PULL type input needs
exactly two source URLs for redundancy. Only specify sources for PULL
type Inputs. Leave Destinations empty.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

