package Paws::MediaLive::CreateInput;
  use Moose;
  has Destinations => (is => 'ro', isa => 'ArrayRef[Paws::MediaLive::InputDestinationRequest]', request_name => 'destinations', traits => ['NameInRequest']);
  has InputSecurityGroups => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'inputSecurityGroups', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has RequestId => (is => 'ro', isa => 'Str', request_name => 'requestId', traits => ['NameInRequest']);
  has Sources => (is => 'ro', isa => 'ArrayRef[Paws::MediaLive::InputSourceRequest]', request_name => 'sources', traits => ['NameInRequest']);
  has Type => (is => 'ro', isa => 'Str', request_name => 'type', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::CreateInput

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::CreateInput object:

  $service_obj->Method(Att1 => { Destinations => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::CreateInput object:

  $result = $service_obj->Method(...);
  $result->Att1->Destinations

=head1 DESCRIPTION

Placeholder documentation for CreateInput

=head1 ATTRIBUTES


=head2 Destinations => ArrayRef[L<Paws::MediaLive::InputDestinationRequest>]

  settings required for PUSH-type inputs; one per redundancy group. Only
one of sources and destinations can be specified. Note: there are
currently no settings required for PUSH-type inputs


=head2 InputSecurityGroups => ArrayRef[Str|Undef]

  A list of security groups referenced by IDs to attach to the input.


=head2 Name => Str

  Name of the input.


=head2 RequestId => Str

  Unique identifier of the request to ensure the request is handled
exactly once in case of retries


=head2 Sources => ArrayRef[L<Paws::MediaLive::InputSourceRequest>]

  settings required for PULL-type inputs; one per redundancy group Only
one of sources and destinations can be specified


=head2 Type => Str

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

