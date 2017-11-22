package Paws::Organizations::EnabledServicePrincipal;
  use Moose;
  has DateEnabled => (is => 'ro', isa => 'Str');
  has ServicePrincipal => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Organizations::EnabledServicePrincipal

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Organizations::EnabledServicePrincipal object:

  $service_obj->Method(Att1 => { DateEnabled => $value, ..., ServicePrincipal => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Organizations::EnabledServicePrincipal object:

  $result = $service_obj->Method(...);
  $result->Att1->DateEnabled

=head1 DESCRIPTION

A structure that contains details of a service principal that is
enabled to integrate with AWS Organizations.

=head1 ATTRIBUTES


=head2 DateEnabled => Str

  The date that the service principal was enabled for integration with
AWS Organizations.


=head2 ServicePrincipal => Str

  The name of the service principal. This is typically in the form of a
URL, such as: C< I<servicename>.amazonaws.com>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Organizations>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

