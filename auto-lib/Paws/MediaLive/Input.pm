package Paws::MediaLive::Input;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', request_name => 'arn', traits => ['NameInRequest']);
  has AttachedChannels => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'attachedChannels', traits => ['NameInRequest']);
  has Destinations => (is => 'ro', isa => 'ArrayRef[Paws::MediaLive::InputDestination]', request_name => 'destinations', traits => ['NameInRequest']);
  has Id => (is => 'ro', isa => 'Str', request_name => 'id', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has SecurityGroups => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'securityGroups', traits => ['NameInRequest']);
  has Sources => (is => 'ro', isa => 'ArrayRef[Paws::MediaLive::InputSource]', request_name => 'sources', traits => ['NameInRequest']);
  has State => (is => 'ro', isa => 'Str', request_name => 'state', traits => ['NameInRequest']);
  has Type => (is => 'ro', isa => 'Str', request_name => 'type', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::Input

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::Input object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::Input object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Placeholder documentation for Input

=head1 ATTRIBUTES


=head2 Arn => Str

  Unique ARN of input (generated, immutable)


=head2 AttachedChannels => ArrayRef[Str|Undef]

  List of channel IDs that that input is attached to (currently an input
can only be attached to one channel)


=head2 Destinations => ArrayRef[L<Paws::MediaLive::InputDestination>]

  List of destinations of input (PULL-type)


=head2 Id => Str

  generated ID of input (unique for user account, immutable)


=head2 Name => Str

  user-assigned name (mutable)


=head2 SecurityGroups => ArrayRef[Str|Undef]

  List of IDs for all the security groups attached to the input.


=head2 Sources => ArrayRef[L<Paws::MediaLive::InputSource>]

  List of sources of input (PULL-type)


=head2 State => Str

  


=head2 Type => Str

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

