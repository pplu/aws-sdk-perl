package Paws::MediaLive::InputSecurityGroupWhitelistRequest;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::MediaLive::Tags', request_name => 'tags', traits => ['NameInRequest']);
  has WhitelistRules => (is => 'ro', isa => 'ArrayRef[Paws::MediaLive::InputWhitelistRuleCidr]', request_name => 'whitelistRules', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::InputSecurityGroupWhitelistRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::InputSecurityGroupWhitelistRequest object:

  $service_obj->Method(Att1 => { Tags => $value, ..., WhitelistRules => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::InputSecurityGroupWhitelistRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->Tags

=head1 DESCRIPTION

Request of IPv4 CIDR addresses to whitelist in a security group.

=head1 ATTRIBUTES


=head2 Tags => L<Paws::MediaLive::Tags>

  A collection of key-value pairs.


=head2 WhitelistRules => ArrayRef[L<Paws::MediaLive::InputWhitelistRuleCidr>]

  List of IPv4 CIDR addresses to whitelist



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

