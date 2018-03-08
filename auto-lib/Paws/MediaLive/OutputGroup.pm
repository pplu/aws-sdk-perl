package Paws::MediaLive::OutputGroup;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has OutputGroupSettings => (is => 'ro', isa => 'Paws::MediaLive::OutputGroupSettings', request_name => 'outputGroupSettings', traits => ['NameInRequest'], required => 1);
  has Outputs => (is => 'ro', isa => 'ArrayRef[Paws::MediaLive::Output]', request_name => 'outputs', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::OutputGroup

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::OutputGroup object:

  $service_obj->Method(Att1 => { Name => $value, ..., Outputs => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::OutputGroup object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

Output groups for this Live Event. Output groups contain information
about where streams should be distributed.

=head1 ATTRIBUTES


=head2 Name => Str

  Custom output group name optionally defined by the user. Only letters,
numbers, and the underscore character allowed; only 32 characters
allowed.


=head2 B<REQUIRED> OutputGroupSettings => L<Paws::MediaLive::OutputGroupSettings>

  Settings associated with the output group.


=head2 B<REQUIRED> Outputs => ArrayRef[L<Paws::MediaLive::Output>]

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

